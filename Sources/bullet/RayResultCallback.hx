package bullet;

#if hl
abstract RayResultCallback(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "RayResultCallback_hasHit0")
    public function hasHit():Bool return false;
    public var m_collisionFilterGroup(get, set) : hl.UI16;
    @:hlNative("bullet", "RayResultCallback_get_m_collisionFilterGroup")
    function get_m_collisionFilterGroup():hl.UI16 return 0;
    @:hlNative("bullet", "RayResultCallback_set_m_collisionFilterGroup")
    function set_m_collisionFilterGroup(_v:hl.UI16):hl.UI16 return 0;
    public var m_collisionFilterMask(get, set) : hl.UI16;
    @:hlNative("bullet", "RayResultCallback_get_m_collisionFilterMask")
    function get_m_collisionFilterMask():hl.UI16 return 0;
    @:hlNative("bullet", "RayResultCallback_set_m_collisionFilterMask")
    function set_m_collisionFilterMask(_v:hl.UI16):hl.UI16 return 0;
    public var m_collisionObject(get, set) : CollisionObject;
    @:hlNative("bullet", "RayResultCallback_get_m_collisionObject")
    function get_m_collisionObject():CollisionObject return null;
    @:hlNative("bullet", "RayResultCallback_set_m_collisionObject")
    function set_m_collisionObject(_v:CollisionObject):CollisionObject return null;
    @:hlNative("bullet", "RayResultCallback_delete")
    public function delete():Void { }
}
#elseif js
abstract RayResultCallback(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function hasHit():Bool return untyped bullet._eb_RayResultCallback_hasHit0(this);
    public var m_collisionFilterGroup(get, set) : Int;
    inline function get_m_collisionFilterGroup():Int return untyped bullet._eb_RayResultCallback_get_m_collisionFilterGroup(this);
    inline function set_m_collisionFilterGroup(_v:Int):Int return untyped bullet._eb_RayResultCallback_set_m_collisionFilterGroup(this, _v);
    public var m_collisionFilterMask(get, set) : Int;
    inline function get_m_collisionFilterMask():Int return untyped bullet._eb_RayResultCallback_get_m_collisionFilterMask(this);
    inline function set_m_collisionFilterMask(_v:Int):Int return untyped bullet._eb_RayResultCallback_set_m_collisionFilterMask(this, _v);
    public var m_collisionObject(get, set) : CollisionObject;
    inline function get_m_collisionObject():CollisionObject return untyped bullet._eb_RayResultCallback_get_m_collisionObject(this);
    inline function set_m_collisionObject(_v:CollisionObject):CollisionObject return untyped bullet._eb_RayResultCallback_set_m_collisionObject(this, _v);
    inline public function delete():Void return untyped bullet._eb_RayResultCallback_delete(this);
}
#end
