package bullet;

#if hl
abstract RigidBodyConstructionInfo(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btRigidBodyConstructionInfo_new4")
    static function new4(mass:Single, motionState:MotionState, collisionShape:CollisionShape, ?localInertia:Vector3):RigidBodyConstructionInfo return null;
    public inline function new(mass:Single, motionState:MotionState, collisionShape:CollisionShape, ?localInertia:Vector3):Void this = new4(cast mass, cast motionState, cast collisionShape, cast localInertia);
    public var m_linearDamping(get, set) : Single;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_get_m_linearDamping")
    function get_m_linearDamping():Single return 0.;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_set_m_linearDamping")
    function set_m_linearDamping(_v:Single):Single return 0.;
    public var m_angularDamping(get, set) : Single;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_get_m_angularDamping")
    function get_m_angularDamping():Single return 0.;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_set_m_angularDamping")
    function set_m_angularDamping(_v:Single):Single return 0.;
    public var m_friction(get, set) : Single;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_get_m_friction")
    function get_m_friction():Single return 0.;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_set_m_friction")
    function set_m_friction(_v:Single):Single return 0.;
    public var m_rollingFriction(get, set) : Single;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_get_m_rollingFriction")
    function get_m_rollingFriction():Single return 0.;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_set_m_rollingFriction")
    function set_m_rollingFriction(_v:Single):Single return 0.;
    public var m_restitution(get, set) : Single;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_get_m_restitution")
    function get_m_restitution():Single return 0.;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_set_m_restitution")
    function set_m_restitution(_v:Single):Single return 0.;
    public var m_linearSleepingThreshold(get, set) : Single;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_get_m_linearSleepingThreshold")
    function get_m_linearSleepingThreshold():Single return 0.;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_set_m_linearSleepingThreshold")
    function set_m_linearSleepingThreshold(_v:Single):Single return 0.;
    public var m_angularSleepingThreshold(get, set) : Single;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_get_m_angularSleepingThreshold")
    function get_m_angularSleepingThreshold():Single return 0.;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_set_m_angularSleepingThreshold")
    function set_m_angularSleepingThreshold(_v:Single):Single return 0.;
    public var m_additionalDamping(get, set) : Bool;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_get_m_additionalDamping")
    function get_m_additionalDamping():Bool return false;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_set_m_additionalDamping")
    function set_m_additionalDamping(_v:Bool):Bool return false;
    public var m_additionalDampingFactor(get, set) : Single;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_get_m_additionalDampingFactor")
    function get_m_additionalDampingFactor():Single return 0.;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_set_m_additionalDampingFactor")
    function set_m_additionalDampingFactor(_v:Single):Single return 0.;
    public var m_additionalLinearDampingThresholdSqr(get, set) : Single;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_get_m_additionalLinearDampingThresholdSqr")
    function get_m_additionalLinearDampingThresholdSqr():Single return 0.;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_set_m_additionalLinearDampingThresholdSqr")
    function set_m_additionalLinearDampingThresholdSqr(_v:Single):Single return 0.;
    public var m_additionalAngularDampingThresholdSqr(get, set) : Single;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_get_m_additionalAngularDampingThresholdSqr")
    function get_m_additionalAngularDampingThresholdSqr():Single return 0.;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_set_m_additionalAngularDampingThresholdSqr")
    function set_m_additionalAngularDampingThresholdSqr(_v:Single):Single return 0.;
    public var m_additionalAngularDampingFactor(get, set) : Single;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_get_m_additionalAngularDampingFactor")
    function get_m_additionalAngularDampingFactor():Single return 0.;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_set_m_additionalAngularDampingFactor")
    function set_m_additionalAngularDampingFactor(_v:Single):Single return 0.;
    @:hlNative("bullet", "btRigidBodyConstructionInfo_delete")
    public function delete():Void { }
}
#elseif js
abstract RigidBodyConstructionInfo(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new4(mass:Float, motionState:MotionState, collisionShape:CollisionShape, ?localInertia:Vector3):RigidBodyConstructionInfo return untyped bullet._eb_btRigidBodyConstructionInfo_new4(mass, motionState, collisionShape, localInertia);
    public inline function new(mass:Float, motionState:MotionState, collisionShape:CollisionShape, ?localInertia:Vector3):Void this = new4(cast mass, cast motionState, cast collisionShape, cast localInertia);
    public var m_linearDamping(get, set) : Float;
    inline function get_m_linearDamping():Float return untyped bullet._eb_btRigidBodyConstructionInfo_get_m_linearDamping(this);
    inline function set_m_linearDamping(_v:Float):Float return untyped bullet._eb_btRigidBodyConstructionInfo_set_m_linearDamping(this, _v);
    public var m_angularDamping(get, set) : Float;
    inline function get_m_angularDamping():Float return untyped bullet._eb_btRigidBodyConstructionInfo_get_m_angularDamping(this);
    inline function set_m_angularDamping(_v:Float):Float return untyped bullet._eb_btRigidBodyConstructionInfo_set_m_angularDamping(this, _v);
    public var m_friction(get, set) : Float;
    inline function get_m_friction():Float return untyped bullet._eb_btRigidBodyConstructionInfo_get_m_friction(this);
    inline function set_m_friction(_v:Float):Float return untyped bullet._eb_btRigidBodyConstructionInfo_set_m_friction(this, _v);
    public var m_rollingFriction(get, set) : Float;
    inline function get_m_rollingFriction():Float return untyped bullet._eb_btRigidBodyConstructionInfo_get_m_rollingFriction(this);
    inline function set_m_rollingFriction(_v:Float):Float return untyped bullet._eb_btRigidBodyConstructionInfo_set_m_rollingFriction(this, _v);
    public var m_restitution(get, set) : Float;
    inline function get_m_restitution():Float return untyped bullet._eb_btRigidBodyConstructionInfo_get_m_restitution(this);
    inline function set_m_restitution(_v:Float):Float return untyped bullet._eb_btRigidBodyConstructionInfo_set_m_restitution(this, _v);
    public var m_linearSleepingThreshold(get, set) : Float;
    inline function get_m_linearSleepingThreshold():Float return untyped bullet._eb_btRigidBodyConstructionInfo_get_m_linearSleepingThreshold(this);
    inline function set_m_linearSleepingThreshold(_v:Float):Float return untyped bullet._eb_btRigidBodyConstructionInfo_set_m_linearSleepingThreshold(this, _v);
    public var m_angularSleepingThreshold(get, set) : Float;
    inline function get_m_angularSleepingThreshold():Float return untyped bullet._eb_btRigidBodyConstructionInfo_get_m_angularSleepingThreshold(this);
    inline function set_m_angularSleepingThreshold(_v:Float):Float return untyped bullet._eb_btRigidBodyConstructionInfo_set_m_angularSleepingThreshold(this, _v);
    public var m_additionalDamping(get, set) : Bool;
    inline function get_m_additionalDamping():Bool return untyped bullet._eb_btRigidBodyConstructionInfo_get_m_additionalDamping(this);
    inline function set_m_additionalDamping(_v:Bool):Bool return untyped bullet._eb_btRigidBodyConstructionInfo_set_m_additionalDamping(this, _v);
    public var m_additionalDampingFactor(get, set) : Float;
    inline function get_m_additionalDampingFactor():Float return untyped bullet._eb_btRigidBodyConstructionInfo_get_m_additionalDampingFactor(this);
    inline function set_m_additionalDampingFactor(_v:Float):Float return untyped bullet._eb_btRigidBodyConstructionInfo_set_m_additionalDampingFactor(this, _v);
    public var m_additionalLinearDampingThresholdSqr(get, set) : Float;
    inline function get_m_additionalLinearDampingThresholdSqr():Float return untyped bullet._eb_btRigidBodyConstructionInfo_get_m_additionalLinearDampingThresholdSqr(this);
    inline function set_m_additionalLinearDampingThresholdSqr(_v:Float):Float return untyped bullet._eb_btRigidBodyConstructionInfo_set_m_additionalLinearDampingThresholdSqr(this, _v);
    public var m_additionalAngularDampingThresholdSqr(get, set) : Float;
    inline function get_m_additionalAngularDampingThresholdSqr():Float return untyped bullet._eb_btRigidBodyConstructionInfo_get_m_additionalAngularDampingThresholdSqr(this);
    inline function set_m_additionalAngularDampingThresholdSqr(_v:Float):Float return untyped bullet._eb_btRigidBodyConstructionInfo_set_m_additionalAngularDampingThresholdSqr(this, _v);
    public var m_additionalAngularDampingFactor(get, set) : Float;
    inline function get_m_additionalAngularDampingFactor():Float return untyped bullet._eb_btRigidBodyConstructionInfo_get_m_additionalAngularDampingFactor(this);
    inline function set_m_additionalAngularDampingFactor(_v:Float):Float return untyped bullet._eb_btRigidBodyConstructionInfo_set_m_additionalAngularDampingFactor(this, _v);
    inline public function delete():Void return untyped bullet._eb_btRigidBodyConstructionInfo_delete(this);
}
#end
