package bullet;

#if hl
abstract ConeTwistConstraint(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btConeTwistConstraint_new4")
    static function new4(rbA:RigidBody, rbB:RigidBody, rbAFrame:Transform, rbBFrame:Transform):ConeTwistConstraint return null;
    @:hlNative("bullet", "btConeTwistConstraint_new2")
    static function new2(rbA:RigidBody, rbAFrame:Transform):ConeTwistConstraint return null;
    public inline function new(rbA:RigidBody, rbB_rbAFrame:haxe.extern.EitherType<RigidBody, Transform>, ?rbAFrame:Transform, ?rbBFrame:Transform):Void if (rbAFrame == null) this = new2(cast rbA, cast rbB_rbAFrame) else this = new4(cast rbA, cast rbB_rbAFrame, cast rbAFrame, cast rbBFrame);
    @:hlNative("bullet", "btConeTwistConstraint_setLimit2")
    public function setLimit(limitIndex:Int, limitValue:Single):Void { }
    @:hlNative("bullet", "btConeTwistConstraint_setAngularOnly1")
    public function setAngularOnly(angularOnly:Bool):Void { }
    @:hlNative("bullet", "btConeTwistConstraint_setDamping1")
    public function setDamping(damping:Single):Void { }
    @:hlNative("bullet", "btConeTwistConstraint_enableMotor1")
    public function enableMotor(b:Bool):Void { }
    @:hlNative("bullet", "btConeTwistConstraint_setMaxMotorImpulse1")
    public function setMaxMotorImpulse(maxMotorImpulse:Single):Void { }
    @:hlNative("bullet", "btConeTwistConstraint_setMaxMotorImpulseNormalized1")
    public function setMaxMotorImpulseNormalized(maxMotorImpulse:Single):Void { }
    @:hlNative("bullet", "btConeTwistConstraint_setMotorTarget1")
    public function setMotorTarget(q:Quaternion):Void { }
    @:hlNative("bullet", "btConeTwistConstraint_setMotorTargetInConstraintSpace1")
    public function setMotorTargetInConstraintSpace(q:Quaternion):Void { }
    @:hlNative("bullet", "btConeTwistConstraint_delete")
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
abstract ConeTwistConstraint(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new4(rbA:RigidBody, rbB:RigidBody, rbAFrame:Transform, rbBFrame:Transform):ConeTwistConstraint return untyped bullet._eb_btConeTwistConstraint_new4(rbA, rbB, rbAFrame, rbBFrame);
    inline static function new2(rbA:RigidBody, rbAFrame:Transform):ConeTwistConstraint return untyped bullet._eb_btConeTwistConstraint_new2(rbA, rbAFrame);
    public inline function new(rbA:RigidBody, rbB_rbAFrame:haxe.extern.EitherType<RigidBody, Transform>, ?rbAFrame:Transform, ?rbBFrame:Transform):Void if (rbAFrame == null) this = new2(cast rbA, cast rbB_rbAFrame) else this = new4(cast rbA, cast rbB_rbAFrame, cast rbAFrame, cast rbBFrame);
    inline public function setLimit(limitIndex:Int, limitValue:Float):Void return untyped bullet._eb_btConeTwistConstraint_setLimit2(this, limitIndex, limitValue);
    inline public function setAngularOnly(angularOnly:Bool):Void return untyped bullet._eb_btConeTwistConstraint_setAngularOnly1(this, angularOnly);
    inline public function setDamping(damping:Float):Void return untyped bullet._eb_btConeTwistConstraint_setDamping1(this, damping);
    inline public function enableMotor(b:Bool):Void return untyped bullet._eb_btConeTwistConstraint_enableMotor1(this, b);
    inline public function setMaxMotorImpulse(maxMotorImpulse:Float):Void return untyped bullet._eb_btConeTwistConstraint_setMaxMotorImpulse1(this, maxMotorImpulse);
    inline public function setMaxMotorImpulseNormalized(maxMotorImpulse:Float):Void return untyped bullet._eb_btConeTwistConstraint_setMaxMotorImpulseNormalized1(this, maxMotorImpulse);
    inline public function setMotorTarget(q:Quaternion):Void return untyped bullet._eb_btConeTwistConstraint_setMotorTarget1(this, q);
    inline public function setMotorTargetInConstraintSpace(q:Quaternion):Void return untyped bullet._eb_btConeTwistConstraint_setMotorTargetInConstraintSpace1(this, q);
    inline public function delete():Void return untyped bullet._eb_btConeTwistConstraint_delete(this);
    @:to
    inline function _toTypedConstraint():TypedConstraint return cast this;
    inline public function enableFeedback(needsFeedback:Bool):Void return untyped bullet._eb_btTypedConstraint_enableFeedback1(this, needsFeedback);
    inline public function getBreakingImpulseThreshold():Float return untyped bullet._eb_btTypedConstraint_getBreakingImpulseThreshold0(this);
    inline public function setBreakingImpulseThreshold(threshold:Float):Void return untyped bullet._eb_btTypedConstraint_setBreakingImpulseThreshold1(this, threshold);
    inline public function getParam(num:Int, axis:Int):Float return untyped bullet._eb_btTypedConstraint_getParam2(this, num, axis);
    inline public function setParam(num:Int, value:Float, axis:Int):Void return untyped bullet._eb_btTypedConstraint_setParam3(this, num, value, axis);
}
#end
