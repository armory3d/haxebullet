package bullet;

#if hl
abstract Node(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_x(get, set) : Vector3;
    @:hlNative("bullet", "Node_get_m_x")
    function get_m_x():Vector3 return null;
    @:hlNative("bullet", "Node_set_m_x")
    function set_m_x(_v:Vector3):Vector3 return null;
    public var m_n(get, set) : Vector3;
    @:hlNative("bullet", "Node_get_m_n")
    function get_m_n():Vector3 return null;
    @:hlNative("bullet", "Node_set_m_n")
    function set_m_n(_v:Vector3):Vector3 return null;
    @:hlNative("bullet", "Node_delete")
    public function delete():Void { }
}
#elseif js
abstract Node(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_x(get, set) : Vector3;
    inline function get_m_x():Vector3 return untyped bullet._eb_Node_get_m_x(this);
    inline function set_m_x(_v:Vector3):Vector3 return untyped bullet._eb_Node_set_m_x(this, _v);
    public var m_n(get, set) : Vector3;
    inline function get_m_n():Vector3 return untyped bullet._eb_Node_get_m_n(this);
    inline function set_m_n(_v:Vector3):Vector3 return untyped bullet._eb_Node_set_m_n(this, _v);
    inline public function delete():Void return untyped bullet._eb_Node_delete(this);
}
#end
