package bullet;

#if hl
abstract SoftBodyWorldInfo(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btSoftBodyWorldInfo_new0")
    static function new0():SoftBodyWorldInfo return null;
    public inline function new():Void this = new0();
    public var air_density(get, set) : Single;
    @:hlNative("bullet", "btSoftBodyWorldInfo_get_air_density")
    function get_air_density():Single return 0.;
    @:hlNative("bullet", "btSoftBodyWorldInfo_set_air_density")
    function set_air_density(_v:Single):Single return 0.;
    public var water_density(get, set) : Single;
    @:hlNative("bullet", "btSoftBodyWorldInfo_get_water_density")
    function get_water_density():Single return 0.;
    @:hlNative("bullet", "btSoftBodyWorldInfo_set_water_density")
    function set_water_density(_v:Single):Single return 0.;
    public var water_offset(get, set) : Single;
    @:hlNative("bullet", "btSoftBodyWorldInfo_get_water_offset")
    function get_water_offset():Single return 0.;
    @:hlNative("bullet", "btSoftBodyWorldInfo_set_water_offset")
    function set_water_offset(_v:Single):Single return 0.;
    public var m_maxDisplacement(get, set) : Single;
    @:hlNative("bullet", "btSoftBodyWorldInfo_get_m_maxDisplacement")
    function get_m_maxDisplacement():Single return 0.;
    @:hlNative("bullet", "btSoftBodyWorldInfo_set_m_maxDisplacement")
    function set_m_maxDisplacement(_v:Single):Single return 0.;
    public var water_normal(get, set) : Vector3;
    @:hlNative("bullet", "btSoftBodyWorldInfo_get_water_normal")
    function get_water_normal():Vector3 return null;
    @:hlNative("bullet", "btSoftBodyWorldInfo_set_water_normal")
    function set_water_normal(_v:Vector3):Vector3 return null;
    public var m_broadphase(get, set) : BroadphaseInterface;
    @:hlNative("bullet", "btSoftBodyWorldInfo_get_m_broadphase")
    function get_m_broadphase():BroadphaseInterface return null;
    @:hlNative("bullet", "btSoftBodyWorldInfo_set_m_broadphase")
    function set_m_broadphase(_v:BroadphaseInterface):BroadphaseInterface return null;
    public var m_dispatcher(get, set) : Dispatcher;
    @:hlNative("bullet", "btSoftBodyWorldInfo_get_m_dispatcher")
    function get_m_dispatcher():Dispatcher return null;
    @:hlNative("bullet", "btSoftBodyWorldInfo_set_m_dispatcher")
    function set_m_dispatcher(_v:Dispatcher):Dispatcher return null;
    public var m_gravity(get, set) : Vector3;
    @:hlNative("bullet", "btSoftBodyWorldInfo_get_m_gravity")
    function get_m_gravity():Vector3 return null;
    @:hlNative("bullet", "btSoftBodyWorldInfo_set_m_gravity")
    function set_m_gravity(_v:Vector3):Vector3 return null;
    @:hlNative("bullet", "btSoftBodyWorldInfo_delete")
    public function delete():Void { }
}
#elseif js
abstract SoftBodyWorldInfo(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():SoftBodyWorldInfo return untyped bullet._eb_btSoftBodyWorldInfo_new0();
    public inline function new():Void this = new0();
    public var air_density(get, set) : Float;
    inline function get_air_density():Float return untyped bullet._eb_btSoftBodyWorldInfo_get_air_density(this);
    inline function set_air_density(_v:Float):Float return untyped bullet._eb_btSoftBodyWorldInfo_set_air_density(this, _v);
    public var water_density(get, set) : Float;
    inline function get_water_density():Float return untyped bullet._eb_btSoftBodyWorldInfo_get_water_density(this);
    inline function set_water_density(_v:Float):Float return untyped bullet._eb_btSoftBodyWorldInfo_set_water_density(this, _v);
    public var water_offset(get, set) : Float;
    inline function get_water_offset():Float return untyped bullet._eb_btSoftBodyWorldInfo_get_water_offset(this);
    inline function set_water_offset(_v:Float):Float return untyped bullet._eb_btSoftBodyWorldInfo_set_water_offset(this, _v);
    public var m_maxDisplacement(get, set) : Float;
    inline function get_m_maxDisplacement():Float return untyped bullet._eb_btSoftBodyWorldInfo_get_m_maxDisplacement(this);
    inline function set_m_maxDisplacement(_v:Float):Float return untyped bullet._eb_btSoftBodyWorldInfo_set_m_maxDisplacement(this, _v);
    public var water_normal(get, set) : Vector3;
    inline function get_water_normal():Vector3 return untyped bullet._eb_btSoftBodyWorldInfo_get_water_normal(this);
    inline function set_water_normal(_v:Vector3):Vector3 return untyped bullet._eb_btSoftBodyWorldInfo_set_water_normal(this, _v);
    public var m_broadphase(get, set) : BroadphaseInterface;
    inline function get_m_broadphase():BroadphaseInterface return untyped bullet._eb_btSoftBodyWorldInfo_get_m_broadphase(this);
    inline function set_m_broadphase(_v:BroadphaseInterface):BroadphaseInterface return untyped bullet._eb_btSoftBodyWorldInfo_set_m_broadphase(this, _v);
    public var m_dispatcher(get, set) : Dispatcher;
    inline function get_m_dispatcher():Dispatcher return untyped bullet._eb_btSoftBodyWorldInfo_get_m_dispatcher(this);
    inline function set_m_dispatcher(_v:Dispatcher):Dispatcher return untyped bullet._eb_btSoftBodyWorldInfo_set_m_dispatcher(this, _v);
    public var m_gravity(get, set) : Vector3;
    inline function get_m_gravity():Vector3 return untyped bullet._eb_btSoftBodyWorldInfo_get_m_gravity(this);
    inline function set_m_gravity(_v:Vector3):Vector3 return untyped bullet._eb_btSoftBodyWorldInfo_set_m_gravity(this, _v);
    inline public function delete():Void return untyped bullet._eb_btSoftBodyWorldInfo_delete(this);
}
#end
