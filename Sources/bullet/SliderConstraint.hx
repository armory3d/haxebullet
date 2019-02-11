package bullet;

#if hl
abstract SliderConstraint(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btSliderConstraint_new5")
    static function new5(rbA:RigidBody, rbB:RigidBody, frameInA:Transform, frameInB:Transform, useLinearReferenceFrameA:Bool):SliderConstraint return null;
    @:hlNative("bullet", "btSliderConstraint_new3")
    static function new3(rbB:RigidBody, frameInB:Transform, useLinearReferenceFrameA:Bool):SliderConstraint return null;
    public inline function new(rbA_rbB:RigidBody, rbB_frameInB:haxe.extern.EitherType<RigidBody, Transform>, frameInA_useLinearReferenceFrameA:haxe.extern.EitherType<Transform, Bool>, ?frameInB:Transform, ?useLinearReferenceFrameA:Bool):Void if (frameInB == null) this = new3(cast rbA_rbB, cast rbB_frameInB, cast frameInA_useLinearReferenceFrameA) else this = new5(cast rbA_rbB, cast rbB_frameInB, cast frameInA_useLinearReferenceFrameA, cast frameInB, cast useLinearReferenceFrameA);
    @:hlNative("bullet", "btSliderConstraint_setLowerLinLimit1")
    public function setLowerLinLimit(lowerLimit:Single):Void { }
    @:hlNative("bullet", "btSliderConstraint_setUpperLinLimit1")
    public function setUpperLinLimit(upperLimit:Single):Void { }
    @:hlNative("bullet", "btSliderConstraint_setLowerAngLimit1")
    public function setLowerAngLimit(lowerAngLimit:Single):Void { }
    @:hlNative("bullet", "btSliderConstraint_setUpperAngLimit1")
    public function setUpperAngLimit(upperAngLimit:Single):Void { }
    @:hlNative("bullet", "btSliderConstraint_delete")
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
abstract SliderConstraint(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new5(rbA:RigidBody, rbB:RigidBody, frameInA:Transform, frameInB:Transform, useLinearReferenceFrameA:Bool):SliderConstraint return untyped bullet._eb_btSliderConstraint_new5(rbA, rbB, frameInA, frameInB, useLinearReferenceFrameA);
    inline static function new3(rbB:RigidBody, frameInB:Transform, useLinearReferenceFrameA:Bool):SliderConstraint return untyped bullet._eb_btSliderConstraint_new3(rbB, frameInB, useLinearReferenceFrameA);
    public inline function new(rbA_rbB:RigidBody, rbB_frameInB:haxe.extern.EitherType<RigidBody, Transform>, frameInA_useLinearReferenceFrameA:haxe.extern.EitherType<Transform, Bool>, ?frameInB:Transform, ?useLinearReferenceFrameA:Bool):Void if (frameInB == null) this = new3(cast rbA_rbB, cast rbB_frameInB, cast frameInA_useLinearReferenceFrameA) else this = new5(cast rbA_rbB, cast rbB_frameInB, cast frameInA_useLinearReferenceFrameA, cast frameInB, cast useLinearReferenceFrameA);
    inline public function setLowerLinLimit(lowerLimit:Float):Void return untyped bullet._eb_btSliderConstraint_setLowerLinLimit1(this, lowerLimit);
    inline public function setUpperLinLimit(upperLimit:Float):Void return untyped bullet._eb_btSliderConstraint_setUpperLinLimit1(this, upperLimit);
    inline public function setLowerAngLimit(lowerAngLimit:Float):Void return untyped bullet._eb_btSliderConstraint_setLowerAngLimit1(this, lowerAngLimit);
    inline public function setUpperAngLimit(upperAngLimit:Float):Void return untyped bullet._eb_btSliderConstraint_setUpperAngLimit1(this, upperAngLimit);
    inline public function delete():Void return untyped bullet._eb_btSliderConstraint_delete(this);
    @:to
    inline function _toTypedConstraint():TypedConstraint return cast this;
    inline public function enableFeedback(needsFeedback:Bool):Void return untyped bullet._eb_btTypedConstraint_enableFeedback1(this, needsFeedback);
    inline public function getBreakingImpulseThreshold():Float return untyped bullet._eb_btTypedConstraint_getBreakingImpulseThreshold0(this);
    inline public function setBreakingImpulseThreshold(threshold:Float):Void return untyped bullet._eb_btTypedConstraint_setBreakingImpulseThreshold1(this, threshold);
    inline public function getParam(num:Int, axis:Int):Float return untyped bullet._eb_btTypedConstraint_getParam2(this, num, axis);
    inline public function setParam(num:Int, value:Float, axis:Int):Void return untyped bullet._eb_btTypedConstraint_setParam3(this, num, value, axis);
}
#end
