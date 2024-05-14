/*
--------------------------------------------------------------------------------

  Photon Shader by SixthSurge

  program/post/motion_blur.glsl:
  Apply motion blur

--------------------------------------------------------------------------------
*/

#include "/include/global.glsl"


//----------------------------------------------------------------------------//
#if defined vsh

out vec2 uv;

void main() {
	uv = gl_MultiTexCoord0.xy;

	gl_Position = vec4(gl_Vertex.xy * 2.0 - 1.0, 0.0, 1.0);
}

#endif
//----------------------------------------------------------------------------//



//----------------------------------------------------------------------------//
#if defined fsh

layout (location = 0) out vec3 scene_color;

// RENDERTARGETS: 0
in vec2 uv;

// Uniforms
uniform sampler2D colortex0; // Scene color
uniform sampler2D depthtex0;

uniform mat4 gbufferModelView;
uniform mat4 gbufferModelViewInverse;
uniform mat4 gbufferProjection;
uniform mat4 gbufferProjectionInverse;

uniform mat4 gbufferPreviousModelView;
uniform mat4 gbufferPreviousProjection;

uniform vec3 cameraPosition;
uniform vec3 previousCameraPosition;

uniform float frameTime;
uniform float near;
uniform float far;

uniform vec2 view_res;
uniform vec2 view_pixel_size;
uniform vec2 taa_offset;

#define TEMPORAL_REPROJECTION
#include "/include/utility/space_conversion.glsl"

#define MOTION_BLUR_SAMPLES 20
#define MAX_BLUR_RADIUS 180.0
#define HAND_DEPTH 0.9
#define VELOCITY_THRESHOLD 0.001 // 追加: ベロシティの閾値

void main() {
    ivec2 texel = ivec2(gl_FragCoord.xy);
    float depth = texelFetch(depthtex0, texel, 0).x;

    // プレイヤーの手の深度チェック
    if (depth < HAND_DEPTH) {
        scene_color = texelFetch(colortex0, texel, 0).rgb;
        return;
    }

    // モーションブラーの計算
    vec2 velocity = uv - reproject(vec3(uv, depth)).xy;
    float velocity_length = length(velocity);

    // 追加: ベロシティが閾値以下ならモーションブラーを適用しない
    if (velocity_length < VELOCITY_THRESHOLD) {
        scene_color = texelFetch(colortex0, texel, 0).rgb;
        return;
    }

    velocity = normalize(velocity) * min(velocity_length, MAX_BLUR_RADIUS / view_res.x);

    vec2 pos = uv;
    vec2 increment = (1.0 * MOTION_BLUR_INTENSITY / float(MOTION_BLUR_SAMPLES)) * velocity;

    vec3 color_sum = vec3(0.0);
    float weight_sum = 0.0;

    // モーションブラーのサンプリング
    for (uint i = 0u; i < MOTION_BLUR_SAMPLES; ++i, pos += increment) {
        ivec2 tap = ivec2(clamp(pos, vec2(0.0), vec2(1.0)) * view_res);

        vec3 color = texelFetch(colortex0, tap, 0).rgb;
        float tap_depth = texelFetch(depthtex0, tap, 0).x;

        // プレイヤーの手以外のオブジェクトにのみモーションブラーを適用
        float weight = (tap_depth >= HAND_DEPTH && abs(depth - tap_depth) < 1.0) ? 1.0 : 0.0;

        color_sum += color * weight;
        weight_sum += weight;
    }

    // 色の合計と重みの合計から最終的な色を計算
    scene_color = color_sum / max(weight_sum, 0.0001);
}

#endif
//----------------------------------------------------------------------------//

#ifndef MOTION_BLUR
	#error "This program should be disabled if Motion Blur is disabled"
#endif
