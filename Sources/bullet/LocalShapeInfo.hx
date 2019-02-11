package bullet;

#if hl
abstract LocalShapeInfo(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_shapePart(get, set) : Int;
    @:hlNative("bullet", "LocalShapeInfo_get_m_shapePart")
    function get_m_shapePart():Int return 0;
    @:hlNative("bullet", "LocalShapeInfo_set_m_shapePart")
    function set_m_shapePart(_v:Int):Int return 0;
    public var m_triangleIndex(get, set) : Int;
    @:hlNative("bullet", "LocalShapeInfo_get_m_triangleIndex")
    function get_m_triangleIndex():Int return 0;
    @:hlNative("bullet", "LocalShapeInfo_set_m_triangleIndex")
    function set_m_triangleIndex(_v:Int):Int return 0;
    @:hlNative("bullet", "LocalShapeInfo_delete")
    public function delete():Void { }
}
#elseif js
abstract LocalShapeInfo(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_shapePart(get, set) : Int;
    inline function get_m_shapePart():Int return untyped bullet._eb_LocalShapeInfo_get_m_shapePart(this);
    inline function set_m_shapePart(_v:Int):Int return untyped bullet._eb_LocalShapeInfo_set_m_shapePart(this, _v);
    public var m_triangleIndex(get, set) : Int;
    inline function get_m_triangleIndex():Int return untyped bullet._eb_LocalShapeInfo_get_m_triangleIndex(this);
    inline function set_m_triangleIndex(_v:Int):Int return untyped bullet._eb_LocalShapeInfo_set_m_triangleIndex(this, _v);
    inline public function delete():Void return untyped bullet._eb_LocalShapeInfo_delete(this);
}
#end
