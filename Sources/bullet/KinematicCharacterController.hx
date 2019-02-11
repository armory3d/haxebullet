package bullet;

#if hl
abstract KinematicCharacterController(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btKinematicCharacterController_new4")
    static function new4(ghostObject:PairCachingGhostObject, convexShape:ConvexShape, stepHeight:Single, ?upAxis:Vector3):KinematicCharacterController return null;
    public inline function new(ghostObject:PairCachingGhostObject, convexShape:ConvexShape, stepHeight:Single, ?upAxis:Vector3):Void this = new4(cast ghostObject, cast convexShape, cast stepHeight, cast upAxis);
    @:hlNative("bullet", "btKinematicCharacterController_setUp1")
    public function setUp(axis:Vector3):Void { }
    @:hlNative("bullet", "btKinematicCharacterController_setWalkDirection1")
    public function setWalkDirection(walkDirection:Vector3):Void { }
    @:hlNative("bullet", "btKinematicCharacterController_setVelocityForTimeInterval2")
    public function setVelocityForTimeInterval(velocity:Vector3, timeInterval:Single):Void { }
    @:hlNative("bullet", "btKinematicCharacterController_warp1")
    public function warp(origin:Vector3):Void { }
    @:hlNative("bullet", "btKinematicCharacterController_preStep1")
    public function preStep(collisionWorld:CollisionWorld):Void { }
    @:hlNative("bullet", "btKinematicCharacterController_playerStep2")
    public function playerStep(collisionWorld:CollisionWorld, dt:Single):Void { }
    @:hlNative("bullet", "btKinematicCharacterController_setFallSpeed1")
    public function setFallSpeed(fallSpeed:Single):Void { }
    @:hlNative("bullet", "btKinematicCharacterController_setJumpSpeed1")
    public function setJumpSpeed(jumpSpeed:Single):Void { }
    @:hlNative("bullet", "btKinematicCharacterController_setMaxJumpHeight1")
    public function setMaxJumpHeight(maxJumpHeight:Single):Void { }
    @:hlNative("bullet", "btKinematicCharacterController_canJump0")
    public function canJump():Bool return false;
    @:hlNative("bullet", "btKinematicCharacterController_jump0")
    public function jump():Void { }
    @:hlNative("bullet", "btKinematicCharacterController_setGravity1")
    public function setGravity(gravity:Vector3):Void { }
    @:hlNative("bullet", "btKinematicCharacterController_getGravity0")
    public function getGravity():Vector3 return null;
    @:hlNative("bullet", "btKinematicCharacterController_setMaxSlope1")
    public function setMaxSlope(slopeRadians:Single):Void { }
    @:hlNative("bullet", "btKinematicCharacterController_getMaxSlope0")
    public function getMaxSlope():Single return 0.;
    @:hlNative("bullet", "btKinematicCharacterController_getGhostObject0")
    public function getGhostObject():PairCachingGhostObject return null;
    @:hlNative("bullet", "btKinematicCharacterController_setUseGhostSweepTest1")
    public function setUseGhostSweepTest(useGhostObjectSweepTest:Bool):Void { }
    @:hlNative("bullet", "btKinematicCharacterController_onGround0")
    public function onGround():Bool return false;
    @:hlNative("bullet", "btKinematicCharacterController_delete")
    public function delete():Void { }
    @:to
    inline function _toActionInterface():ActionInterface return cast this;
    @:hlNative("bullet", "btActionInterface_updateAction2")
    public function updateAction(collisionWorld:CollisionWorld, deltaTimeStep:Single):Void { }
}
#elseif js
abstract KinematicCharacterController(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new4(ghostObject:PairCachingGhostObject, convexShape:ConvexShape, stepHeight:Float, ?upAxis:Vector3):KinematicCharacterController return untyped bullet._eb_btKinematicCharacterController_new4(ghostObject, convexShape, stepHeight, upAxis);
    public inline function new(ghostObject:PairCachingGhostObject, convexShape:ConvexShape, stepHeight:Float, ?upAxis:Vector3):Void this = new4(cast ghostObject, cast convexShape, cast stepHeight, cast upAxis);
    inline public function setUp(axis:Vector3):Void return untyped bullet._eb_btKinematicCharacterController_setUp1(this, axis);
    inline public function setWalkDirection(walkDirection:Vector3):Void return untyped bullet._eb_btKinematicCharacterController_setWalkDirection1(this, walkDirection);
    inline public function setVelocityForTimeInterval(velocity:Vector3, timeInterval:Float):Void return untyped bullet._eb_btKinematicCharacterController_setVelocityForTimeInterval2(this, velocity, timeInterval);
    inline public function warp(origin:Vector3):Void return untyped bullet._eb_btKinematicCharacterController_warp1(this, origin);
    inline public function preStep(collisionWorld:CollisionWorld):Void return untyped bullet._eb_btKinematicCharacterController_preStep1(this, collisionWorld);
    inline public function playerStep(collisionWorld:CollisionWorld, dt:Float):Void return untyped bullet._eb_btKinematicCharacterController_playerStep2(this, collisionWorld, dt);
    inline public function setFallSpeed(fallSpeed:Float):Void return untyped bullet._eb_btKinematicCharacterController_setFallSpeed1(this, fallSpeed);
    inline public function setJumpSpeed(jumpSpeed:Float):Void return untyped bullet._eb_btKinematicCharacterController_setJumpSpeed1(this, jumpSpeed);
    inline public function setMaxJumpHeight(maxJumpHeight:Float):Void return untyped bullet._eb_btKinematicCharacterController_setMaxJumpHeight1(this, maxJumpHeight);
    inline public function canJump():Bool return untyped bullet._eb_btKinematicCharacterController_canJump0(this);
    inline public function jump():Void return untyped bullet._eb_btKinematicCharacterController_jump0(this);
    inline public function setGravity(gravity:Vector3):Void return untyped bullet._eb_btKinematicCharacterController_setGravity1(this, gravity);
    inline public function getGravity():Vector3 return untyped bullet._eb_btKinematicCharacterController_getGravity0(this);
    inline public function setMaxSlope(slopeRadians:Float):Void return untyped bullet._eb_btKinematicCharacterController_setMaxSlope1(this, slopeRadians);
    inline public function getMaxSlope():Float return untyped bullet._eb_btKinematicCharacterController_getMaxSlope0(this);
    inline public function getGhostObject():PairCachingGhostObject return untyped bullet._eb_btKinematicCharacterController_getGhostObject0(this);
    inline public function setUseGhostSweepTest(useGhostObjectSweepTest:Bool):Void return untyped bullet._eb_btKinematicCharacterController_setUseGhostSweepTest1(this, useGhostObjectSweepTest);
    inline public function onGround():Bool return untyped bullet._eb_btKinematicCharacterController_onGround0(this);
    inline public function delete():Void return untyped bullet._eb_btKinematicCharacterController_delete(this);
    @:to
    inline function _toActionInterface():ActionInterface return cast this;
    inline public function updateAction(collisionWorld:CollisionWorld, deltaTimeStep:Float):Void return untyped bullet._eb_btActionInterface_updateAction2(this, collisionWorld, deltaTimeStep);
}
#end
