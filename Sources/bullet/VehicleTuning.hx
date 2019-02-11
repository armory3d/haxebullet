package bullet;

#if hl
abstract VehicleTuning(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btVehicleTuning_new0")
    static function new0():VehicleTuning return null;
    public inline function new():Void this = new0();
    public var m_suspensionStiffness(get, set) : Single;
    @:hlNative("bullet", "btVehicleTuning_get_m_suspensionStiffness")
    function get_m_suspensionStiffness():Single return 0.;
    @:hlNative("bullet", "btVehicleTuning_set_m_suspensionStiffness")
    function set_m_suspensionStiffness(_v:Single):Single return 0.;
    public var m_suspensionCompression(get, set) : Single;
    @:hlNative("bullet", "btVehicleTuning_get_m_suspensionCompression")
    function get_m_suspensionCompression():Single return 0.;
    @:hlNative("bullet", "btVehicleTuning_set_m_suspensionCompression")
    function set_m_suspensionCompression(_v:Single):Single return 0.;
    public var m_suspensionDamping(get, set) : Single;
    @:hlNative("bullet", "btVehicleTuning_get_m_suspensionDamping")
    function get_m_suspensionDamping():Single return 0.;
    @:hlNative("bullet", "btVehicleTuning_set_m_suspensionDamping")
    function set_m_suspensionDamping(_v:Single):Single return 0.;
    public var m_maxSuspensionTravelCm(get, set) : Single;
    @:hlNative("bullet", "btVehicleTuning_get_m_maxSuspensionTravelCm")
    function get_m_maxSuspensionTravelCm():Single return 0.;
    @:hlNative("bullet", "btVehicleTuning_set_m_maxSuspensionTravelCm")
    function set_m_maxSuspensionTravelCm(_v:Single):Single return 0.;
    public var m_frictionSlip(get, set) : Single;
    @:hlNative("bullet", "btVehicleTuning_get_m_frictionSlip")
    function get_m_frictionSlip():Single return 0.;
    @:hlNative("bullet", "btVehicleTuning_set_m_frictionSlip")
    function set_m_frictionSlip(_v:Single):Single return 0.;
    public var m_maxSuspensionForce(get, set) : Single;
    @:hlNative("bullet", "btVehicleTuning_get_m_maxSuspensionForce")
    function get_m_maxSuspensionForce():Single return 0.;
    @:hlNative("bullet", "btVehicleTuning_set_m_maxSuspensionForce")
    function set_m_maxSuspensionForce(_v:Single):Single return 0.;
    @:hlNative("bullet", "btVehicleTuning_delete")
    public function delete():Void { }
}
#elseif js
abstract VehicleTuning(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():VehicleTuning return untyped bullet._eb_btVehicleTuning_new0();
    public inline function new():Void this = new0();
    public var m_suspensionStiffness(get, set) : Float;
    inline function get_m_suspensionStiffness():Float return untyped bullet._eb_btVehicleTuning_get_m_suspensionStiffness(this);
    inline function set_m_suspensionStiffness(_v:Float):Float return untyped bullet._eb_btVehicleTuning_set_m_suspensionStiffness(this, _v);
    public var m_suspensionCompression(get, set) : Float;
    inline function get_m_suspensionCompression():Float return untyped bullet._eb_btVehicleTuning_get_m_suspensionCompression(this);
    inline function set_m_suspensionCompression(_v:Float):Float return untyped bullet._eb_btVehicleTuning_set_m_suspensionCompression(this, _v);
    public var m_suspensionDamping(get, set) : Float;
    inline function get_m_suspensionDamping():Float return untyped bullet._eb_btVehicleTuning_get_m_suspensionDamping(this);
    inline function set_m_suspensionDamping(_v:Float):Float return untyped bullet._eb_btVehicleTuning_set_m_suspensionDamping(this, _v);
    public var m_maxSuspensionTravelCm(get, set) : Float;
    inline function get_m_maxSuspensionTravelCm():Float return untyped bullet._eb_btVehicleTuning_get_m_maxSuspensionTravelCm(this);
    inline function set_m_maxSuspensionTravelCm(_v:Float):Float return untyped bullet._eb_btVehicleTuning_set_m_maxSuspensionTravelCm(this, _v);
    public var m_frictionSlip(get, set) : Float;
    inline function get_m_frictionSlip():Float return untyped bullet._eb_btVehicleTuning_get_m_frictionSlip(this);
    inline function set_m_frictionSlip(_v:Float):Float return untyped bullet._eb_btVehicleTuning_set_m_frictionSlip(this, _v);
    public var m_maxSuspensionForce(get, set) : Float;
    inline function get_m_maxSuspensionForce():Float return untyped bullet._eb_btVehicleTuning_get_m_maxSuspensionForce(this);
    inline function set_m_maxSuspensionForce(_v:Float):Float return untyped bullet._eb_btVehicleTuning_set_m_maxSuspensionForce(this, _v);
    inline public function delete():Void return untyped bullet._eb_btVehicleTuning_delete(this);
}
#end
