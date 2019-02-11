package bullet;

#if hl
abstract Point2PointConstraint(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btPoint2PointConstraint_new4")
    static function new4(rbA:RigidBody, rbB:RigidBody, pivotInA:Vector3, pivotInB:Vector3):Point2PointConstraint return null;
    @:hlNative("bullet", "btPoint2PointConstraint_new2")
    static function new2(rbA:RigidBody, pivotInA:Vector3):Point2PointConstraint return null;
    public inline function new(rbA:RigidBody, rbB_pivotInA:haxe.extern.EitherType<RigidBody, Vector3>, ?pivotInA:Vector3, ?pivotInB:Vector3):Void if (pivotInA == null) this = new2(cast rbA, cast rbB_pivotInA) else this = new4(cast rbA, cast rbB_pivotInA, cast pivotInA, cast pivotInB);
    @:hlNative("bullet", "btPoint2PointConstraint_setPivotA1")
    public function setPivotA(pivotA:Vector3):Void { }
    @:hlNative("bullet", "btPoint2PointConstraint_setPivotB1")
    public function setPivotB(pivotB:Vector3):Void { }
    @:hlNative("bullet", "btPoint2PointConstraint_getPivotInA0")
    public function getPivotInA():Vector3 return null;
    @:hlNative("bullet", "btPoint2PointConstraint_getPivotInB0")
    public function getPivotInB():Vector3 return null;
    public var m_setting(get, set) : ConstraintSetting;
    @:hlNative("bullet", "btPoint2PointConstraint_get_m_setting")
    function get_m_setting():ConstraintSetting return null;
    @:hlNative("bullet", "btPoint2PointConstraint_set_m_setting")
    function set_m_setting(_v:ConstraintSetting):ConstraintSetting return null;
    @:hlNative("bullet", "btPoint2PointConstraint_delete")
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
abstract Point2PointConstraint(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new4(rbA:RigidBody, rbB:RigidBody, pivotInA:Vector3, pivotInB:Vector3):Point2PointConstraint return untyped bullet._eb_btPoint2PointConstraint_new4(rbA, rbB, pivotInA, pivotInB);
    inline static function new2(rbA:RigidBody, pivotInA:Vector3):Point2PointConstraint return untyped bullet._eb_btPoint2PointConstraint_new2(rbA, pivotInA);
    public inline function new(rbA:RigidBody, rbB_pivotInA:haxe.extern.EitherType<RigidBody, Vector3>, ?pivotInA:Vector3, ?pivotInB:Vector3):Void if (pivotInA == null) this = new2(cast rbA, cast rbB_pivotInA) else this = new4(cast rbA, cast rbB_pivotInA, cast pivotInA, cast pivotInB);
    inline public function setPivotA(pivotA:Vector3):Void return untyped bullet._eb_btPoint2PointConstraint_setPivotA1(this, pivotA);
    inline public function setPivotB(pivotB:Vector3):Void return untyped bullet._eb_btPoint2PointConstraint_setPivotB1(this, pivotB);
    inline public function getPivotInA():Vector3 return untyped bullet._eb_btPoint2PointConstraint_getPivotInA0(this);
    inline public function getPivotInB():Vector3 return untyped bullet._eb_btPoint2PointConstraint_getPivotInB0(this);
    public var m_setting(get, set) : ConstraintSetting;
    inline function get_m_setting():ConstraintSetting return untyped bullet._eb_btPoint2PointConstraint_get_m_setting(this);
    inline function set_m_setting(_v:ConstraintSetting):ConstraintSetting return untyped bullet._eb_btPoint2PointConstraint_set_m_setting(this, _v);
    inline public function delete():Void return untyped bullet._eb_btPoint2PointConstraint_delete(this);
    @:to
    inline function _toTypedConstraint():TypedConstraint return cast this;
    inline public function enableFeedback(needsFeedback:Bool):Void return untyped bullet._eb_btTypedConstraint_enableFeedback1(this, needsFeedback);
    inline public function getBreakingImpulseThreshold():Float return untyped bullet._eb_btTypedConstraint_getBreakingImpulseThreshold0(this);
    inline public function setBreakingImpulseThreshold(threshold:Float):Void return untyped bullet._eb_btTypedConstraint_setBreakingImpulseThreshold1(this, threshold);
    inline public function getParam(num:Int, axis:Int):Float return untyped bullet._eb_btTypedConstraint_getParam2(this, num, axis);
    inline public function setParam(num:Int, value:Float, axis:Int):Void return untyped bullet._eb_btTypedConstraint_setParam3(this, num, value, axis);
}
#end
