// Haxe Bullet
// Native Bullet 2.82 physics for Haxe
// Based on haxe-ammo.js https://github.com/floppya/haxe-ammo.js

package haxebullet;

typedef BtScalar = Float;

// ------------------------------------------------------
#if js
@:native('Ammo.btVector3')
#elseif cpp
@:include("bullet/LinearMath/btVector3.h")
@:native("::btVector3")
@:structAccess
@:unreflective
#end
extern class BtVector3 {
	#if js
	public function new(x:BtScalar = 0, y:BtScalar = 0, z:BtScalar = 0):Void;
	#elseif cpp
	@:native("new btVector3")
	public static function create(x:BtScalar = 0, y:BtScalar = 0, z:BtScalar = 0):cpp.Pointer<BtVector3>;
	#end
	public function setX(x:BtScalar):Void;
	public function setY(y:BtScalar):Void;
	public function setZ(z:BtScalar):Void;
	public function setW(w:BtScalar):Void;
	public function x():BtScalar;
	public function y():BtScalar;
	public function z():BtScalar;
	public function w():BtScalar;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btQuaternion')
#elseif cpp
@:include("bullet/LinearMath/btQuaternion.h")
@:native("::btQuaternion")
@:structAccess
@:unreflective
#end
extern class BtQuaternion {
	#if js
	public function new(x:BtScalar = 0, y:BtScalar = 0, z:BtScalar = 0, w:BtScalar = 0):Void;
	#elseif cpp
	@:native("new btQuaternion")
	public static function create(x:BtScalar = 0, y:BtScalar = 0, z:BtScalar = 0, w:BtScalar = 0):cpp.Pointer<BtQuaternion>;
	#end
	public function setEuler(yaw:BtScalar, pitch:BtScalar, roll:BtScalar):Void;
	public function slerp(q:BtQuaternion, t:BtScalar):BtQuaternion;
	public function x():BtScalar;
	public function y():BtScalar;
	public function z():BtScalar;
	public function w():BtScalar;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btActionInterface')
#elseif cpp
@:include("bullet/BulletDynamics/Dynamics/btActionInterface.h")
@:native("::btActionInterface")
@:structAccess
@:unreflective
#end
extern class BtActionInterface {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btTransform')
#elseif cpp
@:include("bullet/LinearMath/btTransform.h")
@:native("::btTransform")
@:structAccess
@:unreflective
#end
extern class BtTransform {
	#if js
	public function new():Void;
	#elseif cpp
	@:native("new btTransform")
	public static function create():cpp.Pointer<BtTransform>;
	#end
	public function setIdentity():Void;
	public function setOrigin(inVec:BtVector3):Void;
	public function getOrigin():BtVector3;
	public function setRotation(inQuat:BtQuaternion):Void;
	public function getRotation():BtQuaternion;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btMotionState')
#elseif cpp
@:include("bullet/LinearMath/btMotionState.h")
@:native("::btMotionState")
@:structAccess
@:unreflective
#end
extern class BtMotionState {
	public function getWorldTransform(centerOfMassWorldTrans:BtTransform):Void;
	public function setWorldTransform(centerOfMassWorldTrans:BtTransform):Void;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDefaultMotionState')
#elseif cpp
@:include("bullet/LinearMath/btDefaultMotionState.h")
@:native("::btDefaultMotionState")
@:structAccess
@:unreflective
#end
extern class BtDefaultMotionState extends BtMotionState {
	#if js
	public function new(worldTrans:BtTransform, centerOfMassOffset:BtTransform):Void;
	#elseif cpp
	@:native("new btDefaultMotionState")
	public static function create(worldTrans:BtTransform, centerOfMassOffset:BtTransform):cpp.Pointer<BtDefaultMotionState>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btRigidBodyConstructionInfo')
#elseif cpp
@:include("bullet/BulletDynamics/Dynamics/btRigidBody.h")
@:native("::btRigidBody::btRigidBodyConstructionInfo")
@:structAccess
@:unreflective
#end
extern class BtRigidBodyConstructionInfo {
	#if js
	public function new(mass:BtScalar, motionState:BtMotionState, collisionShape:BtCollisionShape, localInertia:BtVector3):Void;
	#elseif cpp
	@:native("new btRigidBody::btRigidBodyConstructionInfo")
	public static function create(mass:BtScalar, motionState:cpp.Pointer<Dynamic>, collisionShape:cpp.Pointer<Dynamic>, localInertia:BtVector3):cpp.Pointer<BtRigidBodyConstructionInfo>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCollisionObject')
#elseif cpp
@:include("bullet/BulletCollision/CollisionDispatch/btCollisionObject.h")
@:native("::btCollisionObject")
@:structAccess
@:unreflective
#end
extern class BtCollisionObject {
	public function getWorldTransform():BtTransform;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btRigidBody')
#elseif cpp
@:include("bullet/BulletDynamics/Dynamics/btRigidBody.h")
@:native("::btRigidBody")
@:structAccess
@:unreflective
#end
extern class BtRigidBody extends BtCollisionObject {
	#if js
	public function new(constructionInfo:BtRigidBodyConstructionInfo):Void;
	public function getMotionState():BtMotionState;
	#elseif cpp
	@:native("new btRigidBody")
	public static function create(constructionInfo:BtRigidBodyConstructionInfo):cpp.Pointer<BtRigidBody>;
	public function getMotionState():cpp.Pointer<BtMotionState>;
	#end
	public function applyCentralForce(force:BtVector3):Void;
	public function applyCentralImpulse(impulse:BtVector3):Void;
	public function clearForces():Void;
	public function updateInertiaTensor():Void;
	public function getCenterOfMassPosition():BtVector3;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCollisionConfiguration')
#elseif cpp
@:include("bullet/BulletCollision/CollisionDispatch/btCollisionConfiguration.h")
@:native("::btCollisionConfiguration")
@:structAccess
@:unreflective
#end
extern class BtCollisionConfiguration {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDefaultCollisionConfiguration')
#elseif cpp
@:include("bullet/BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h")
@:native("::btDefaultCollisionConfiguration")
@:structAccess
@:unreflective
#end
extern class BtDefaultCollisionConfiguration extends BtCollisionConfiguration {
	#if js
	public function new():Void;
	#elseif cpp
	@:native("new btDefaultCollisionConfiguration")
	public static function create():cpp.Pointer<BtDefaultCollisionConfiguration>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDispatcher')
#elseif cpp
@:include("bullet/BulletCollision/BroadphaseCollision/btDispatcher.h")
@:native("::btDispatcher")
@:structAccess
@:unreflective
#end
extern class BtDispatcher {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCollisionDispatcher')
#elseif cpp
@:include("bullet/BulletCollision/CollisionDispatch/btCollisionDispatcher.h")
@:native("::btCollisionDispatcher")
@:structAccess
@:unreflective
#end
extern class BtCollisionDispatcher extends BtDispatcher {
	#if js
	public function new(collisionConfiguration:BtCollisionConfiguration):Void;
	#elseif cpp
	@:native("new btCollisionDispatcher")
	public static function create(collisionConfiguration:cpp.Pointer<Dynamic>):cpp.Pointer<BtCollisionDispatcher>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btBroadphaseInterface')
#elseif cpp
@:include("bullet/BulletCollision/BroadphaseCollision/btBroadphaseInterface.h")
@:native("::btBroadphaseInterface")
@:structAccess
@:unreflective
#end
extern class BtBroadphaseInterface {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDbvtBroadphase')
#elseif cpp
@:include("bullet/BulletCollision/BroadphaseCollision/btDbvtBroadphase.h")
@:native("::btDbvtBroadphase")
@:structAccess
@:unreflective
#end
extern class BtDbvtBroadphase extends BtBroadphaseInterface {
	#if js
	public function new():Void;
	#elseif cpp
	@:native("new btDbvtBroadphase")
	public static function create():cpp.Pointer<BtDbvtBroadphase>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btConstraintSolver')
#elseif cpp
@:include("bullet/BulletDynamics/ConstraintSolver/btConstraintSolver.h")
@:native("::btConstraintSolver")
@:structAccess
@:unreflective
#end
extern class BtConstraintSolver {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btSequentialImpulseConstraintSolver')
#elseif cpp
@:include("bullet/BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h")
@:native("::btSequentialImpulseConstraintSolver")
@:structAccess
@:unreflective
#end
extern class BtSequentialImpulseConstraintSolver extends BtConstraintSolver {
	#if js
	public function new():Void;
	#elseif cpp
	@:native("new btSequentialImpulseConstraintSolver")
	public static function create():cpp.Pointer<BtSequentialImpulseConstraintSolver>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCollisionWorld')
#elseif cpp
@:include("bullet/BulletCollision/CollisionDispatch/btCollisionWorld.h")
@:native("::btCollisionWorld")
@:structAccess
@:unreflective
#end
extern class BtCollisionWorld {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDynamicsWorld')
#elseif cpp
@:include("bullet/BulletDynamics/Dynamics/btDynamicsWorld.h")
@:native("::btDynamicsWorld")
@:structAccess
@:unreflective
#end
extern class BtDynamicsWorld extends BtCollisionWorld {
	#if js
	public function new(dispatcher:BtDispatcher, pairCache:BtBroadphaseInterface, constraintSolver:BtConstraintSolver, collisionConfiguration:BtCollisionConfiguration):Void;
	public function addRigidBody(body:BtRigidBody /*, ?group:Int=0, ?mask:Int=0*/):Void;
	#elseif cpp
	@:native("new btDynamicsWorld")
	public static function create(dispatcher:cpp.Pointer<Dynamic>, pairCache:cpp.Pointer<Dynamic>, constraintSolver:cpp.Pointer<Dynamic>, collisionConfiguration:cpp.Pointer<Dynamic>):cpp.Pointer<BtDynamicsWorld>;
	public function addRigidBody(body:cpp.Pointer<BtRigidBody> /*, ?group:Int=0, ?mask:Int=0*/):Void;
	#end
	public function addAction(action:BtActionInterface):Void;
	public function removeAction(action:BtActionInterface):Void;
	public function setGravity(v:BtVector3):Void;
	public function stepSimulation(timeStep:BtScalar, maxSubSteps:BtScalar = 1, fixedTimeStep:BtScalar = 1.0 / 60.0):Void;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDiscreteDynamicsWorld')
#elseif cpp
@:include("bullet/BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h")
@:native("::btDiscreteDynamicsWorld")
@:structAccess
@:unreflective
#end
extern class BtDiscreteDynamicsWorld extends BtDynamicsWorld {
	#if js
	public function new(dispatcher:BtDispatcher, pairCache:BtBroadphaseInterface, constraintSolver:BtConstraintSolver, collisionConfiguration:BtCollisionConfiguration):Void;
	#elseif cpp
	@:native("new btDiscreteDynamicsWorld")
	public static function create(dispatcher:cpp.Pointer<Dynamic>, pairCache:cpp.Pointer<Dynamic>, constraintSolver:cpp.Pointer<Dynamic>, collisionConfiguration:cpp.Pointer<Dynamic>):cpp.Pointer<BtDiscreteDynamicsWorld>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btSimpleDynamicsWorld')
#elseif cpp
@:include("bullet/BulletDynamics/Dynamics/btSimpleDynamicsWorld.h")
@:native("::btSimpleDynamicsWorld")
@:structAccess
@:unreflective
#end
extern class BtSimpleDynamicsWorld extends BtDynamicsWorld {
	#if js
	public function new(dispatcher:BtDispatcher, pairCache:BtBroadphaseInterface, constraintSolver:BtConstraintSolver, collisionConfiguration:BtCollisionConfiguration):Void;
	#elseif cpp
	@:native("new btSimpleDynamicsWorld")
	public static function create(dispatcher:cpp.Pointer<Dynamic>, pairCache:cpp.Pointer<Dynamic>, constraintSolver:cpp.Pointer<Dynamic>, collisionConfiguration:cpp.Pointer<Dynamic>):cpp.Pointer<BtSimpleDynamicsWorld>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCollisionShape')
#elseif cpp
@:include("bullet/BulletCollision/CollisionShapes/btCollisionShape.h")
@:native("::btCollisionShape")
@:structAccess
@:unreflective
#end
extern class BtCollisionShape {
	public function calculateLocalInertia(mass:BtScalar, inertia:BtVector3):Void;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btConvexShape')
#elseif cpp
@:include("bullet/BulletCollision/CollisionShapes/btConvexShape.h")
@:native("::btConvexShape")
@:structAccess
@:unreflective
#end
extern class BtConvexShape extends BtCollisionShape {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btConcaveShape')
#elseif cpp
@:include("bullet/BulletCollision/CollisionShapes/btConcaveShape.h")
@:native("::btConcaveShape")
@:structAccess
@:unreflective
#end
extern class BtConcaveShape extends BtCollisionShape {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btConvexInternalShape')
#elseif cpp
@:include("bullet/BulletCollision/CollisionShapes/btConvexInternalShape.h")
@:native("::btConvexInternalShape")
@:structAccess
@:unreflective
#end
extern class BtConvexInternalShape extends BtConvexShape {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btPolyhedralConvexShape')
#elseif cpp
@:include("bullet/BulletCollision/CollisionShapes/btPolyhedralConvexShape.h")
@:native("::btPolyhedralConvexShape")
@:structAccess
@:unreflective
#end
extern class BtPolyhedralConvexShape extends BtConvexInternalShape {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btBoxShape')
#elseif cpp
@:include("bullet/BulletCollision/CollisionShapes/btBoxShape.h")
@:native("::btBoxShape")
@:structAccess
@:unreflective
#end
extern class BtBoxShape extends BtPolyhedralConvexShape {
	#if js
	public function new(boxHalfExtents:BtVector3):Void;
	#elseif cpp
	@:native("new btBoxShape")
	public static function create(boxHalfExtents:BtVector3):cpp.Pointer<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btSphereShape')
#elseif cpp
@:include("bullet/BulletCollision/CollisionShapes/btSphereShape.h")
@:native("::btSphereShape")
@:structAccess
@:unreflective
#end
extern class BtSphereShape extends BtConvexInternalShape {
	#if js
	public function new(radius:BtScalar):Void;
	#elseif cpp
	@:native("new btSphereShape")
	public static function create(radius:BtScalar):cpp.Pointer<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btStaticPlaneShape')
#elseif cpp
@:include("bullet/BulletCollision/CollisionShapes/btStaticPlaneShape.h")
@:native("::btStaticPlaneShape")
@:structAccess
@:unreflective
#end
extern class BtStaticPlaneShape extends BtConcaveShape {
	#if js
	public function new(planeNormal:BtVector3, planeConstant:BtScalar):Void;
	#elseif cpp
	@:native("new btStaticPlaneShape")
	public static function create(planeNormal:BtVector3, planeConstant:BtScalar):cpp.Pointer<BtStaticPlaneShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo')
extern class Ammo {
	public static function destroy(obj:Dynamic):Void;
	
	private static function __init__():Void untyped {
        #if !noEmbedJS
            #if debug
            //haxe.macro.Compiler.includeFile("haxebullet/js/ammo/ammo.js");
            #else
            //haxe.macro.Compiler.includeFile("haxebullet/js/ammo/ammo-min.js");
            #end
        #end
    }
}
#elseif cpp
//@:buildXml("
//	<files id='haxe'>
//		<compilerflag value='-Ihaxebullet/cpp/bullet'/>
//	</files> ")
//@:keep
//class Include {}
#end
