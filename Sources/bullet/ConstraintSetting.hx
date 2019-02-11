package bullet;

#if hl
abstract ConstraintSetting(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btConstraintSetting_new0")
    static function new0():ConstraintSetting return null;
    public inline function new():Void this = new0();
    public var m_tau(get, set) : Single;
    @:hlNative("bullet", "btConstraintSetting_get_m_tau")
    function get_m_tau():Single return 0.;
    @:hlNative("bullet", "btConstraintSetting_set_m_tau")
    function set_m_tau(_v:Single):Single return 0.;
    public var m_damping(get, set) : Single;
    @:hlNative("bullet", "btConstraintSetting_get_m_damping")
    function get_m_damping():Single return 0.;
    @:hlNative("bullet", "btConstraintSetting_set_m_damping")
    function set_m_damping(_v:Single):Single return 0.;
    public var m_impulseClamp(get, set) : Single;
    @:hlNative("bullet", "btConstraintSetting_get_m_impulseClamp")
    function get_m_impulseClamp():Single return 0.;
    @:hlNative("bullet", "btConstraintSetting_set_m_impulseClamp")
    function set_m_impulseClamp(_v:Single):Single return 0.;
    @:hlNative("bullet", "btConstraintSetting_delete")
    public function delete():Void { }
}
#elseif js
abstract ConstraintSetting(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():ConstraintSetting return untyped bullet._eb_btConstraintSetting_new0();
    public inline function new():Void this = new0();
    public var m_tau(get, set) : Float;
    inline function get_m_tau():Float return untyped bullet._eb_btConstraintSetting_get_m_tau(this);
    inline function set_m_tau(_v:Float):Float return untyped bullet._eb_btConstraintSetting_set_m_tau(this, _v);
    public var m_damping(get, set) : Float;
    inline function get_m_damping():Float return untyped bullet._eb_btConstraintSetting_get_m_damping(this);
    inline function set_m_damping(_v:Float):Float return untyped bullet._eb_btConstraintSetting_set_m_damping(this, _v);
    public var m_impulseClamp(get, set) : Float;
    inline function get_m_impulseClamp():Float return untyped bullet._eb_btConstraintSetting_get_m_impulseClamp(this);
    inline function set_m_impulseClamp(_v:Float):Float return untyped bullet._eb_btConstraintSetting_set_m_impulseClamp(this, _v);
    inline public function delete():Void return untyped bullet._eb_btConstraintSetting_delete(this);
}
#end
