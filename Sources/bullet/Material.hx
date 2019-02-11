package bullet;

#if hl
abstract Material(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_kLST(get, set) : Single;
    @:hlNative("bullet", "Material_get_m_kLST")
    function get_m_kLST():Single return 0.;
    @:hlNative("bullet", "Material_set_m_kLST")
    function set_m_kLST(_v:Single):Single return 0.;
    public var m_kAST(get, set) : Single;
    @:hlNative("bullet", "Material_get_m_kAST")
    function get_m_kAST():Single return 0.;
    @:hlNative("bullet", "Material_set_m_kAST")
    function set_m_kAST(_v:Single):Single return 0.;
    public var m_kVST(get, set) : Single;
    @:hlNative("bullet", "Material_get_m_kVST")
    function get_m_kVST():Single return 0.;
    @:hlNative("bullet", "Material_set_m_kVST")
    function set_m_kVST(_v:Single):Single return 0.;
    public var m_flags(get, set) : Int;
    @:hlNative("bullet", "Material_get_m_flags")
    function get_m_flags():Int return 0;
    @:hlNative("bullet", "Material_set_m_flags")
    function set_m_flags(_v:Int):Int return 0;
    @:hlNative("bullet", "Material_delete")
    public function delete():Void { }
}
#elseif js
abstract Material(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_kLST(get, set) : Float;
    inline function get_m_kLST():Float return untyped bullet._eb_Material_get_m_kLST(this);
    inline function set_m_kLST(_v:Float):Float return untyped bullet._eb_Material_set_m_kLST(this, _v);
    public var m_kAST(get, set) : Float;
    inline function get_m_kAST():Float return untyped bullet._eb_Material_get_m_kAST(this);
    inline function set_m_kAST(_v:Float):Float return untyped bullet._eb_Material_set_m_kAST(this, _v);
    public var m_kVST(get, set) : Float;
    inline function get_m_kVST():Float return untyped bullet._eb_Material_get_m_kVST(this);
    inline function set_m_kVST(_v:Float):Float return untyped bullet._eb_Material_set_m_kVST(this, _v);
    public var m_flags(get, set) : Int;
    inline function get_m_flags():Int return untyped bullet._eb_Material_get_m_flags(this);
    inline function set_m_flags(_v:Int):Int return untyped bullet._eb_Material_set_m_flags(this, _v);
    inline public function delete():Void return untyped bullet._eb_Material_delete(this);
}
#end
