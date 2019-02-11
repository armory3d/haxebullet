package bullet;

#if hl
abstract TypedConstraint(webidl.Types.Ref) to webidl.Types.Ref {
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
    @:hlNative("bullet", "btTypedConstraint_delete")
    public function delete():Void { }
}
#elseif js
abstract TypedConstraint(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function enableFeedback(needsFeedback:Bool):Void return untyped bullet._eb_btTypedConstraint_enableFeedback1(this, needsFeedback);
    inline public function getBreakingImpulseThreshold():Float return untyped bullet._eb_btTypedConstraint_getBreakingImpulseThreshold0(this);
    inline public function setBreakingImpulseThreshold(threshold:Float):Void return untyped bullet._eb_btTypedConstraint_setBreakingImpulseThreshold1(this, threshold);
    inline public function getParam(num:Int, axis:Int):Float return untyped bullet._eb_btTypedConstraint_getParam2(this, num, axis);
    inline public function setParam(num:Int, value:Float, axis:Int):Void return untyped bullet._eb_btTypedConstraint_setParam3(this, num, value, axis);
    inline public function delete():Void return untyped bullet._eb_btTypedConstraint_delete(this);
}
#end
