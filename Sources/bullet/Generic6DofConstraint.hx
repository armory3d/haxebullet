package bullet;

#if hl
abstract Generic6DofConstraint(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btGeneric6DofConstraint_new5")
    static function new5(rbA:RigidBody, rbB:RigidBody, frameInA:Transform, frameInB:Transform, useLinearFrameReferenceFrameA:Bool):Generic6DofConstraint return null;
    @:hlNative("bullet", "btGeneric6DofConstraint_new3")
    static function new3(rbB:RigidBody, frameInB:Transform, useLinearFrameReferenceFrameB:Bool):Generic6DofConstraint return null;
    public inline function new(rbA_rbB:RigidBody, rbB_frameInB:haxe.extern.EitherType<RigidBody, Transform>, frameInA_useLinearFrameReferenceFrameB:haxe.extern.EitherType<Transform, Bool>, ?frameInB:Transform, ?useLinearFrameReferenceFrameA:Bool):Void if (frameInB == null) this = new3(cast rbA_rbB, cast rbB_frameInB, cast frameInA_useLinearFrameReferenceFrameB) else this = new5(cast rbA_rbB, cast rbB_frameInB, cast frameInA_useLinearFrameReferenceFrameB, cast frameInB, cast useLinearFrameReferenceFrameA);
    @:hlNative("bullet", "btGeneric6DofConstraint_setLinearLowerLimit1")
    public function setLinearLowerLimit(linearLower:Vector3):Void { }
    @:hlNative("bullet", "btGeneric6DofConstraint_setLinearUpperLimit1")
    public function setLinearUpperLimit(linearUpper:Vector3):Void { }
    @:hlNative("bullet", "btGeneric6DofConstraint_setAngularLowerLimit1")
    public function setAngularLowerLimit(angularLower:Vector3):Void { }
    @:hlNative("bullet", "btGeneric6DofConstraint_setAngularUpperLimit1")
    public function setAngularUpperLimit(angularUpper:Vector3):Void { }
    @:hlNative("bullet", "btGeneric6DofConstraint_delete")
    public function delete():Void { }
    @:to
    inline function _toTypedConstraint():TypedConstraint return cast this;
    @:hlNative("bullet", "btTypedConstraint_enableFeedback1")
    public function enableFeedback(needsFeedback:Bool):Void { }
    @:hlNative("bullet", "btTypedConstraint_getBreakingImpulseThreshold0")
    public function getBreakingImpulseThreshold():Single return 0.;
    @:hlNative("bullet", "btTypedConstraint_setBreakingImpulseThreshold1")
    public function setBreakingImpulseThreshold(threshold:Single):Void { }
    @:hlNative("bullet", "btTypedConstraint_getParam2")
    public function getParam(num:Int, axis:Int):Single return 0.;
    @:hlNative("bullet", "btTypedConstraint_setParam3")
    public function setParam(num:Int, value:Single, axis:Int):Void { }
}
#elseif js
abstract Generic6DofConstraint(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new5(rbA:RigidBody, rbB:RigidBody, frameInA:Transform, frameInB:Transform, useLinearFrameReferenceFrameA:Bool):Generic6DofConstraint return untyped bullet._eb_btGeneric6DofConstraint_new5(rbA, rbB, frameInA, frameInB, useLinearFrameReferenceFrameA);
    inline static function new3(rbB:RigidBody, frameInB:Transform, useLinearFrameReferenceFrameB:Bool):Generic6DofConstraint return untyped bullet._eb_btGeneric6DofConstraint_new3(rbB, frameInB, useLinearFrameReferenceFrameB);
    public inline function new(rbA_rbB:RigidBody, rbB_frameInB:haxe.extern.EitherType<RigidBody, Transform>, frameInA_useLinearFrameReferenceFrameB:haxe.extern.EitherType<Transform, Bool>, ?frameInB:Transform, ?useLinearFrameReferenceFrameA:Bool):Void if (frameInB == null) this = new3(cast rbA_rbB, cast rbB_frameInB, cast frameInA_useLinearFrameReferenceFrameB) else this = new5(cast rbA_rbB, cast rbB_frameInB, cast frameInA_useLinearFrameReferenceFrameB, cast frameInB, cast useLinearFrameReferenceFrameA);
    inline public function setLinearLowerLimit(linearLower:Vector3):Void return untyped bullet._eb_btGeneric6DofConstraint_setLinearLowerLimit1(this, linearLower);
    inline public function setLinearUpperLimit(linearUpper:Vector3):Void return untyped bullet._eb_btGeneric6DofConstraint_setLinearUpperLimit1(this, linearUpper);
    inline public function setAngularLowerLimit(angularLower:Vector3):Void return untyped bullet._eb_btGeneric6DofConstraint_setAngularLowerLimit1(this, angularLower);
    inline public function setAngularUpperLimit(angularUpper:Vector3):Void return untyped bullet._eb_btGeneric6DofConstraint_setAngularUpperLimit1(this, angularUpper);
    inline public function delete():Void return untyped bullet._eb_btGeneric6DofConstraint_delete(this);
    @:to
    inline function _toTypedConstraint():TypedConstraint return cast this;
    inline public function enableFeedback(needsFeedback:Bool):Void return untyped bullet._eb_btTypedConstraint_enableFeedback1(this, needsFeedback);
    inline public function getBreakingImpulseThreshold():Float return untyped bullet._eb_btTypedConstraint_getBreakingImpulseThreshold0(this);
    inline public function setBreakingImpulseThreshold(threshold:Float):Void return untyped bullet._eb_btTypedConstraint_setBreakingImpulseThreshold1(this, threshold);
    inline public function getParam(num:Int, axis:Int):Float return untyped bullet._eb_btTypedConstraint_getParam2(this, num, axis);
    inline public function setParam(num:Int, value:Float, axis:Int):Void return untyped bullet._eb_btTypedConstraint_setParam3(this, num, value, axis);
}
#end
