package bullet;

#if hl
abstract ClosestConvexResultCallback(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "ClosestConvexResultCallback_new2")
    static function new2(convexFromWorld:Vector3, convexToWorld:Vector3):ClosestConvexResultCallback return null;
    public inline function new(convexFromWorld:Vector3, convexToWorld:Vector3):Void this = new2(cast convexFromWorld, cast convexToWorld);
    public var m_convexFromWorld(get, set) : Vector3;
    @:hlNative("bullet", "ClosestConvexResultCallback_get_m_convexFromWorld")
    function get_m_convexFromWorld():Vector3 return null;
    @:hlNative("bullet", "ClosestConvexResultCallback_set_m_convexFromWorld")
    function set_m_convexFromWorld(_v:Vector3):Vector3 return null;
    public var m_convexToWorld(get, set) : Vector3;
    @:hlNative("bullet", "ClosestConvexResultCallback_get_m_convexToWorld")
    function get_m_convexToWorld():Vector3 return null;
    @:hlNative("bullet", "ClosestConvexResultCallback_set_m_convexToWorld")
    function set_m_convexToWorld(_v:Vector3):Vector3 return null;
    public var m_hitNormalWorld(get, set) : Vector3;
    @:hlNative("bullet", "ClosestConvexResultCallback_get_m_hitNormalWorld")
    function get_m_hitNormalWorld():Vector3 return null;
    @:hlNative("bullet", "ClosestConvexResultCallback_set_m_hitNormalWorld")
    function set_m_hitNormalWorld(_v:Vector3):Vector3 return null;
    public var m_hitPointWorld(get, set) : Vector3;
    @:hlNative("bullet", "ClosestConvexResultCallback_get_m_hitPointWorld")
    function get_m_hitPointWorld():Vector3 return null;
    @:hlNative("bullet", "ClosestConvexResultCallback_set_m_hitPointWorld")
    function set_m_hitPointWorld(_v:Vector3):Vector3 return null;
    @:hlNative("bullet", "ClosestConvexResultCallback_delete")
    public function delete():Void { }
    @:to
    inline function _toConvexResultCallback():ConvexResultCallback return cast this;
    @:hlNative("bullet", "ConvexResultCallback_hasHit0")
    public function hasHit():Bool return false;
    public var m_collisionFilterGroup(get, set) : hl.UI16;
    @:hlNative("bullet", "ConvexResultCallback_get_m_collisionFilterGroup")
    function get_m_collisionFilterGroup():hl.UI16 return 0;
    @:hlNative("bullet", "ConvexResultCallback_set_m_collisionFilterGroup")
    function set_m_collisionFilterGroup(_v:hl.UI16):hl.UI16 return 0;
    public var m_collisionFilterMask(get, set) : hl.UI16;
    @:hlNative("bullet", "ConvexResultCallback_get_m_collisionFilterMask")
    function get_m_collisionFilterMask():hl.UI16 return 0;
    @:hlNative("bullet", "ConvexResultCallback_set_m_collisionFilterMask")
    function set_m_collisionFilterMask(_v:hl.UI16):hl.UI16 return 0;
    public var m_closestHitFraction(get, set) : Single;
    @:hlNative("bullet", "ConvexResultCallback_get_m_closestHitFraction")
    function get_m_closestHitFraction():Single return 0.;
    @:hlNative("bullet", "ConvexResultCallback_set_m_closestHitFraction")
    function set_m_closestHitFraction(_v:Single):Single return 0.;
}
#elseif js
abstract ClosestConvexResultCallback(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new2(convexFromWorld:Vector3, convexToWorld:Vector3):ClosestConvexResultCallback return untyped bullet._eb_ClosestConvexResultCallback_new2(convexFromWorld, convexToWorld);
    public inline function new(convexFromWorld:Vector3, convexToWorld:Vector3):Void this = new2(cast convexFromWorld, cast convexToWorld);
    public var m_convexFromWorld(get, set) : Vector3;
    inline function get_m_convexFromWorld():Vector3 return untyped bullet._eb_ClosestConvexResultCallback_get_m_convexFromWorld(this);
    inline function set_m_convexFromWorld(_v:Vector3):Vector3 return untyped bullet._eb_ClosestConvexResultCallback_set_m_convexFromWorld(this, _v);
    public var m_convexToWorld(get, set) : Vector3;
    inline function get_m_convexToWorld():Vector3 return untyped bullet._eb_ClosestConvexResultCallback_get_m_convexToWorld(this);
    inline function set_m_convexToWorld(_v:Vector3):Vector3 return untyped bullet._eb_ClosestConvexResultCallback_set_m_convexToWorld(this, _v);
    public var m_hitNormalWorld(get, set) : Vector3;
    inline function get_m_hitNormalWorld():Vector3 return untyped bullet._eb_ClosestConvexResultCallback_get_m_hitNormalWorld(this);
    inline function set_m_hitNormalWorld(_v:Vector3):Vector3 return untyped bullet._eb_ClosestConvexResultCallback_set_m_hitNormalWorld(this, _v);
    public var m_hitPointWorld(get, set) : Vector3;
    inline function get_m_hitPointWorld():Vector3 return untyped bullet._eb_ClosestConvexResultCallback_get_m_hitPointWorld(this);
    inline function set_m_hitPointWorld(_v:Vector3):Vector3 return untyped bullet._eb_ClosestConvexResultCallback_set_m_hitPointWorld(this, _v);
    inline public function delete():Void return untyped bullet._eb_ClosestConvexResultCallback_delete(this);
    @:to
    inline function _toConvexResultCallback():ConvexResultCallback return cast this;
    inline public function hasHit():Bool return untyped bullet._eb_ConvexResultCallback_hasHit0(this);
    public var m_collisionFilterGroup(get, set) : Int;
    inline function get_m_collisionFilterGroup():Int return untyped bullet._eb_ConvexResultCallback_get_m_collisionFilterGroup(this);
    inline function set_m_collisionFilterGroup(_v:Int):Int return untyped bullet._eb_ConvexResultCallback_set_m_collisionFilterGroup(this, _v);
    public var m_collisionFilterMask(get, set) : Int;
    inline function get_m_collisionFilterMask():Int return untyped bullet._eb_ConvexResultCallback_get_m_collisionFilterMask(this);
    inline function set_m_collisionFilterMask(_v:Int):Int return untyped bullet._eb_ConvexResultCallback_set_m_collisionFilterMask(this, _v);
    public var m_closestHitFraction(get, set) : Float;
    inline function get_m_closestHitFraction():Float return untyped bullet._eb_ConvexResultCallback_get_m_closestHitFraction(this);
    inline function set_m_closestHitFraction(_v:Float):Float return untyped bullet._eb_ConvexResultCallback_set_m_closestHitFraction(this, _v);
}
#end
