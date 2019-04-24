let project = new Project('haxebullet');

project.khabind({
    // forceCache makes sure that the bindings will not be regenerated ( so
    // that users don't end up needing to install emscripten if they
    // accidentally touch this file ). Must be disabled to update bindings.
    forceCache: true,
    // The path to the IDL file containing the bindings
    idlFile: "bullet.idl",
    // The name of the C/C++ library
    nativeLib: "bullet",
    // The path to the C/C++ source files
    sourcesDir: "bullet",
    // Optionally strip a prefix from the class names
    chopPrefix: "bt",
    // Attempt to auto garbage collect references ( only for HashLink )
    autoGC: false,
    // Headers to include
    includes: [
        "<btBulletDynamicsCommon.h>",
        "<BulletSoftBody/btSoftBody.h>",
        "<BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h>",
        "<BulletSoftBody/btDefaultSoftBodySolver.h>",
        "<BulletSoftBody/btSoftBodyHelpers.h>",
        "<BulletSoftBody/btSoftRigidDynamicsWorld.h>",
        "<BulletCollision/CollisionShapes/btHeightfieldTerrainShape.h>",
        "<BulletCollision/CollisionDispatch/btGhostObject.h>",
        "<BulletDynamics/Character/btKinematicCharacterController.h>",
        "<BulletCollision/Gimpact/btGImpactShape.h>",
        "<BulletCollision/Gimpact/btGImpactCollisionAlgorithm.h>"
    ],
    // Optimization level for JavaScript compiler ( either 1, 2, s, z, or 3 )
    emccOptimizationLevel: "3",
    // Arguments for the JavaScript compiler
    emccArgs: [
        "--llvm-lto 1",
        "-s NO_EXIT_RUNTIME=1",
        "-s NO_FILESYSTEM=1",
        "-s AGGRESSIVE_VARIABLE_ELIMINATION=1",
        "-s ELIMINATE_DUPLICATE_FUNCTIONS=1",
        "-s LEGACY_VM_SUPPORT=1",
        "-s NO_DYNAMIC_EXECUTION=1",
        "-s TOTAL_MEMORY=67108864"
    ]
});

resolve(project);
