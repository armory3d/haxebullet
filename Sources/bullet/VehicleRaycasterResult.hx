package bullet;

#if hl
abstract VehicleRaycasterResult(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_hitPointInWorld(get, set) : Vector3;
    @:hlNative("bullet", "btVehicleRaycasterResult_get_m_hitPointInWorld")
    function get_m_hitPointInWorld():Vector3 return null;
    @:hlNative("bullet", "btVehicleRaycasterResult_set_m_hitPointInWorld")
    function set_m_hitPointInWorld(_v:Vector3):Vector3 return null;
    public var m_hitNormalInWorld(get, set) : Vector3;
    @:hlNative("bullet", "btVehicleRaycasterResult_get_m_hitNormalInWorld")
    function get_m_hitNormalInWorld():Vector3 return null;
    @:hlNative("bullet", "btVehicleRaycasterResult_set_m_hitNormalInWorld")
    function set_m_hitNormalInWorld(_v:Vector3):Vector3 return null;
    public var m_distFraction(get, set) : Single;
    @:hlNative("bullet", "btVehicleRaycasterResult_get_m_distFraction")
    function get_m_distFraction():Single return 0.;
    @:hlNative("bullet", "btVehicleRaycasterResult_set_m_distFraction")
    function set_m_distFraction(_v:Single):Single return 0.;
    @:hlNative("bullet", "btVehicleRaycasterResult_delete")
    public function delete():Void { }
}
#elseif js
abstract VehicleRaycasterResult(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_hitPointInWorld(get, set) : Vector3;
    inline function get_m_hitPointInWorld():Vector3 return untyped bullet._eb_btVehicleRaycasterResult_get_m_hitPointInWorld(this);
    inline function set_m_hitPointInWorld(_v:Vector3):Vector3 return untyped bullet._eb_btVehicleRaycasterResult_set_m_hitPointInWorld(this, _v);
    public var m_hitNormalInWorld(get, set) : Vector3;
    inline function get_m_hitNormalInWorld():Vector3 return untyped bullet._eb_btVehicleRaycasterResult_get_m_hitNormalInWorld(this);
    inline function set_m_hitNormalInWorld(_v:Vector3):Vector3 return untyped bullet._eb_btVehicleRaycasterResult_set_m_hitNormalInWorld(this, _v);
    public var m_distFraction(get, set) : Float;
    inline function get_m_distFraction():Float return untyped bullet._eb_btVehicleRaycasterResult_get_m_distFraction(this);
    inline function set_m_distFraction(_v:Float):Float return untyped bullet._eb_btVehicleRaycasterResult_set_m_distFraction(this, _v);
    inline public function delete():Void return untyped bullet._eb_btVehicleRaycasterResult_delete(this);
}
#end
