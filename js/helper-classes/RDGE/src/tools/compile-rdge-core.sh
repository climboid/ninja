java -jar ./compiler.jar --compilation_level SIMPLE_OPTIMIZATIONS --manage_closure_dependencies --js ../core/script/math/vec2.js --js ../core/script/math/vec3.js --js ../core/script/math/vec4.js --js ../core/script/math/mat4.js --js ../core/script/math/quat.js --js ../core/script/util/statTracker.js --js ../core/script/util/fpsTracker.js --js ../core/script/objectManager.js --js ../core/script/precompiled.js --js ../core/script/renderer.js --js ../core/script/renderUtils.js --js ../core/script/jshader.js --js ../core/script/jpass.js --js ../core/script/RenderProcs.js --js ../core/script/RenderInitProcs.js --js ../core/script/MeshManager.js --js ../core/script/TextureManager.js --js ../core/script/ShaderManager.js --js ../core/script/fx/blur.js --js ../core/script/fx/ssao.js --js ../core/script/ScreenQuad.js --js ../core/script/box.js --js ../core/script/camera.js --js ../core/script/shadowLight.js --js ../core/script/utilities.js --js ../core/script/input.js --js ../core/script/engine.js --js ../core/script/scenegraphNodes.js --js ../core/script/scenegraph.js --js ../core/script/lightmanager.js --js ../core/script/rendercontext.js --js ../core/script/animation.js --js ../core/script/particle.js --js ../core/script/run_state.js --js ../core/script/init_state.js --js ../core/script/runtime.js --js ../core/script/util/dbgpanel.js --js ../core/script/ubershader.js --js_output_file rdge-compiled.js

cat ../core/script/precompiled.js >> ./rdge-compiled.js