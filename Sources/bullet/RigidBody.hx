package bullet;

#if hl
abstract RigidBody(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btRigidBody_new1")
    static function new1(constructionInfo:RigidBodyConstructionInfo):RigidBody return null;
    public inline function new(constructionInfo:RigidBodyConstructionInfo):Void this = new1(cast constructionInfo);
    @:hlNative("bullet", "btRigidBody_getCenterOfMassTransform0")
    public function getCenterOfMassTransform():Transform return null;
    @:hlNative("bullet", "btRigidBody_setCenterOfMassTransform1")
    public function setCenterOfMassTransform(xform:Transform):Void { }
    @:hlNative("bullet", "btRigidBody_setSleepingThresholds2")
    public function setSleepingThresholds(linear:Single, angular:Single):Void { }
    @:hlNative("bullet", "btRigidBody_setDamping2")
    public function setDamping(lin_damping:Single, ang_damping:Single):Void { }
    @:hlNative("bullet", "btRigidBody_setMassProps2")
    public function setMassProps(mass:Single, inertia:Vector3):Void { }
    @:hlNative("bullet", "btRigidBody_setLinearFactor1")
    public function setLinearFactor(linearFactor:Vector3):Void { }
    @:hlNative("bullet", "btRigidBody_applyTorque1")
    public function applyTorque(torque:Vector3):Void { }
    @:hlNative("bullet", "btRigidBody_applyForce2")
    public function applyForce(force:Vector3, rel_pos:Vector3):Void { }
    @:hlNative("bullet", "btRigidBody_applyCentralForce1")
    public function applyCentralForce(force:Vector3):Void { }
    @:hlNative("bullet", "btRigidBody_applyTorqueImpulse1")
    public function applyTorqueImpulse(torque:Vector3):Void { }
    @:hlNative("bullet", "btRigidBody_applyImpulse2")
    public function applyImpulse(impulse:Vector3, rel_pos:Vector3):Void { }
    @:hlNative("bullet", "btRigidBody_applyCentralImpulse1")
    public function applyCentralImpulse(impulse:Vector3):Void { }
    @:hlNative("bullet", "btRigidBody_updateInertiaTensor0")
    public function updateInertiaTensor():Void { }
    @:hlNative("bullet", "btRigidBody_getLinearVelocity0")
    public function getLinearVelocity():Vector3 return null;
    @:hlNative("bullet", "btRigidBody_getAngularVelocity0")
    public function getAngularVelocity():Vector3 return null;
    @:hlNative("bullet", "btRigidBody_setLinearVelocity1")
    public function setLinearVelocity(lin_vel:Vector3):Void { }
    @:hlNative("bullet", "btRigidBody_setAngularVelocity1")
    public function setAngularVelocity(ang_vel:Vector3):Void { }
    @:hlNative("bullet", "btRigidBody_getMotionState0")
    public function getMotionState():MotionState return null;
    @:hlNative("bullet", "btRigidBody_setMotionState1")
    public function setMotionState(motionState:MotionState):Void { }
    @:hlNative("bullet", "btRigidBody_setAngularFactor1")
    public function setAngularFactor(angularFactor:Vector3):Void { }
    @:hlNative("bullet", "btRigidBody_upcast1")
    public function upcast(colObj:CollisionObject):RigidBody return null;
    @:hlNative("bullet", "btRigidBody_getAabb2")
    public function getAabb(aabbMin:Vector3, aabbMax:Vector3):Void { }
    @:hlNative("bullet", "btRigidBody_getGravity0")
    public function getGravity():Vector3 return null;
    @:hlNative("bullet", "btRigidBody_setGravity1")
    public function setGravity(acceleration:Vector3):Void { }
    @:hlNative("bullet", "btRigidBody_delete")
    public function delete():Void { }
    @:to
    inline function _toCollisionObject():CollisionObject return cast this;
    public static inline var ACTIVE_TAG : Int = 1;
    public static inline var ISLAND_SLEEPING : Int = 2;
    public static inline var WANTS_DEACTIVATION : Int = 3;
    public static inline var DISABLE_DEACTIVATION : Int = 4;
    public static inline var DISABLE_SIMULATION : Int = 5;
    @:hlNative("bullet", "btCollisionObject_setAnisotropicFriction2")
    public function setAnisotropicFriction(anisotropicFriction:Vector3, frictionMode:Int):Void { }
    @:hlNative("bullet", "btCollisionObject_getCollisionShape0")
    public function getCollisionShape():CollisionShape return null;
    @:hlNative("bullet", "btCollisionObject_setContactProcessingThreshold1")
    public function setContactProcessingThreshold(contactProcessingThreshold:Single):Void { }
    @:hlNative("bullet", "btCollisionObject_setActivationState1")
    public function setActivationState(newState:Int):Void { }
    @:hlNative("bullet", "btCollisionObject_forceActivationState1")
    public function forceActivationState(newState:Int):Void { }
    @:hlNative("bullet", "btCollisionObject_activate1")
    public function activate(?forceActivation:Bool):Void { }
    @:hlNative("bullet", "btCollisionObject_isActive0")
    public function isActive():Bool return false;
    @:hlNative("bullet", "btCollisionObject_isKinematicObject0")
    public function isKinematicObject():Bool return false;
    @:hlNative("bullet", "btCollisionObject_isStaticObject0")
    public function isStaticObject():Bool return false;
    @:hlNative("bullet", "btCollisionObject_isStaticOrKinematicObject0")
    public function isStaticOrKinematicObject():Bool return false;
    @:hlNative("bullet", "btCollisionObject_setRestitution1")
    public function setRestitution(rest:Single):Void { }
    @:hlNative("bullet", "btCollisionObject_setFriction1")
    public function setFriction(frict:Single):Void { }
    @:hlNative("bullet", "btCollisionObject_setRollingFriction1")
    public function setRollingFriction(frict:Single):Void { }
    @:hlNative("bullet", "btCollisionObject_getWorldTransform0")
    public function getWorldTransform():Transform return null;
    @:hlNative("bullet", "btCollisionObject_getCollisionFlags0")
    public function getCollisionFlags():Int return 0;
    @:hlNative("bullet", "btCollisionObject_setCollisionFlags1")
    public function setCollisionFlags(flags:Int):Void { }
    @:hlNative("bullet", "btCollisionObject_setWorldTransform1")
    public function setWorldTransform(worldTrans:Transform):Void { }
    @:hlNative("bullet", "btCollisionObject_setCollisionShape1")
    public function setCollisionShape(collisionShape:CollisionShape):Void { }
    @:hlNative("bullet", "btCollisionObject_setCcdMotionThreshold1")
    public function setCcdMotionThreshold(ccdMotionThreshold:Single):Void { }
    @:hlNative("bullet", "btCollisionObject_setCcdSweptSphereRadius1")
    public function setCcdSweptSphereRadius(radius:Single):Void { }
    @:hlNative("bullet", "btCollisionObject_getUserIndex0")
    public function getUserIndex():Int return 0;
    @:hlNative("bullet", "btCollisionObject_setUserIndex1")
    public function setUserIndex(index:Int):Void { }
    @:hlNative("bullet", "btCollisionObject_getUserPointer0")
    public function getUserPointer():webidl.Types.VoidPtr return null;
    @:hlNative("bullet", "btCollisionObject_setUserPointer1")
    public function setUserPointer(userPointer:webidl.Types.VoidPtr):Void { }
}
#elseif js
abstract RigidBody(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new1(constructionInfo:RigidBodyConstructionInfo):RigidBody return untyped bullet._eb_btRigidBody_new1(constructionInfo);
    public inline function new(constructionInfo:RigidBodyConstructionInfo):Void this = new1(cast constructionInfo);
    inline public function getCenterOfMassTransform():Transform return untyped bullet._eb_btRigidBody_getCenterOfMassTransform0(this);
    inline public function setCenterOfMassTransform(xform:Transform):Void return untyped bullet._eb_btRigidBody_setCenterOfMassTransform1(this, xform);
    inline public function setSleepingThresholds(linear:Float, angular:Float):Void return untyped bullet._eb_btRigidBody_setSleepingThresholds2(this, linear, angular);
    inline public function setDamping(lin_damping:Float, ang_damping:Float):Void return untyped bullet._eb_btRigidBody_setDamping2(this, lin_damping, ang_damping);
    inline public function setMassProps(mass:Float, inertia:Vector3):Void return untyped bullet._eb_btRigidBody_setMassProps2(this, mass, inertia);
    inline public function setLinearFactor(linearFactor:Vector3):Void return untyped bullet._eb_btRigidBody_setLinearFactor1(this, linearFactor);
    inline public function applyTorque(torque:Vector3):Void return untyped bullet._eb_btRigidBody_applyTorque1(this, torque);
    inline public function applyForce(force:Vector3, rel_pos:Vector3):Void return untyped bullet._eb_btRigidBody_applyForce2(this, force, rel_pos);
    inline public function applyCentralForce(force:Vector3):Void return untyped bullet._eb_btRigidBody_applyCentralForce1(this, force);
    inline public function applyTorqueImpulse(torque:Vector3):Void return untyped bullet._eb_btRigidBody_applyTorqueImpulse1(this, torque);
    inline public function applyImpulse(impulse:Vector3, rel_pos:Vector3):Void return untyped bullet._eb_btRigidBody_applyImpulse2(this, impulse, rel_pos);
    inline public function applyCentralImpulse(impulse:Vector3):Void return untyped bullet._eb_btRigidBody_applyCentralImpulse1(this, impulse);
    inline public function updateInertiaTensor():Void return untyped bullet._eb_btRigidBody_updateInertiaTensor0(this);
    inline public function getLinearVelocity():Vector3 return untyped bullet._eb_btRigidBody_getLinearVelocity0(this);
    inline public function getAngularVelocity():Vector3 return untyped bullet._eb_btRigidBody_getAngularVelocity0(this);
    inline public function setLinearVelocity(lin_vel:Vector3):Void return untyped bullet._eb_btRigidBody_setLinearVelocity1(this, lin_vel);
    inline public function setAngularVelocity(ang_vel:Vector3):Void return untyped bullet._eb_btRigidBody_setAngularVelocity1(this, ang_vel);
    inline public function getMotionState():MotionState return untyped bullet._eb_btRigidBody_getMotionState0(this);
    inline public function setMotionState(motionState:MotionState):Void return untyped bullet._eb_btRigidBody_setMotionState1(this, motionState);
    inline public function setAngularFactor(angularFactor:Vector3):Void return untyped bullet._eb_btRigidBody_setAngularFactor1(this, angularFactor);
    inline public function upcast(colObj:CollisionObject):RigidBody return untyped bullet._eb_btRigidBody_upcast1(this, colObj);
    inline public function getAabb(aabbMin:Vector3, aabbMax:Vector3):Void return untyped bullet._eb_btRigidBody_getAabb2(this, aabbMin, aabbMax);
    inline public function getGravity():Vector3 return untyped bullet._eb_btRigidBody_getGravity0(this);
    inline public function setGravity(acceleration:Vector3):Void return untyped bullet._eb_btRigidBody_setGravity1(this, acceleration);
    inline public function delete():Void return untyped bullet._eb_btRigidBody_delete(this);
    @:to
    inline function _toCollisionObject():CollisionObject return cast this;
    public static inline var ACTIVE_TAG : Int = 1;
    public static inline var ISLAND_SLEEPING : Int = 2;
    public static inline var WANTS_DEACTIVATION : Int = 3;
    public static inline var DISABLE_DEACTIVATION : Int = 4;
    public static inline var DISABLE_SIMULATION : Int = 5;
    inline public function setAnisotropicFriction(anisotropicFriction:Vector3, frictionMode:Int):Void return untyped bullet._eb_btCollisionObject_setAnisotropicFriction2(this, anisotropicFriction, frictionMode);
    inline public function getCollisionShape():CollisionShape return untyped bullet._eb_btCollisionObject_getCollisionShape0(this);
    inline public function setContactProcessingThreshold(contactProcessingThreshold:Float):Void return untyped bullet._eb_btCollisionObject_setContactProcessingThreshold1(this, contactProcessingThreshold);
    inline public function setActivationState(newState:Int):Void return untyped bullet._eb_btCollisionObject_setActivationState1(this, newState);
    inline public function forceActivationState(newState:Int):Void return untyped bullet._eb_btCollisionObject_forceActivationState1(this, newState);
    inline public function activate(?forceActivation:Bool):Void return untyped bullet._eb_btCollisionObject_activate1(this, forceActivation);
    inline public function isActive():Bool return untyped bullet._eb_btCollisionObject_isActive0(this);
    inline public function isKinematicObject():Bool return untyped bullet._eb_btCollisionObject_isKinematicObject0(this);
    inline public function isStaticObject():Bool return untyped bullet._eb_btCollisionObject_isStaticObject0(this);
    inline public function isStaticOrKinematicObject():Bool return untyped bullet._eb_btCollisionObject_isStaticOrKinematicObject0(this);
    inline public function setRestitution(rest:Float):Void return untyped bullet._eb_btCollisionObject_setRestitution1(this, rest);
    inline public function setFriction(frict:Float):Void return untyped bullet._eb_btCollisionObject_setFriction1(this, frict);
    inline public function setRollingFriction(frict:Float):Void return untyped bullet._eb_btCollisionObject_setRollingFriction1(this, frict);
    inline public function getWorldTransform():Transform return untyped bullet._eb_btCollisionObject_getWorldTransform0(this);
    inline public function getCollisionFlags():Int return untyped bullet._eb_btCollisionObject_getCollisionFlags0(this);
    inline public function setCollisionFlags(flags:Int):Void return untyped bullet._eb_btCollisionObject_setCollisionFlags1(this, flags);
    inline public function setWorldTransform(worldTrans:Transform):Void return untyped bullet._eb_btCollisionObject_setWorldTransform1(this, worldTrans);
    inline public function setCollisionShape(collisionShape:CollisionShape):Void return untyped bullet._eb_btCollisionObject_setCollisionShape1(this, collisionShape);
    inline public function setCcdMotionThreshold(ccdMotionThreshold:Float):Void return untyped bullet._eb_btCollisionObject_setCcdMotionThreshold1(this, ccdMotionThreshold);
    inline public function setCcdSweptSphereRadius(radius:Float):Void return untyped bullet._eb_btCollisionObject_setCcdSweptSphereRadius1(this, radius);
    inline public function getUserIndex():Int return untyped bullet._eb_btCollisionObject_getUserIndex0(this);
    inline public function setUserIndex(index:Int):Void return untyped bullet._eb_btCollisionObject_setUserIndex1(this, index);
    inline public function getUserPointer():webidl.Types.VoidPtr return untyped bullet._eb_btCollisionObject_getUserPointer0(this);
    inline public function setUserPointer(userPointer:webidl.Types.VoidPtr):Void return untyped bullet._eb_btCollisionObject_setUserPointer1(this, userPointer);
}
#end
