package bullet;

#if hl
abstract ConvexResultCallback(webidl.Types.Ref) to webidl.Types.Ref {
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
    @:hlNative("bullet", "ConvexResultCallback_delete")
    public function delete():Void { }
}
#elseif js
abstract ConvexResultCallback(webidl.Types.Ref) to webidl.Types.Ref {
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
    inline public function delete():Void return untyped bullet._eb_ConvexResultCallback_delete(this);
}
#end
