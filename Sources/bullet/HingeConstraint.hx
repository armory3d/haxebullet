package bullet;

#if hl
abstract HingeConstraint(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btHingeConstraint_new7")
    static function new7(rbA:RigidBody, rbB:RigidBody, pivotInA:Vector3, pivotInB:Vector3, axisInA:Vector3, axisInB:Vector3, ?useReferenceFrameA:Bool):HingeConstraint return null;
    @:hlNative("bullet", "btHingeConstraint_new4")
    static function new4(rbA:RigidBody, pivotInA:Vector3, axisInA:Vector3, ?useReferenceFrameA:Bool):HingeConstraint return null;
    @:hlNative("bullet", "btHingeConstraint_new5")
    static function new5(rbA:RigidBody, rbB:RigidBody, rbAFrame:Transform, rbBFrame:Transform, ?useReferenceFrameA:Bool):HingeConstraint return null;
    @:hlNative("bullet", "btHingeConstraint_new3")
    static function new3(rbA:RigidBody, rbAFrame:Transform, ?useReferenceFrameA:Bool):HingeConstraint return null;
    public inline function new(rbA:RigidBody, rbB_pivotInA_rbAFrame:haxe.extern.EitherType<haxe.extern.EitherType<RigidBody, Vector3>, Transform>, ?pivotInA_axisInA_rbAFrame_useReferenceFrameA:haxe.extern.EitherType<haxe.extern.EitherType<Vector3, Transform>, Bool>, ?pivotInB_useReferenceFrameA_rbBFrame:haxe.extern.EitherType<haxe.extern.EitherType<Vector3, Bool>, Transform>, ?axisInA_useReferenceFrameA:haxe.extern.EitherType<Vector3, Bool>, ?axisInB:Vector3, ?useReferenceFrameA:Bool):Void if (pivotInB_useReferenceFrameA_rbBFrame == null) this = new3(cast rbA, cast rbB_pivotInA_rbAFrame, cast pivotInA_axisInA_rbAFrame_useReferenceFrameA) else if (axisInA_useReferenceFrameA == null) this = new4(cast rbA, cast rbB_pivotInA_rbAFrame, cast pivotInA_axisInA_rbAFrame_useReferenceFrameA, cast pivotInB_useReferenceFrameA_rbBFrame) else if (axisInB == null) this = new5(cast rbA, cast rbB_pivotInA_rbAFrame, cast pivotInA_axisInA_rbAFrame_useReferenceFrameA, cast pivotInB_useReferenceFrameA_rbBFrame, cast axisInA_useReferenceFrameA) else this = new7(cast rbA, cast rbB_pivotInA_rbAFrame, cast pivotInA_axisInA_rbAFrame_useReferenceFrameA, cast pivotInB_useReferenceFrameA_rbBFrame, cast axisInA_useReferenceFrameA, cast axisInB, cast useReferenceFrameA);
    @:hlNative("bullet", "btHingeConstraint_setLimit5")
    public function setLimit(low:Single, high:Single, softness:Single, biasFactor:Single, ?relaxationFactor:Single):Void { }
    @:hlNative("bullet", "btHingeConstraint_enableAngularMotor3")
    public function enableAngularMotor(enableMotor:Bool, targetVelocity:Single, maxMotorImpulse:Single):Void { }
    @:hlNative("bullet", "btHingeConstraint_setAngularOnly1")
    public function setAngularOnly(angularOnly:Bool):Void { }
    @:hlNative("bullet", "btHingeConstraint_enableMotor1")
    public function enableMotor(enableMotor:Bool):Void { }
    @:hlNative("bullet", "btHingeConstraint_setMaxMotorImpulse1")
    public function setMaxMotorImpulse(maxMotorImpulse:Single):Void { }
    @:hlNative("bullet", "btHingeConstraint_setMotorTarget2")
    public function setMotorTarget(qAinB:Quaternion, dt:Single):Void { }
    @:hlNative("bullet", "btHingeConstraint_delete")
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
abstract HingeConstraint(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new7(rbA:RigidBody, rbB:RigidBody, pivotInA:Vector3, pivotInB:Vector3, axisInA:Vector3, axisInB:Vector3, ?useReferenceFrameA:Bool):HingeConstraint return untyped bullet._eb_btHingeConstraint_new7(rbA, rbB, pivotInA, pivotInB, axisInA, axisInB, useReferenceFrameA);
    inline static function new4(rbA:RigidBody, pivotInA:Vector3, axisInA:Vector3, ?useReferenceFrameA:Bool):HingeConstraint return untyped bullet._eb_btHingeConstraint_new4(rbA, pivotInA, axisInA, useReferenceFrameA);
    inline static function new5(rbA:RigidBody, rbB:RigidBody, rbAFrame:Transform, rbBFrame:Transform, ?useReferenceFrameA:Bool):HingeConstraint return untyped bullet._eb_btHingeConstraint_new5(rbA, rbB, rbAFrame, rbBFrame, useReferenceFrameA);
    inline static function new3(rbA:RigidBody, rbAFrame:Transform, ?useReferenceFrameA:Bool):HingeConstraint return untyped bullet._eb_btHingeConstraint_new3(rbA, rbAFrame, useReferenceFrameA);
    public inline function new(rbA:RigidBody, rbB_pivotInA_rbAFrame:haxe.extern.EitherType<haxe.extern.EitherType<RigidBody, Vector3>, Transform>, ?pivotInA_axisInA_rbAFrame_useReferenceFrameA:haxe.extern.EitherType<haxe.extern.EitherType<Vector3, Transform>, Bool>, ?pivotInB_useReferenceFrameA_rbBFrame:haxe.extern.EitherType<haxe.extern.EitherType<Vector3, Bool>, Transform>, ?axisInA_useReferenceFrameA:haxe.extern.EitherType<Vector3, Bool>, ?axisInB:Vector3, ?useReferenceFrameA:Bool):Void if (pivotInB_useReferenceFrameA_rbBFrame == null) this = new3(cast rbA, cast rbB_pivotInA_rbAFrame, cast pivotInA_axisInA_rbAFrame_useReferenceFrameA) else if (axisInA_useReferenceFrameA == null) this = new4(cast rbA, cast rbB_pivotInA_rbAFrame, cast pivotInA_axisInA_rbAFrame_useReferenceFrameA, cast pivotInB_useReferenceFrameA_rbBFrame) else if (axisInB == null) this = new5(cast rbA, cast rbB_pivotInA_rbAFrame, cast pivotInA_axisInA_rbAFrame_useReferenceFrameA, cast pivotInB_useReferenceFrameA_rbBFrame, cast axisInA_useReferenceFrameA) else this = new7(cast rbA, cast rbB_pivotInA_rbAFrame, cast pivotInA_axisInA_rbAFrame_useReferenceFrameA, cast pivotInB_useReferenceFrameA_rbBFrame, cast axisInA_useReferenceFrameA, cast axisInB, cast useReferenceFrameA);
    inline public function setLimit(low:Float, high:Float, softness:Float, biasFactor:Float, ?relaxationFactor:Float):Void return untyped bullet._eb_btHingeConstraint_setLimit5(this, low, high, softness, biasFactor, relaxationFactor);
    inline public function enableAngularMotor(enableMotor:Bool, targetVelocity:Float, maxMotorImpulse:Float):Void return untyped bullet._eb_btHingeConstraint_enableAngularMotor3(this, enableMotor, targetVelocity, maxMotorImpulse);
    inline public function setAngularOnly(angularOnly:Bool):Void return untyped bullet._eb_btHingeConstraint_setAngularOnly1(this, angularOnly);
    inline public function enableMotor(enableMotor:Bool):Void return untyped bullet._eb_btHingeConstraint_enableMotor1(this, enableMotor);
    inline public function setMaxMotorImpulse(maxMotorImpulse:Float):Void return untyped bullet._eb_btHingeConstraint_setMaxMotorImpulse1(this, maxMotorImpulse);
    inline public function setMotorTarget(qAinB:Quaternion, dt:Float):Void return untyped bullet._eb_btHingeConstraint_setMotorTarget2(this, qAinB, dt);
    inline public function delete():Void return untyped bullet._eb_btHingeConstraint_delete(this);
    @:to
    inline function _toTypedConstraint():TypedConstraint return cast this;
    inline public function enableFeedback(needsFeedback:Bool):Void return untyped bullet._eb_btTypedConstraint_enableFeedback1(this, needsFeedback);
    inline public function getBreakingImpulseThreshold():Float return untyped bullet._eb_btTypedConstraint_getBreakingImpulseThreshold0(this);
    inline public function setBreakingImpulseThreshold(threshold:Float):Void return untyped bullet._eb_btTypedConstraint_setBreakingImpulseThreshold1(this, threshold);
    inline public function getParam(num:Int, axis:Int):Float return untyped bullet._eb_btTypedConstraint_getParam2(this, num, axis);
    inline public function setParam(num:Int, value:Float, axis:Int):Void return untyped bullet._eb_btTypedConstraint_setParam3(this, num, value, axis);
}
#end
