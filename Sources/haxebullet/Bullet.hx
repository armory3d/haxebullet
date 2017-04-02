// Haxe Bullet
// Native Bullet physics for Haxe
// Based on haxe-ammo.js https://github.com/floppya/haxe-ammo.js
// TODO: Hxcpp seems to ignore default values!

package haxebullet;

typedef BtScalar = Float;

// ------------------------------------------------------
#if js
@:native('Ammo.btTypedObject')
#elseif cpp
@:include("LinearMath/btScalar.h")
@:native("btTypedObject")
@:unreflective
@:structAccess
#end
extern class BtTypedObject {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btVector3')
#elseif cpp
@:include("LinearMath/btVector3.h")
@:native("btVector3")
@:unreflective
@:structAccess
#end
extern class BtVector3 {
	#if js
	public function new(x:BtScalar, y:BtScalar, z:BtScalar):Void;
	public static inline function create(x:BtScalar, y:BtScalar, z:BtScalar):BtVector3 {
		return new BtVector3(x, y, z);
	}
	#elseif cpp
	@:native("btVector3")
	public static function create(x:BtScalar, y:BtScalar, z:BtScalar):BtVector3;
	#end
	public function setX(x:BtScalar):Void;
	public function setY(y:BtScalar):Void;
	public function setZ(z:BtScalar):Void;
	public function setW(w:BtScalar):Void;
	public function x():BtScalar;
	public function y():BtScalar;
	public function z():BtScalar;
	public function w():BtScalar;
	public function length():BtScalar;
	public function normalize():BtVector3;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btQuaternion')
#elseif cpp
@:include("LinearMath/btQuaternion.h")
@:native("btQuaternion")
@:unreflective
@:structAccess
#end
extern class BtQuaternion {
	#if js
	public function new(x:BtScalar, y:BtScalar, z:BtScalar, w:BtScalar):Void;
	public static inline function create(x:BtScalar, y:BtScalar, z:BtScalar, w:BtScalar):BtQuaternion {
		return new BtQuaternion(x, y, z, w);
	}
	#elseif cpp
	@:native("btQuaternion")
	public static function create(x:BtScalar, y:BtScalar, z:BtScalar, w:BtScalar):BtQuaternion;
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
@:include("BulletDynamics/Dynamics/btActionInterface.h")
@:native("btActionInterface")
@:unreflective
#end
extern class BtActionInterface {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btTransform')
#elseif cpp
@:include("LinearMath/btTransform.h")
@:native("btTransform")
@:unreflective
@:structAccess
#end
extern class BtTransform {
	#if js
	public function new():Void;
	public static inline function create():BtTransform {
		return new BtTransform();
	}
	public function mulVec(v:BtVector3):BtVector3; // TODO: TEMP - cannot overload '*' operator in JS
	#elseif cpp
	@:native("btTransform")
	public static function create():BtTransform;
	#end
	public function setIdentity():Void;
	public function setOrigin(inVec:BtVector3):Void;
	public function getOrigin():BtVector3;
	public function setRotation(inQuat:BtQuaternion):Void;
	public function getRotation():BtQuaternion;
	public function inverse():BtTransform; // TODO: Missing in new ammo
}

// ------------------------------------------------------
#if js
@:native('Ammo.btMotionState')
#elseif cpp
@:include("LinearMath/btMotionState.h")
@:native("btMotionState")
@:unreflective
@:structAccess
#end
extern class BtMotionState {
	public function getWorldTransform(centerOfMassWorldTrans:BtTransform):Void;
	public function setWorldTransform(centerOfMassWorldTrans:BtTransform):Void;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDefaultMotionState')
#elseif cpp
@:include("LinearMath/btDefaultMotionState.h")
@:native("btDefaultMotionState")
@:unreflective
#end
extern class BtDefaultMotionState extends BtMotionState {
	#if js
	public function new(worldTrans:BtTransform, centerOfMassOffset:BtTransform):Void;
	public static inline function create(worldTrans:BtTransform, centerOfMassOffset:BtTransform):BtDefaultMotionState {
		return new BtDefaultMotionState(worldTrans, centerOfMassOffset);
	}
	#elseif cpp
	@:native("new btDefaultMotionState")
	public static function create(worldTrans:BtTransform, centerOfMassOffset:BtTransform):cpp.Star<BtMotionState>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btRigidBodyConstructionInfo')
#elseif cpp
@:include("BulletDynamics/Dynamics/btRigidBody.h")
@:native("btRigidBody::btRigidBodyConstructionInfo")
@:unreflective
@:structAccess
#end
extern class BtRigidBodyConstructionInfo {
	#if js
	public function new(mass:BtScalar, motionState:BtMotionState, collisionShape:BtCollisionShape, localInertia:BtVector3):Void;
	public static inline function create(mass:BtScalar, motionState:BtMotionState, collisionShape:BtCollisionShape, localInertia:BtVector3):BtRigidBodyConstructionInfo {
		return new BtRigidBodyConstructionInfo(mass, motionState, collisionShape, localInertia);
	}
	#elseif cpp
	@:native("btRigidBody::btRigidBodyConstructionInfo")
	public static function create(mass:BtScalar, motionState:cpp.Star<BtMotionState>, collisionShape:cpp.Star<BtCollisionShape>, localInertia:BtVector3):BtRigidBodyConstructionInfo;
	#end
	public var m_friction:BtScalar;
	public var m_rollingFriction:BtScalar;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCollisionObject')
#elseif cpp
@:include("BulletCollision/CollisionDispatch/btCollisionObject.h")
@:native("btCollisionObject")
@:unreflective
#end
extern class BtCollisionObject {
	public static inline var ACTIVE_TAG = 1;
	public static inline var ISLAND_SLEEPING = 2;
	public static inline var WANTS_DEACTIVATION = 3;
	public static inline var DISABLE_DEACTIVATION = 4;
	public static inline var DISABLE_SIMULATION = 5;

	public function getWorldTransform():BtTransform;
	public function setWorldTransform(trans:BtTransform):Void;
	public function activate(forceActivation:Bool = false):Void;
	public function setActivationState(newState:Int):Void;
	public function getUserIndex():Int;
	public function setUserIndex(index:Int):Void;
	#if js
	public function getUserPointer():Dynamic;
	public function setUserPointer(userPointer:Dynamic):Void;
	public function isKinematicObject():Bool;
	#elseif cpp
	public function getUserPointer():cpp.Star<Dynamic>;
	public function setUserPointer(userPointer:cpp.Star<Dynamic>):Void;
	public function isKinematicObject():Bool;
	//public function isStaticObject():Bool; // Not available in JS
	//public function isStaticOrKinematicObject():Bool;
	#end
	public function setFriction(frict:BtScalar):Void;
	public function setRollingFriction(frict:BtScalar):Void;
	public function setContactProcessingThreshold(contactProcessingThreshold:BtScalar):Void;
	public function getCollisionShape():BtCollisionShape;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btRigidBody')
#elseif cpp
@:include("BulletDynamics/Dynamics/btRigidBody.h")
@:native("btRigidBody")
@:unreflective
#end
extern class BtRigidBody extends BtCollisionObject {
	#if js
	public function new(constructionInfo:BtRigidBodyConstructionInfo):Void;
	public static inline function create(constructionInfo:BtRigidBodyConstructionInfo):BtRigidBody {
		return new BtRigidBody(constructionInfo);
	}
	public function getMotionState():BtMotionState;
	#elseif cpp
	@:native("new btRigidBody")
	public static function create(constructionInfo:BtRigidBodyConstructionInfo):cpp.Star<BtRigidBody>;
	public function getMotionState():cpp.Star<BtMotionState>;
	#end
	public function applyCentralForce(force:BtVector3):Void;
	public function applyCentralImpulse(impulse:BtVector3):Void;
	public function applyImpulse(impulse:BtVector3, rel_pos:BtVector3):Void;
	public function clearForces():Void;
	public function setDamping(linear:Float, angular:Float):Void;
	public function updateInertiaTensor():Void;
	public function getCenterOfMassPosition():BtVector3;
	public function getCenterOfMassTransform():BtTransform; 
	public function setCenterOfMassTransform(trans:BtTransform):Void;
	//public function setGravity(acceleration:BtVector3):Void; // not available in ammo
	public function getLinearVelocity():BtVector3;
	public function setLinearVelocity(lin_vel:BtVector3):Void;
	public function getAngularVelocity():BtVector3;
	public function setAngularVelocity(ang_vel:BtVector3):Void;
	public function setLinearFactor(linearFactor:BtVector3):Void;
	public function setAngularFactor(angFac:BtVector3):Void;
	// public function setSleepingTresholds(linear:BtScalar, angular:BtScalar):Void; // not available in ammo
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCollisionConfiguration')
#elseif cpp
@:include("BulletCollision/CollisionDispatch/btCollisionConfiguration.h")
@:native("btCollisionConfiguration")
@:unreflective
#end
extern class BtCollisionConfiguration {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDefaultCollisionConfiguration')
#elseif cpp
@:include("BulletCollision/CollisionDispatch/btDefaultCollisionConfiguration.h")
@:native("btDefaultCollisionConfiguration")
@:unreflective
#end
extern class BtDefaultCollisionConfiguration extends BtCollisionConfiguration {
	#if js
	public function new():Void;
	public static inline function create():BtDefaultCollisionConfiguration {
		return new BtDefaultCollisionConfiguration();
	}
	#elseif cpp
	@:native("new btDefaultCollisionConfiguration")
	public static function create():cpp.Star<BtDefaultCollisionConfiguration>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btSoftBodyRigidBodyCollisionConfiguration')
#elseif cpp
@:include("BulletSoftBody/btSoftBodyRigidBodyCollisionConfiguration.h")
@:native("btSoftBodyRigidBodyCollisionConfiguration")
@:unreflective
#end
extern class BtSoftBodyRigidBodyCollisionConfiguration extends BtCollisionConfiguration {
	#if js
	public function new():Void;
	public static inline function create():BtSoftBodyRigidBodyCollisionConfiguration {
		return new BtSoftBodyRigidBodyCollisionConfiguration();
	}
	#elseif cpp
	@:native("new btSoftBodyRigidBodyCollisionConfiguration")
	public static function create():cpp.Star<BtSoftBodyRigidBodyCollisionConfiguration>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDispatcher')
#elseif cpp
@:include("BulletCollision/BroadphaseCollision/btDispatcher.h")
@:native("btDispatcher")
@:unreflective
#end
extern class BtDispatcher {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCollisionDispatcher')
#elseif cpp
@:include("BulletCollision/CollisionDispatch/btCollisionDispatcher.h")
@:native("btCollisionDispatcher")
@:unreflective
#end
extern class BtCollisionDispatcher extends BtDispatcher {
	#if js
	public function new(collisionConfiguration:BtCollisionConfiguration):Void;
	public static inline function create(collisionConfiguration:BtCollisionConfiguration):BtCollisionDispatcher {
		return new BtCollisionDispatcher(collisionConfiguration);
	}
	public function getManifoldByIndexInternal(index:Int):BtPersistentManifold;
	#elseif cpp
	@:native("new btCollisionDispatcher")
	public static function create(collisionConfiguration:cpp.Star<BtCollisionConfiguration>):cpp.Star<BtCollisionDispatcher>;
	public function getManifoldByIndexInternal(index:Int):cpp.Star<BtPersistentManifold>;
	#end
	public function	getNumManifolds():Int;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btBroadphaseInterface')
#elseif cpp
@:include("BulletCollision/BroadphaseCollision/btBroadphaseInterface.h")
@:native("btBroadphaseInterface")
@:unreflective
#end
extern class BtBroadphaseInterface {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDbvtBroadphase')
#elseif cpp
@:include("BulletCollision/BroadphaseCollision/btDbvtBroadphase.h")
@:native("btDbvtBroadphase")
@:unreflective
#end
extern class BtDbvtBroadphase extends BtBroadphaseInterface {
	#if js
	public function new():Void;
	public static inline function create():BtDbvtBroadphase {
		return new BtDbvtBroadphase();
	}
	#elseif cpp
	@:native("new btDbvtBroadphase")
	public static function create():cpp.Star<BtDbvtBroadphase>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btAxisSweep3')
#elseif cpp
@:include("BulletCollision/BroadphaseCollision/btAxisSweep3.h")
@:native("btAxisSweep3")
@:unreflective
#end
extern class BtAxisSweep3 extends BtBroadphaseInterface {
	#if js
	public function new(worldAabbMin:BtVector3, worldAabbMax:BtVector3):Void;
	public static inline function create(worldAabbMin:BtVector3, worldAabbMax:BtVector3):BtAxisSweep3 {
		return new BtAxisSweep3(worldAabbMin, worldAabbMax);
	}
	#elseif cpp
	@:native("new btAxisSweep3")
	public static function create(worldAabbMin:BtVector3, worldAabbMax:BtVector3):cpp.Star<BtAxisSweep3>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btConstraintSolver')
#elseif cpp
@:include("BulletDynamics/ConstraintSolver/btConstraintSolver.h")
@:native("btConstraintSolver")
@:unreflective
#end
extern class BtConstraintSolver {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btSequentialImpulseConstraintSolver')
#elseif cpp
@:include("BulletDynamics/ConstraintSolver/btSequentialImpulseConstraintSolver.h")
@:native("btSequentialImpulseConstraintSolver")
@:unreflective
#end
extern class BtSequentialImpulseConstraintSolver extends BtConstraintSolver {
	#if js
	public function new():Void;
	public static inline function create():BtSequentialImpulseConstraintSolver {
		return new BtSequentialImpulseConstraintSolver();
	}
	#elseif cpp
	@:native("new btSequentialImpulseConstraintSolver")
	public static function create():cpp.Star<BtSequentialImpulseConstraintSolver>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDefaultSoftBodySolver')
#elseif cpp
@:include("BulletSoftBody/btDefaultSoftBodySolver.h")
@:native("btDefaultSoftBodySolver")
@:unreflective
#end
extern class BtDefaultSoftBodySolver extends BtConstraintSolver {
	#if js
	public function new():Void;
	public static inline function create():BtDefaultSoftBodySolver {
		return new BtDefaultSoftBodySolver();
	}
	#elseif cpp
	@:native("new btDefaultSoftBodySolver")
	public static function create():cpp.Star<BtDefaultSoftBodySolver>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.RayResultCallback')
#elseif cpp
@:include("BulletCollision/CollisionDispatch/btCollisionWorld.h")
@:native("btCollisionWorld::RayResultCallback")
@:unreflective
@:structAccess
#end
extern class RayResultCallback {
	public function hasHit():Bool;
	#if js
	public function new():Void;
	//public var m_collisionObject:BtCollisionObject;
	public function get_m_collisionObject():BtCollisionObject;
	#elseif cpp
	@:native("btCollisionWorld::RayResultCallback")
	public static function create():RayResultCallback;
	public var m_collisionObject:cpp.Star<BtCollisionObject>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.ClosestRayResultCallback')
#elseif cpp
@:include("BulletCollision/CollisionDispatch/btCollisionWorld.h")
@:native("btCollisionWorld::ClosestRayResultCallback")
@:unreflective
@:structAccess
#end
extern class ClosestRayResultCallback extends RayResultCallback {
	#if js
	public function new(rayFromWorld:BtVector3, rayToWorld:BtVector3):Void;
	public static inline function create(rayFromWorld:BtVector3, rayToWorld:BtVector3):ClosestRayResultCallback {
		return new ClosestRayResultCallback(rayFromWorld, rayToWorld);
	}
	public function get_m_hitNormalWorld():BtVector3;
	public function get_m_hitPointWorld():BtVector3;
	#elseif cpp
	@:native("btCollisionWorld::ClosestRayResultCallback")
	public static function create(rayFromWorld:BtVector3, rayToWorld:BtVector3):ClosestRayResultCallback;
	public var m_hitNormalWorld:BtVector3;
	public var m_hitPointWorld:BtVector3;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.ConcreteContactResultCallback')
extern class ConcreteContactResultCallback extends RayResultCallback {
	public function new():Void;
	public static inline function create():ConcreteContactResultCallback {
		return new ConcreteContactResultCallback();
	}
}
#end

// ------------------------------------------------------
#if js
@:native('Ammo.btCollisionWorld')
#elseif cpp
@:include("BulletCollision/CollisionDispatch/btCollisionWorld.h")
@:native("btCollisionWorld")
@:unreflective
#end
extern class BtCollisionWorld {
	public function rayTest(rayFromWorld:BtVector3, rayToWorld:BtVector3, resultCallback:RayResultCallback):Void;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDynamicsWorld')
#elseif cpp
@:include("BulletDynamics/Dynamics/btDynamicsWorld.h")
@:native("btDynamicsWorld")
@:unreflective
#end
extern class BtDynamicsWorld extends BtCollisionWorld {
	#if js
	public function new(dispatcher:BtDispatcher, pairCache:BtBroadphaseInterface, constraintSolver:BtConstraintSolver, collisionConfiguration:BtCollisionConfiguration):Void;
	public static inline function create(dispatcher:BtDispatcher, pairCache:BtBroadphaseInterface, constraintSolver:BtConstraintSolver, collisionConfiguration:BtCollisionConfiguration):BtDynamicsWorld {
		return new BtDynamicsWorld(dispatcher, pairCache, constraintSolver, collisionConfiguration);
	}
	public function addRigidBody(body:BtRigidBody /*, ?group:Int=0, ?mask:Int=0*/):Void;
	public function removeRigidBody(body:BtRigidBody):Void;
	public function addAction(action:BtActionInterface):Void;
	public function removeAction(action:BtActionInterface):Void;
	public function addConstraint(constraint:BtTypedConstraint, disableCollisionsBetweenLinkedBodies:Bool = false):Void;
	public function removeConstraint(constraint:BtTypedConstraint):Void;
	#elseif cpp
	@:native("new btDynamicsWorld")
	public static function create(dispatcher:cpp.Star<BtDispatcher>, pairCache:cpp.Star<BtBroadphaseInterface>, constraintSolver:cpp.Star<BtConstraintSolver>, collisionConfiguration:cpp.Star<BtCollisionConfiguration>):cpp.Star<BtDynamicsWorld>;
	public function addRigidBody(body:cpp.Star<BtRigidBody> /*, ?group:Int=0, ?mask:Int=0*/):Void;
	public function removeRigidBody(body:cpp.Star<BtRigidBody>):Void;
	public function addAction(action:cpp.Star<BtActionInterface>):Void;
	public function removeAction(action:cpp.Star<BtActionInterface>):Void;
	public function addConstraint(constraint:cpp.Star<BtTypedConstraint>, disableCollisionsBetweenLinkedBodies:Bool = false):Void;
	public function removeConstraint(constraint:cpp.Star<BtTypedConstraint>):Void;
	#end
	public function setGravity(v:BtVector3):Void;
	public function stepSimulation(timeStep:BtScalar, maxSubSteps:BtScalar = 1, fixedTimeStep:BtScalar = 1.0 / 60.0):Void;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDiscreteDynamicsWorld')
#elseif cpp
@:include("BulletDynamics/Dynamics/btDiscreteDynamicsWorld.h")
@:native("btDiscreteDynamicsWorld")
@:unreflective
#end
extern class BtDiscreteDynamicsWorld extends BtDynamicsWorld {
	#if js
	public function new(dispatcher:BtDispatcher, pairCache:BtBroadphaseInterface, constraintSolver:BtConstraintSolver, collisionConfiguration:BtCollisionConfiguration):Void;
	public static inline function create(dispatcher:BtDispatcher, pairCache:BtBroadphaseInterface, constraintSolver:BtConstraintSolver, collisionConfiguration:BtCollisionConfiguration):BtDiscreteDynamicsWorld {
		return new BtDiscreteDynamicsWorld(dispatcher, pairCache, constraintSolver, collisionConfiguration);
	}
	#elseif cpp
	@:native("new btDiscreteDynamicsWorld")
	public static function create(dispatcher:cpp.Star<BtDispatcher>, pairCache:cpp.Star<BtBroadphaseInterface>, constraintSolver:cpp.Star<BtConstraintSolver>, collisionConfiguration:cpp.Star<BtCollisionConfiguration>):cpp.Star<BtDiscreteDynamicsWorld>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btSoftBodyWorldInfo')
#elseif cpp
@:include("BulletSoftBody/btSoftBody.h")
@:native("btSoftBodyWorldInfo")
@:unreflective
@:structAccess
#end
extern class BtSoftBodyWorldInfo {
	#if js
	public function set_m_gravity(v:BtVector3):Void;
	#elseif cpp
	public var m_gravity:BtVector3;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btSoftRigidDynamicsWorld')
#elseif cpp
@:include("BulletSoftBody/btSoftRigidDynamicsWorld.h")
@:native("btSoftRigidDynamicsWorld")
@:unreflective
#end
extern class BtSoftRigidDynamicsWorld extends BtDynamicsWorld {
	#if js
	public function new(dispatcher:BtDispatcher, pairCache:BtBroadphaseInterface, constraintSolver:BtConstraintSolver, collisionConfiguration:BtCollisionConfiguration, softConstraintSolver:BtConstraintSolver):Void;
	public static inline function create(dispatcher:BtDispatcher, pairCache:BtBroadphaseInterface, constraintSolver:BtConstraintSolver, collisionConfiguration:BtCollisionConfiguration, softConstraintSolver:BtConstraintSolver):BtSoftRigidDynamicsWorld {
		return new BtSoftRigidDynamicsWorld(dispatcher, pairCache, constraintSolver, collisionConfiguration, softConstraintSolver);
	}
	public function addSoftBody(body:BtSoftBody, collisionFilterGroup:Int, collisionFilterMask:Int):Void;
	public function removeSoftBody(body:BtSoftBody):Void;
	#elseif cpp
	@:native("new btSoftRigidDynamicsWorld")
	public static function create(dispatcher:cpp.Star<BtDispatcher>, pairCache:cpp.Star<BtBroadphaseInterface>, constraintSolver:cpp.Star<BtConstraintSolver>, collisionConfiguration:cpp.Star<BtCollisionConfiguration>, softConstraintSolver:cpp.Star<BtConstraintSolver>):cpp.Star<BtSoftRigidDynamicsWorld>;
	public function addSoftBody(body:cpp.Star<BtSoftBody>, collisionFilterGroup:Int, collisionFilterMask:Int):Void;
	public function removeSoftBody(body:cpp.Star<BtSoftBody>):Void;
	#end
	public function getWorldInfo():BtSoftBodyWorldInfo;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btSimpleDynamicsWorld')
#elseif cpp
@:include("BulletDynamics/Dynamics/btSimpleDynamicsWorld.h")
@:native("btSimpleDynamicsWorld")
@:unreflective
#end
extern class BtSimpleDynamicsWorld extends BtDynamicsWorld {
	#if js
	public function new(dispatcher:BtDispatcher, pairCache:BtBroadphaseInterface, constraintSolver:BtConstraintSolver, collisionConfiguration:BtCollisionConfiguration):Void;
	public static inline function create(dispatcher:BtDispatcher, pairCache:BtBroadphaseInterface, constraintSolver:BtConstraintSolver, collisionConfiguration:BtCollisionConfiguration):BtSimpleDynamicsWorld {
		return new BtSimpleDynamicsWorld(dispatcher, pairCache, constraintSolver, collisionConfiguration);
	}
	#elseif cpp
	@:native("new btSimpleDynamicsWorld")
	public static function create(dispatcher:cpp.Star<BtDispatcher>, pairCache:cpp.Star<BtBroadphaseInterface>, constraintSolver:cpp.Star<BtConstraintSolver>, collisionConfiguration:cpp.Star<BtCollisionConfiguration>):cpp.Star<BtSimpleDynamicsWorld>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCollisionShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btCollisionShape.h")
@:native("btCollisionShape")
@:unreflective
#end
extern class BtCollisionShape {
	public function calculateLocalInertia(mass:BtScalar, inertia:BtVector3):Void;
	public function setMargin(margin:Float):Void;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCompoundShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btCompoundShape.h")
@:native("btCompoundShape")
@:unreflective
#end
extern class BtCompoundShape extends BtCollisionShape {
	#if js
	public function new(enableDynamicAabbTree:Bool = true):Void;
	public static inline function create(enableDynamicAabbTree:Bool = true):BtCompoundShape {
		return new BtCompoundShape(enableDynamicAabbTree);
	}
	public function addChildShape(localTransform:BtTransform, shape:BtCollisionShape):Void;
	#elseif cpp
	@:native("new btCompoundShape")
	public static function create(enableDynamicAabbTree:Bool = true):cpp.Star<BtCompoundShape>;
	public function addChildShape(localTransform:BtTransform, shape:cpp.Star<BtCollisionShape>):Void;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btConvexShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btConvexShape.h")
@:native("btConvexShape")
@:unreflective
#end
extern class BtConvexShape extends BtCollisionShape {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btConcaveShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btConcaveShape.h")
@:native("btConcaveShape")
@:unreflective
#end
extern class BtConcaveShape extends BtCollisionShape {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btConvexInternalShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btConvexInternalShape.h")
@:native("btConvexInternalShape")
@:unreflective
#end
extern class BtConvexInternalShape extends BtConvexShape {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btPolyhedralConvexShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btPolyhedralConvexShape.h")
@:native("btPolyhedralConvexShape")
@:unreflective
#end
extern class BtPolyhedralConvexShape extends BtConvexInternalShape {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btBoxShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btBoxShape.h")
@:native("btBoxShape")
@:unreflective
#end
extern class BtBoxShape extends BtPolyhedralConvexShape {
	#if js
	public function new(boxHalfExtents:BtVector3):Void;
	public static inline function create(boxHalfExtents:BtVector3):BtBoxShape {
		return new BtBoxShape(boxHalfExtents);
	}
	#elseif cpp
	@:native("new btBoxShape")
	public static function create(boxHalfExtents:BtVector3):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btSphereShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btSphereShape.h")
@:native("btSphereShape")
@:unreflective
#end
extern class BtSphereShape extends BtConvexInternalShape {
	#if js
	public function new(radius:BtScalar):Void;
	public static inline function create(radius:BtScalar):BtSphereShape {
		return new BtSphereShape(radius);
	}
	#elseif cpp
	@:native("new btSphereShape")
	public static function create(radius:BtScalar):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btStaticPlaneShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btStaticPlaneShape.h")
@:native("btStaticPlaneShape")
@:unreflective
#end
extern class BtStaticPlaneShape extends BtConcaveShape {
	#if js
	public function new(planeNormal:BtVector3, planeConstant:BtScalar):Void;
	public static inline function create(planeNormal:BtVector3, planeConstant:BtScalar):BtStaticPlaneShape {
		return new BtStaticPlaneShape(planeNormal, planeConstant);
	}
	#elseif cpp
	@:native("new btStaticPlaneShape")
	public static function create(planeNormal:BtVector3, planeConstant:BtScalar):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btPolyhedralConvexAabbCachingShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btPolyhedralConvexShape.h")
@:native("btPolyhedralConvexAabbCachingShape")
@:unreflective
#end
extern class BtPolyhedralConvexAabbCachingShape extends BtPolyhedralConvexShape {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btConvexHullShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btConvexHullShape.h")
@:native("btConvexHullShape")
@:unreflective
#end
extern class BtConvexHullShape extends BtPolyhedralConvexAabbCachingShape {
	#if js
	public function new():Void;
	public static inline function create():BtConvexHullShape {
		return new BtConvexHullShape();
	}
	#elseif cpp
	@:native("new btConvexHullShape")
	public static function create():cpp.Star<BtConvexHullShape>;
	#end
	public function addPoint(point:BtVector3, recalculateLocalAabb:Bool = true):Void;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCapsuleShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btCapsuleShape.h")
@:native("btCapsuleShape")
@:unreflective
#end
extern class BtCapsuleShape extends BtConvexInternalShape {
	#if js
	public function new(radius:BtScalar, height:BtScalar):Void;
	public static inline function create(radius:BtScalar, height:BtScalar):BtCapsuleShape {
		return new BtCapsuleShape(radius, height);
	}
	#elseif cpp
	@:native("new btCapsuleShape")
	public static function create(radius:BtScalar, height:BtScalar):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCapsuleShapeX')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btCapsuleShape.h")
@:native("btCapsuleShapeX")
@:unreflective
#end
extern class BtCapsuleShapeX extends BtCapsuleShape {
	#if js
	public function new(radius:BtScalar, height:BtScalar):Void;
	public static inline function create(radius:BtScalar, height:BtScalar):BtCapsuleShapeX {
		return new BtCapsuleShapeX(radius, height);
	}
	#elseif cpp
	@:native("new btCapsuleShapeX")
	public static function create(radius:BtScalar, height:BtScalar):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCapsuleShapeZ')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btCapsuleShape.h")
@:native("btCapsuleShapeZ")
@:unreflective
#end
extern class BtCapsuleShapeZ extends BtCapsuleShape {
	#if js
	public function new(radius:BtScalar, height:BtScalar):Void;
	public static inline function create(radius:BtScalar, height:BtScalar):BtCapsuleShapeZ {
		return new BtCapsuleShapeZ(radius, height);
	}
	#elseif cpp
	@:native("new btCapsuleShapeZ")
	public static function create(radius:BtScalar, height:BtScalar):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCylinderShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btCylinderShape.h")
@:native("btCylinderShape")
@:unreflective
#end
extern class BtCylinderShape extends BtConvexInternalShape {
	#if js
	public function new(halfExtents:BtVector3):Void;
	public static inline function create(halfExtents:BtVector3):BtCylinderShape {
		return new BtCylinderShape(halfExtents);
	}
	#elseif cpp
	@:native("new btCylinderShape")
	public static function create(halfExtents:BtVector3):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCylinderShapeX')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btCylinderShape.h")
@:native("btCylinderShapeX")
@:unreflective
#end
extern class BtCylinderShapeX extends BtCylinderShape {
	#if js
	public function new(halfExtents:BtVector3):Void;
	public static inline function create(halfExtents:BtVector3):BtCylinderShapeX {
		return new BtCylinderShapeX(halfExtents);
	}
	#elseif cpp
	@:native("new btCylinderShapeX")
	public static function create(halfExtents:BtVector3):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btCylinderShapeZ')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btCylinderShape.h")
@:native("btCylinderShapeZ")
@:unreflective
#end
extern class BtCylinderShapeZ extends BtCylinderShape {
	#if js
	public function new(halfExtents:BtVector3):Void;
	public static inline function create(halfExtents:BtVector3):BtCylinderShapeZ {
		return new BtCylinderShapeZ(halfExtents);
	}
	#elseif cpp
	@:native("new btCylinderShapeZ")
	public static function create(halfExtents:BtVector3):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btConeShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btConeShape.h")
@:native("btConeShape")
@:unreflective
#end
extern class BtConeShape extends BtConvexInternalShape {
	#if js
	public function new(radius:BtScalar, height:BtScalar):Void;
	public static inline function create(radius:BtScalar, height:BtScalar):BtConeShape {
		return new BtConeShape(radius, height);
	}
	#elseif cpp
	@:native("new btConeShape")
	public static function create(radius:BtScalar, height:BtScalar):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btConeShapeX')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btConeShape.h")
@:native("btConeShapeX")
@:unreflective
#end
extern class BtConeShapeX extends BtConeShape {
	#if js
	public function new(radius:BtScalar, height:BtScalar):Void;
	public static inline function create(radius:BtScalar, height:BtScalar):BtConeShapeX {
		return new BtConeShapeX(radius, height);
	}
	#elseif cpp	
	@:native("new btConeShapeX")
	public static function create(radius:BtScalar, height:BtScalar):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btConeShapeZ')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btConeShape.h")
@:native("btConeShapeZ")
@:unreflective
#end
extern class BtConeShapeZ extends BtConeShape {
	#if js
	public function new(radius:BtScalar, height:BtScalar):Void;
	public static inline function create(radius:BtScalar, height:BtScalar):BtConeShapeZ {
		return new BtConeShapeZ(radius, height);
	}
	#elseif cpp
	@:native("new btConeShapeZ")
	public static function create(radius:BtScalar, height:BtScalar):cpp.Star<BtCollisionShape> ;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btHeightfieldTerrainShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btHeightfieldTerrainShape.h")
@:native("btHeightfieldTerrainShape")
@:unreflective
#end
extern class BtHeightfieldTerrainShape extends BtConcaveShape {
	// heightDataType - float, double, integet, short, fixedpoint88, uchar
	#if js
	public function new(heightStickWidth:Int, heightStickLength:Int, heightfieldData:Array<Dynamic>, heightScale:BtScalar, minHeight:BtScalar, maxHeight:BtScalar, upAxis:Int, heightDataType:Int, flipQuadEdges:Bool):Void;
	public static inline function create(heightStickWidth:Int, heightStickLength:Int, heightfieldData:Array<Dynamic>, heightScale:BtScalar, minHeight:BtScalar, maxHeight:BtScalar, upAxis:Int, heightDataType:Int, flipQuadEdges:Bool):BtHeightfieldTerrainShape {
		return new BtHeightfieldTerrainShape(heightStickWidth, heightStickLength, heightfieldData, heightScale, minHeight, maxHeight, upAxis, heightDataType, flipQuadEdges);
	}
	#elseif cpp
	@:native("new btHeightfieldTerrainShape")
	public static function create(heightStickWidth:Int, heightStickLength:Int, heightfieldData:Array<Dynamic>, heightScale:BtScalar, minHeight:BtScalar, maxHeight:BtScalar, upAxis:Int, heightDataType:Int, flipQuadEdges:Bool):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btStridingMeshInterface')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btStridingMeshInterface.h")
@:native("btStridingMeshInterface")
@:unreflective
#end
extern class BtStridingMeshInterface {
	#if js
	public function new():Void;
	public static inline function create():BtStridingMeshInterface {
		return new BtStridingMeshInterface();
	}
	#elseif cpp
	@:native("new btStridingMeshInterface")
	public static function create():cpp.Star<BtStridingMeshInterface>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btIndexedMesh')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h")
@:native("btIndexedMesh")
@:unreflective
#end
extern class BtIndexedMesh {
	#if js
	public function new():Void;
	public static inline function create():BtIndexedMesh {
		return new BtIndexedMesh();
	}
	#elseif cpp
	@:native("new btIndexedMesh")
	public static function create():cpp.Star<BtIndexedMesh>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btTriangleIndexVertexArray')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btTriangleIndexVertexArray.h")
@:native("btTriangleIndexVertexArray")
@:unreflective
#end
extern class BtTriangleIndexVertexArray extends BtStridingMeshInterface {
	#if js
	public function new():Void;
	public static inline function create():BtTriangleIndexVertexArray {
		return new BtTriangleIndexVertexArray();
	}
	#elseif cpp
	@:native("new btTriangleIndexVertexArray")
	public static function create():cpp.Star<BtStridingMeshInterface>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btTriangleMesh')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btTriangleMesh.h")
@:native("btTriangleMesh")
@:unreflective
#end
extern class BtTriangleMesh extends BtTriangleIndexVertexArray {
	#if js
	public function new(use32bitIndices:Bool = true, use4componentVertices:Bool = true):Void;
	public static inline function create(use32bitIndices:Bool = true, use4componentVertices:Bool = true):BtTriangleMesh {
		return new BtTriangleMesh(use32bitIndices, use4componentVertices);
	}
	#elseif cpp
	@:native("new btTriangleMesh")
	public static function create(use32bitIndices:Bool = true, use4componentVertices:Bool = true):cpp.Star<BtTriangleMesh>;
	#end
	public function addTriangle(vertex0:BtVector3, vertex1:BtVector3, vertex2:BtVector3, removeDuplicateVertices:Bool = false):Void;
}

// ------------------------------------------------------
// Don't use this class directly, use BtBvhTriangleMeshShape instead
#if js
@:native('Ammo.btTriangleMeshShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btTriangleMeshShape.h")
@:native("btTriangleMeshShape")
@:unreflective
#end
extern class BtTriangleMeshShape extends BtConcaveShape {
	#if js
	public function new(meshInterface:BtStridingMeshInterface):Void;
	public static inline function create(meshInterface:BtStridingMeshInterface):BtTriangleMeshShape {
		return new BtTriangleMeshShape(meshInterface);
	}
	#elseif cpp
	@:native("new btTriangleMeshShape")
	public static function create(meshInterface:cpp.Star<BtStridingMeshInterface>):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btBvhTriangleMeshShape')
#elseif cpp
@:include("BulletCollision/CollisionShapes/btBvhTriangleMeshShape.h")
@:native("btBvhTriangleMeshShape")
@:unreflective
#end
extern class BtBvhTriangleMeshShape extends BtTriangleMeshShape {
	#if js
	public function new(meshInterface:BtStridingMeshInterface, useQuantizedAabbCompression:Bool, buildBvh:Bool = true):Void;
	public static inline function create(meshInterface:BtStridingMeshInterface, useQuantizedAabbCompression:Bool, buildBvh:Bool = true):BtBvhTriangleMeshShape {
		return new BtBvhTriangleMeshShape(meshInterface, useQuantizedAabbCompression, buildBvh);
	}
	#elseif cpp
	@:native("new btBvhTriangleMeshShape")
	public static function create(meshInterface:cpp.Star<BtStridingMeshInterface>, useQuantizedAabbCompression:Bool, buildBvh:Bool = true):cpp.Star<BtCollisionShape>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btVehicleTuning')
#elseif cpp
@:include("BulletDynamics/Vehicle/btRaycastVehicle.h")
@:native("btRaycastVehicle::btVehicleTuning")
@:unreflective
@:structAccess
#end
extern class BtVehicleTuning extends BtActionInterface {
	#if js
	public function new():Void;
	public static inline function create():BtVehicleTuning {
		return new BtVehicleTuning();
	}
	#elseif cpp
	@:native("btRaycastVehicle::btVehicleTuning")
	public static function create():BtVehicleTuning;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btVehicleRaycaster')
#elseif cpp
@:include("BulletDynamics/Vehicle/btVehicleRaycaster.h")
@:native("btVehicleRaycaster")
@:unreflective
#end
extern class BtVehicleRaycaster {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btDefaultVehicleRaycaster')
#elseif cpp
@:include("BulletDynamics/Vehicle/btRaycastVehicle.h")
@:native("btDefaultVehicleRaycaster")
@:unreflective
#end
extern class BtDefaultVehicleRaycaster extends BtVehicleRaycaster {
	#if js
	public function new(world:BtDynamicsWorld):Void;
	public static inline function create(world:BtDynamicsWorld):BtDefaultVehicleRaycaster {
		return new BtDefaultVehicleRaycaster(world);
	}
	#elseif cpp
	@:native("new btDefaultVehicleRaycaster")
	public static function create(world:cpp.Star<BtDynamicsWorld>):cpp.Star<BtVehicleRaycaster>;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btWheelInfoConstructionInfo')
#elseif cpp
@:include("BulletDynamics/Vehicle/btWheelInfo.h")
@:native("btWheelInfoConstructionInfo")
@:unreflective
#end
extern class BtWheelInfoConstructionInfo {
	#if js
	public function new():Void;
	public static inline function create():BtWheelInfoConstructionInfo {
		return new BtWheelInfoConstructionInfo();
	}
	#elseif cpp
	@:native("new btWheelInfoConstructionInfo")
	public static function create():cpp.Star<BtWheelInfoConstructionInfo>;
	#end
	public var m_chassisConnectionCS:BtVector3;
	public var m_wheelDirectionCS:BtVector3;
	public var m_wheelAxleCS:BtVector3;
	public var m_suspensionRestLength:BtScalar;
	public var m_maxSuspensionTravelCm:BtScalar;
	public var m_wheelRadius:BtScalar;
	
	public var m_suspensionStiffness:BtScalar;
	public var m_wheelsDampingCompression:BtScalar;
	public var m_wheelsDampingRelaxation:BtScalar;
	public var m_frictionSlip:BtScalar;
	public var m_maxSuspensionForce:BtScalar;
	public var m_bIsFrontWheel:Bool;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btWheelInfo')
#elseif cpp
@:include("BulletDynamics/Vehicle/btWheelInfo.h")
@:native("btWheelInfo")
@:unreflective
@:structAccess
#end
extern class BtWheelInfo {
	#if js
	public function new(ci:BtWheelInfoConstructionInfo):Void;
	public static inline function create(ci:BtWheelInfoConstructionInfo):BtWheelInfo {
		return new BtWheelInfo(ci);
	}
	#elseif cpp
	@:native("btWheelInfo")
	public static function create(ci:BtWheelInfoConstructionInfo):BtWheelInfo;
	#end
	public var m_suspensionStiffness:BtScalar;
	public var m_wheelsDampingCompression:BtScalar;
	public var m_wheelsDampingRelaxation:BtScalar;
	public var m_frictionSlip:BtScalar;
	public var m_rollInfluence:BtScalar;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btRaycastVehicle')
#elseif cpp
@:include("BulletDynamics/Vehicle/btRaycastVehicle.h")
@:native("btRaycastVehicle")
@:unreflective
#end
extern class BtRaycastVehicle extends BtActionInterface {
	#if js
	public function new(tuning:BtVehicleTuning, chassis:BtRigidBody, raycaster:BtVehicleRaycaster):Void;
	public static inline function create(tuning:BtVehicleTuning, chassis:BtRigidBody, raycaster:BtVehicleRaycaster):BtRaycastVehicle {
		return new BtRaycastVehicle(tuning, chassis, raycaster);
	}
	#elseif cpp
	@:native("new btRaycastVehicle")
	public static function create(tuning:BtVehicleTuning, chassis:cpp.Star<BtRigidBody>, raycaster:cpp.Star<BtVehicleRaycaster>):cpp.Star<BtRaycastVehicle>;
	#end
	public function setCoordinateSystem(rightIndex:Int, upIndex:Int, forwardIndex:Int):Void;
	public function addWheel(connectionPointCS0:BtVector3, wheelDirectionCS0:BtVector3, wheelAxleCS:BtVector3, suspensionRestLength:BtScalar, wheelRadius:BtScalar, tuning:BtVehicleTuning, isFrontWheel:Bool):BtWheelInfo;
	public function getNumWheels():Int;
	public function getWheelInfo(index:Int):BtWheelInfo;
	public function resetSuspension():Void;
	public function getWheelTransformWS(wheelIndex:Int):BtTransform;
	public function updateWheelTransform(wheelIndex:Int, interpolatedTransform:Bool = true):Void;
	public function applyEngineForce(force:BtScalar, wheel:Int):Void;
	public function setBrake(brake:BtScalar, wheelIndex:Int):Void;
	public function setSteeringValue(steering:BtScalar, wheel:Int):Void;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btPersistentManifold')
#elseif cpp
@:include("BulletCollision/NarrowPhaseCollision/btPersistentManifold.h")
@:native("btPersistentManifold")
@:unreflective
#end
extern class BtPersistentManifold extends BtTypedObject {
	#if js
	public function new():Void;
	public static inline function create():BtPersistentManifold {
		return new BtPersistentManifold();
	}
	public function getBody0():BtCollisionObject;
	public function getBody1():BtCollisionObject;
	#elseif cpp
	@:native("new btRaycastVehicle")
	public static function create():cpp.Star<BtPersistentManifold>;
	public function getBody0():cpp.Star<BtCollisionObject>;
	public function getBody1():cpp.Star<BtCollisionObject>;
	#end
	public function getNumContacts():Int;
	public function getContactPoint(index:Int):BtManifoldPoint;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btManifoldPoint')
#elseif cpp
@:include("BulletCollision/NarrowPhaseCollision/btManifoldPoint.h")
@:native("btManifoldPoint")
@:unreflective
@:structAccess
#end
extern class BtManifoldPoint {
	#if js
	public function new():Void;
	public static inline function create():BtManifoldPoint {
		return new BtManifoldPoint();
	}
	public function get_m_positionWorldOnA():BtVector3;
	public function get_m_positionWorldOnB():BtVector3;
	public function get_m_normalWorldOnB():BtVector3;
	#elseif cpp
	@:native("btManifoldPoint")
	public static function create():BtPersistentManifold;
	public var m_positionWorldOnA:BtVector3;
	public var m_positionWorldOnB:BtVector3;
	public var m_normalWorldOnB:BtVector3;
	#end
	public function getDistance():BtScalar;
	public function getAppliedImpulse():BtScalar; // missing in ammo_old.js
}

// ------------------------------------------------------
#if js
@:native('Ammo.btTypedConstraint')
#elseif cpp
@:include("BulletDynamics/ConstraintSolver/btTypedConstraint.h")
@:native("btTypedConstraint")
@:unreflective
#end
extern class BtTypedConstraint extends BtTypedObject {
}

// ------------------------------------------------------
#if js
@:native('Ammo.btGeneric6DofConstraint')
#elseif cpp
@:include("BulletDynamics/ConstraintSolver/btGeneric6DofConstraint.h")
@:native("btGeneric6DofConstraint")
@:unreflective
#end
extern class BtGeneric6DofConstraint extends BtTypedConstraint {
	//BT_CONSTRAINT_ERP=1,
	//BT_CONSTRAINT_STOP_ERP,
	//BT_CONSTRAINT_CFM,
	//BT_CONSTRAINT_STOP_CFM
	#if js
	public function new(rbB:BtRigidBody, frameInB:BtTransform, useLinearReferenceFrameB:Bool):Void;
	public static inline function create(rbB:BtRigidBody, frameInB:BtTransform, useLinearReferenceFrameB:Bool):BtGeneric6DofConstraint {
		return new BtGeneric6DofConstraint(rbB, frameInB, useLinearReferenceFrameB);
	}
	#elseif cpp
	@:native("new btGeneric6DofConstraint")
	public static function create(rbB:BtRigidBody, frameInB:BtTransform, useLinearReferenceFrameB:Bool):cpp.Star<BtGeneric6DofConstraint>;
	public function setFrameOffsetAOrigin(v:BtVector3):Void; // TODO: TEMP
	#end
	public function setLinearLowerLimit(linearLower:BtVector3):Void;
	public function setLinearUpperLimit(linearUpper:BtVector3):Void;
	public function setAngularLowerLimit(angularLower:BtVector3):Void;
	public function setAngularUpperLimit(angularUpper:BtVector3):Void;
	public function setParam(num:Int, value:BtScalar, axis:Int = -1):Void;
	public function getFrameOffsetA():BtTransform;
}

// ------------------------------------------------------
#if js
@:native('Ammo.Config')
#elseif cpp
@:include("BulletSoftBody/btSoftBody.h")
@:native("btSoftBody::Config")
@:unreflective
@:structAccess
#end
extern class Config {
	#if js
	public function set_viterations(i:Int):Void;
	public function set_piterations(i:Int):Void;
	public function set_collisions(i:Int):Void;
	public function set_kDF(f:Float):Void;
	public function set_kDP(f:Float):Void;
	public function set_kPR(f:Float):Void;
	#elseif cpp
	public var viterations:Int;
	public var piterations:Int;
	public var collisions:Int;
	public var kDF:Float;
	public var kDP:Float;
	public var kPR:Float;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.tNodeArray')
#elseif cpp
@:include("BulletSoftBody/btSoftBody.h")
@:native("btAlignedObjectArray<btSoftBody::Node>")
@:unreflective
@:structAccess
#end
extern class TNodeArray {
	public function at(i:Int):Node;
}

// ------------------------------------------------------
#if js
@:native('Ammo.Node')
#elseif cpp
@:include("BulletSoftBody/btSoftBody.h")
@:native("btSoftBody::Node")
@:unreflective
@:structAccess
#end
extern class Node {
	#if js
	public function get_m_x():BtVector3;
	public function get_m_n():BtVector3;
	#elseif cpp
	public var m_x:BtVector3;
	public var m_n:BtVector3;
	#end
}

// ------------------------------------------------------
#if js
@:native('Ammo.btSoftBody')
#elseif cpp
@:include("BulletSoftBody/btSoftBody.h")
@:native("btSoftBody")
@:unreflective
#end
extern class BtSoftBody extends BtCollisionObject {
	#if js
	public function get_m_nodes():TNodeArray;
	public function get_m_cfg():Config;
	#elseif cpp
	var m_nodes:TNodeArray;
	var m_cfg:Config;
	#end
	public function setTotalMass(mass:BtScalar, fromfaces:Bool = false):Void;
	public function generateClusters(k:Int, maxiterations:Int = 8192):Void;
	// public function generateBendingConstraints(distance:Int, mat:Dynamic = 0):Void;
	public function appendAnchor(node:Int, body:BtRigidBody, disableCollisionBetweenLinkedBodies:Bool, influence:Float):Void;
}

// ------------------------------------------------------
#if js
@:native('Ammo.btSoftBodyHelpers')
#elseif cpp
@:include("BulletSoftBody/btSoftBodyHelpers.h")
@:native("btSoftBodyHelpers")
@:unreflective
@:structAccess
#end
extern class BtSoftBodyHelpers {
	#if js
	public function new():Void;
	public static inline function create():BtSoftBodyHelpers {
		return new BtSoftBodyHelpers();
	}
	#elseif cpp
	@:native("btSoftBodyHelpers")
	public static function create():BtSoftBodyHelpers;
	#end
	function CreateFromTriMesh(worldInfo:BtSoftBodyWorldInfo, vertices:haxe.ds.Vector<BtScalar>, triangles:haxe.ds.Vector<Int>, ntriangles:Int, randomizeConstraints:Bool = true):BtSoftBodyPointer;
}

// ------------------------------------------------------
#if js
@:native('Ammo')
extern class Ammo {
	public static function destroy(obj:Dynamic):Void;
	public static function castObject(obj:Dynamic, to:Class<Dynamic>):Dynamic;
}
#end

// ------------------------------------------------------
#if js
typedef BtRigidBodyPointer = BtRigidBody;
typedef BtSoftBodyPointer = BtSoftBody;
typedef BtCollisionShapePointer = BtCollisionShape;
typedef BtConvexHullShapePointer = BtConvexHullShape;
typedef BtCompoundShapePointer = BtCompoundShape;
typedef BtTriangleMeshPointer = BtTriangleMesh;
typedef BtDiscreteDynamicsWorldPointer = BtDiscreteDynamicsWorld;
typedef BtSoftRigidDynamicsWorldPointer = BtSoftRigidDynamicsWorld;
typedef BtCollisionDispatcherPointer = BtCollisionDispatcher;
typedef BtGeneric6DofConstraintPointer = BtGeneric6DofConstraint;
typedef BtRaycastVehiclePointer = BtRaycastVehicle;
typedef BtMotionStatePointer = BtMotionState;
#elseif cpp
typedef BtRigidBodyPointer = cpp.Star<BtRigidBody>;
typedef BtSoftBodyPointer = cpp.Star<BtSoftBody>;
typedef BtCollisionShapePointer = cpp.Star<BtCollisionShape>;
typedef BtConvexHullShapePointer = cpp.Star<BtConvexHullShape>;
typedef BtCompoundShapePointer = cpp.Star<BtCompoundShape>;
typedef BtTriangleMeshPointer = cpp.Star<BtTriangleMesh>;
typedef BtDiscreteDynamicsWorldPointer = cpp.Star<BtDiscreteDynamicsWorld>;
typedef BtSoftRigidDynamicsWorldPointer = cpp.Star<BtSoftRigidDynamicsWorld>;
typedef BtCollisionDispatcherPointer = cpp.Star<BtCollisionDispatcher>;
typedef BtGeneric6DofConstraintPointer = cpp.Star<BtGeneric6DofConstraint>;
typedef BtRaycastVehiclePointer = cpp.Star<BtRaycastVehicle>;
typedef BtMotionStatePointer = cpp.Star<BtMotionState>;
#end
