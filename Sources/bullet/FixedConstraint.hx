package bullet;

#if hl
abstract FixedConstraint(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btFixedConstraint_new4")
    static function new4(rbA:RigidBody, rbB:RigidBody, frameInA:Transform, frameInB:Transform):FixedConstraint return null;
    public inline function new(rbA:RigidBody, rbB:RigidBody, frameInA:Transform, frameInB:Transform):Void this = new4(cast rbA, cast rbB, cast frameInA, cast frameInB);
    @:hlNative("bullet", "btFixedConstraint_delete")
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
abstract FixedConstraint(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new4(rbA:RigidBody, rbB:RigidBody, frameInA:Transform, frameInB:Transform):FixedConstraint return untyped bullet._eb_btFixedConstraint_new4(rbA, rbB, frameInA, frameInB);
    public inline function new(rbA:RigidBody, rbB:RigidBody, frameInA:Transform, frameInB:Transform):Void this = new4(cast rbA, cast rbB, cast frameInA, cast frameInB);
    inline public function delete():Void return untyped bullet._eb_btFixedConstraint_delete(this);
    @:to
    inline function _toTypedConstraint():TypedConstraint return cast this;
    inline public function enableFeedback(needsFeedback:Bool):Void return untyped bullet._eb_btTypedConstraint_enableFeedback1(this, needsFeedback);
    inline public function getBreakingImpulseThreshold():Float return untyped bullet._eb_btTypedConstraint_getBreakingImpulseThreshold0(this);
    inline public function setBreakingImpulseThreshold(threshold:Float):Void return untyped bullet._eb_btTypedConstraint_setBreakingImpulseThreshold1(this, threshold);
    inline public function getParam(num:Int, axis:Int):Float return untyped bullet._eb_btTypedConstraint_getParam2(this, num, axis);
    inline public function setParam(num:Int, value:Float, axis:Int):Void return untyped bullet._eb_btTypedConstraint_setParam3(this, num, value, axis);
}
#end
