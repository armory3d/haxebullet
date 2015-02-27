// Haxe Bullet
// Based on haxe-ammo.js https://github.com/floppya/haxe-ammo.js

package haxebullet;

typedef BtScalar = Float;

#if js
@:native('Ammo.btVector3')
#elseif cpp
@:include("Kore/bullet/LinearMath/btVector3.h")
@:native("::btVector3")
@:structAccess
@:unreflective
#end
extern class BtVector3
{
	#if js
	public function new(?x:BtScalar=0, ?y:BtScalar=0, ?z:BtScalar=0);
	#elseif cpp
	@:native("new btVector3")
	public static function create(?x:BtScalar=0, ?y:BtScalar=0, ?z:BtScalar=0):cpp.Pointer<BtVector3>;
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

#if js
@:native('Ammo.btQuaternion')
extern class BtQuaternion
{
	public function new():Void;
	public function setEuler(yaw:BtScalar, pitch:BtScalar, roll:BtScalar):Void;
	public function slerp(q:BtQuaternion, t:BtScalar):BtQuaternion;
}

@:native('Ammo.btActionInterface')
extern class BtActionInterface
{
}

@:native('Ammo.btTransform')
extern class BtTransform
{
	public function new():Void;
	public function setIdentity():Void;
	public function setOrigin(inVec:BtVector3):Void;
	public function getOrigin():BtVector3;
}

@:native('Ammo.btMotionState')
extern class BtMotionState
{
	public function getWorldTransform(centerOfMassWorldTrans:BtTransform):Void;
	public function setWorldTransform(centerOfMassWorldTrans:BtTransform):Void;
}

@:native('Ammo.btDefaultMotionState')
extern class BtDefaultMotionState extends BtMotionState
{
	public function new(?worldTrans:BtTransform, ?centerOfMassOffset:BtTransform):Void;
}

@:native('Ammo.btRigidBodyConstructionInfo')
extern class BtRigidBodyConstructionInfo
{
	public function new(mass:BtScalar, motionState:BtMotionState, collisionShape:BtCollisionShape):Void;
}

@:native('Ammo.btCollisionObject')
extern class BtCollisionObject
{	
}

@:native('Ammo.btRigidBody')
extern class BtRigidBody extends BtCollisionObject
{
	public function new(constructionInfo:BtRigidBodyConstructionInfo):Void;
	public function applyCentralForce(force:BtVector3):Void;
	public function applyCentralImpulse(impulse:BtVector3):Void;
	public function clearForces():Void;
	public function updateInertiaTensor():Void;
	public function getMotionState():BtMotionState;
}

@:native('Ammo.btCollisionConfiguration')
extern class BtCollisionConfiguration
{	
}

@:native('Ammo.btDefaultCollisionConfiguration')
extern class BtDefaultCollisionConfiguration extends BtCollisionConfiguration
{
	public function new():Void;
}

@:native('Ammo.btDispatcher')
extern class BtDispatcher
{
}

@:native('Ammo.btCollisionDispatcher')
extern class BtCollisionDispatcher extends BtDispatcher
{
	public function new(collisionConfiguration:BtCollisionConfiguration):Void;
}

@:native('Ammo.btBroadphaseInterface')
extern class BtBroadphaseInterface
{	
}

@:native('Ammo.btDbvtBroadphase')
extern class BtDbvtBroadphase extends BtBroadphaseInterface
{	
	public function new():Void;
}

@:native('Ammo.btConstraintSolver')
extern class BtConstraintSolver
{	
}

@:native('Ammo.btSequentialImpulseConstraintSolver')
extern class BtSequentialImpulseConstraintSolver extends BtConstraintSolver
{	
	public function new():Void;
}

@:native('Ammo.btCollisionWorld')
extern class BtCollisionWorld
{	
}

@:native('Ammo.btDynamicsWorld')
extern class BtDynamicsWorld extends BtCollisionWorld
{	
	public function new(dispatcher:BtDispatcher, pairCache:BtBroadphaseInterface, constraintSolver:BtConstraintSolver, collisionConfiguration:BtCollisionConfiguration):Void;
	public function addAction(action:BtActionInterface):Void;
	public function removeAction(action:BtActionInterface):Void;
	public function addRigidBody(body:BtRigidBody, ?group:Int=0, ?mask:Int=0):Void;
	public function setGravity(v:BtVector3):Void;
	public function stepSimulation(timeStep:BtScalar, ?maxSubSteps:BtScalar = 1, ?fixedTimeStep:BtScalar = 1.0 / 60.0):Void;

}

@:native('Ammo.btDiscreteDynamicsWorld')
extern class BtDiscreteDynamicsWorld extends BtDynamicsWorld
{	
}

@:native('Ammo.btCollisionShape')
extern class BtCollisionShape
{	
	public function calculateLocalInertia(mass:BtScalar, inertia:BtVector3):Void;
}

@:native('Ammo.btConvexShape')
extern class BtConvexShape extends BtCollisionShape
{	
}

@:native('Ammo.btConvexInternalShape')
extern class BtConvexInternalShape extends BtConvexShape
{	
}

@:native('Ammo.btPolyhedralConvexShape')
extern class BtPolyhedralConvexShape extends BtConvexInternalShape
{
}

@:native('Ammo.btBoxShape')
extern class BtBoxShape extends BtPolyhedralConvexShape
{
	public function new(boxHalfExtents:BtVector3):Void;
}

@:native('Ammo.btSphereShape')
extern class BtSphereShape extends BtConvexInternalShape
{
	public function new(radius:BtScalar):Void;
}

@:native('Ammo')
extern class Ammo 
{
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
#end

//#if cpp
//@:buildXml("
//	<files id='haxe'>
//		<compilerflag value='-I/Users/lubos/Documents/Sublime/test/Sources/haxebullet/cpp/bullet/LinearMath'/>
//		<file name='/Users/lubos/Documents/Sublime/test/Sources/haxebullet/cpp/bullet/LinearMath/btVector3.cpp'/>
//	</files> ")
//@:keep
//class Include {}
//#end
