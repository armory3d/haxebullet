package bullet;

#if hl
abstract ClosestRayResultCallback(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "ClosestRayResultCallback_new2")
    static function new2(from:Vector3, to:Vector3):ClosestRayResultCallback return null;
    public inline function new(from:Vector3, to:Vector3):Void this = new2(cast from, cast to);
    public var m_rayFromWorld(get, set) : Vector3;
    @:hlNative("bullet", "ClosestRayResultCallback_get_m_rayFromWorld")
    function get_m_rayFromWorld():Vector3 return null;
    @:hlNative("bullet", "ClosestRayResultCallback_set_m_rayFromWorld")
    function set_m_rayFromWorld(_v:Vector3):Vector3 return null;
    public var m_rayToWorld(get, set) : Vector3;
    @:hlNative("bullet", "ClosestRayResultCallback_get_m_rayToWorld")
    function get_m_rayToWorld():Vector3 return null;
    @:hlNative("bullet", "ClosestRayResultCallback_set_m_rayToWorld")
    function set_m_rayToWorld(_v:Vector3):Vector3 return null;
    public var m_hitNormalWorld(get, set) : Vector3;
    @:hlNative("bullet", "ClosestRayResultCallback_get_m_hitNormalWorld")
    function get_m_hitNormalWorld():Vector3 return null;
    @:hlNative("bullet", "ClosestRayResultCallback_set_m_hitNormalWorld")
    function set_m_hitNormalWorld(_v:Vector3):Vector3 return null;
    public var m_hitPointWorld(get, set) : Vector3;
    @:hlNative("bullet", "ClosestRayResultCallback_get_m_hitPointWorld")
    function get_m_hitPointWorld():Vector3 return null;
    @:hlNative("bullet", "ClosestRayResultCallback_set_m_hitPointWorld")
    function set_m_hitPointWorld(_v:Vector3):Vector3 return null;
    @:hlNative("bullet", "ClosestRayResultCallback_delete")
    public function delete():Void { }
    @:to
    inline function _toRayResultCallback():RayResultCallback return cast this;
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
}
#elseif js
abstract ClosestRayResultCallback(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new2(from:Vector3, to:Vector3):ClosestRayResultCallback return untyped bullet._eb_ClosestRayResultCallback_new2(from, to);
    public inline function new(from:Vector3, to:Vector3):Void this = new2(cast from, cast to);
    public var m_rayFromWorld(get, set) : Vector3;
    inline function get_m_rayFromWorld():Vector3 return untyped bullet._eb_ClosestRayResultCallback_get_m_rayFromWorld(this);
    inline function set_m_rayFromWorld(_v:Vector3):Vector3 return untyped bullet._eb_ClosestRayResultCallback_set_m_rayFromWorld(this, _v);
    public var m_rayToWorld(get, set) : Vector3;
    inline function get_m_rayToWorld():Vector3 return untyped bullet._eb_ClosestRayResultCallback_get_m_rayToWorld(this);
    inline function set_m_rayToWorld(_v:Vector3):Vector3 return untyped bullet._eb_ClosestRayResultCallback_set_m_rayToWorld(this, _v);
    public var m_hitNormalWorld(get, set) : Vector3;
    inline function get_m_hitNormalWorld():Vector3 return untyped bullet._eb_ClosestRayResultCallback_get_m_hitNormalWorld(this);
    inline function set_m_hitNormalWorld(_v:Vector3):Vector3 return untyped bullet._eb_ClosestRayResultCallback_set_m_hitNormalWorld(this, _v);
    public var m_hitPointWorld(get, set) : Vector3;
    inline function get_m_hitPointWorld():Vector3 return untyped bullet._eb_ClosestRayResultCallback_get_m_hitPointWorld(this);
    inline function set_m_hitPointWorld(_v:Vector3):Vector3 return untyped bullet._eb_ClosestRayResultCallback_set_m_hitPointWorld(this, _v);
    inline public function delete():Void return untyped bullet._eb_ClosestRayResultCallback_delete(this);
    @:to
    inline function _toRayResultCallback():RayResultCallback return cast this;
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
}
#end
