package bullet;

#if hl
abstract PairCachingGhostObject(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btPairCachingGhostObject_new0")
    static function new0():PairCachingGhostObject return null;
    public inline function new():Void this = new0();
    @:hlNative("bullet", "btPairCachingGhostObject_delete")
    public function delete():Void { }
    @:to
    inline function _toGhostObject():GhostObject return cast this;
    @:hlNative("bullet", "btGhostObject_getNumOverlappingObjects0")
    public function getNumOverlappingObjects():Int return 0;
    @:hlNative("bullet", "btGhostObject_getOverlappingObject1")
    public function getOverlappingObject(index:Int):CollisionObject return null;
    @:to
    inline function _toCollisionObject():CollisionObject return cast this;
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
abstract PairCachingGhostObject(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():PairCachingGhostObject return untyped bullet._eb_btPairCachingGhostObject_new0();
    public inline function new():Void this = new0();
    inline public function delete():Void return untyped bullet._eb_btPairCachingGhostObject_delete(this);
    @:to
    inline function _toGhostObject():GhostObject return cast this;
    inline public function getNumOverlappingObjects():Int return untyped bullet._eb_btGhostObject_getNumOverlappingObjects0(this);
    inline public function getOverlappingObject(index:Int):CollisionObject return untyped bullet._eb_btGhostObject_getOverlappingObject1(this, index);
    @:to
    inline function _toCollisionObject():CollisionObject return cast this;
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
