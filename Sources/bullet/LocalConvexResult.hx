package bullet;

#if hl
abstract LocalConvexResult(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "LocalConvexResult_new5")
    static function new5(hitCollisionObject:CollisionObject, localShapeInfo:LocalShapeInfo, hitNormalLocal:Vector3, hitPointLocal:Vector3, hitFraction:Single):LocalConvexResult return null;
    public inline function new(hitCollisionObject:CollisionObject, localShapeInfo:LocalShapeInfo, hitNormalLocal:Vector3, hitPointLocal:Vector3, hitFraction:Single):Void this = new5(cast hitCollisionObject, cast localShapeInfo, cast hitNormalLocal, cast hitPointLocal, cast hitFraction);
    public var m_hitCollisionObject(get, set) : CollisionObject;
    @:hlNative("bullet", "LocalConvexResult_get_m_hitCollisionObject")
    function get_m_hitCollisionObject():CollisionObject return null;
    @:hlNative("bullet", "LocalConvexResult_set_m_hitCollisionObject")
    function set_m_hitCollisionObject(_v:CollisionObject):CollisionObject return null;
    public var m_localShapeInfo(get, set) : LocalShapeInfo;
    @:hlNative("bullet", "LocalConvexResult_get_m_localShapeInfo")
    function get_m_localShapeInfo():LocalShapeInfo return null;
    @:hlNative("bullet", "LocalConvexResult_set_m_localShapeInfo")
    function set_m_localShapeInfo(_v:LocalShapeInfo):LocalShapeInfo return null;
    public var m_hitNormalLocal(get, set) : Vector3;
    @:hlNative("bullet", "LocalConvexResult_get_m_hitNormalLocal")
    function get_m_hitNormalLocal():Vector3 return null;
    @:hlNative("bullet", "LocalConvexResult_set_m_hitNormalLocal")
    function set_m_hitNormalLocal(_v:Vector3):Vector3 return null;
    public var m_hitPointLocal(get, set) : Vector3;
    @:hlNative("bullet", "LocalConvexResult_get_m_hitPointLocal")
    function get_m_hitPointLocal():Vector3 return null;
    @:hlNative("bullet", "LocalConvexResult_set_m_hitPointLocal")
    function set_m_hitPointLocal(_v:Vector3):Vector3 return null;
    public var m_hitFraction(get, set) : Single;
    @:hlNative("bullet", "LocalConvexResult_get_m_hitFraction")
    function get_m_hitFraction():Single return 0.;
    @:hlNative("bullet", "LocalConvexResult_set_m_hitFraction")
    function set_m_hitFraction(_v:Single):Single return 0.;
    @:hlNative("bullet", "LocalConvexResult_delete")
    public function delete():Void { }
}
#elseif js
abstract LocalConvexResult(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new5(hitCollisionObject:CollisionObject, localShapeInfo:LocalShapeInfo, hitNormalLocal:Vector3, hitPointLocal:Vector3, hitFraction:Float):LocalConvexResult return untyped bullet._eb_LocalConvexResult_new5(hitCollisionObject, localShapeInfo, hitNormalLocal, hitPointLocal, hitFraction);
    public inline function new(hitCollisionObject:CollisionObject, localShapeInfo:LocalShapeInfo, hitNormalLocal:Vector3, hitPointLocal:Vector3, hitFraction:Float):Void this = new5(cast hitCollisionObject, cast localShapeInfo, cast hitNormalLocal, cast hitPointLocal, cast hitFraction);
    public var m_hitCollisionObject(get, set) : CollisionObject;
    inline function get_m_hitCollisionObject():CollisionObject return untyped bullet._eb_LocalConvexResult_get_m_hitCollisionObject(this);
    inline function set_m_hitCollisionObject(_v:CollisionObject):CollisionObject return untyped bullet._eb_LocalConvexResult_set_m_hitCollisionObject(this, _v);
    public var m_localShapeInfo(get, set) : LocalShapeInfo;
    inline function get_m_localShapeInfo():LocalShapeInfo return untyped bullet._eb_LocalConvexResult_get_m_localShapeInfo(this);
    inline function set_m_localShapeInfo(_v:LocalShapeInfo):LocalShapeInfo return untyped bullet._eb_LocalConvexResult_set_m_localShapeInfo(this, _v);
    public var m_hitNormalLocal(get, set) : Vector3;
    inline function get_m_hitNormalLocal():Vector3 return untyped bullet._eb_LocalConvexResult_get_m_hitNormalLocal(this);
    inline function set_m_hitNormalLocal(_v:Vector3):Vector3 return untyped bullet._eb_LocalConvexResult_set_m_hitNormalLocal(this, _v);
    public var m_hitPointLocal(get, set) : Vector3;
    inline function get_m_hitPointLocal():Vector3 return untyped bullet._eb_LocalConvexResult_get_m_hitPointLocal(this);
    inline function set_m_hitPointLocal(_v:Vector3):Vector3 return untyped bullet._eb_LocalConvexResult_set_m_hitPointLocal(this, _v);
    public var m_hitFraction(get, set) : Float;
    inline function get_m_hitFraction():Float return untyped bullet._eb_LocalConvexResult_get_m_hitFraction(this);
    inline function set_m_hitFraction(_v:Float):Float return untyped bullet._eb_LocalConvexResult_set_m_hitFraction(this, _v);
    inline public function delete():Void return untyped bullet._eb_LocalConvexResult_delete(this);
}
#end
