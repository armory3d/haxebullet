package bullet;

#if hl
abstract HeightfieldTerrainShape(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btHeightfieldTerrainShape_new9")
    static function new9(heightStickWidth:Int, heightStickLength:Int, heightfieldData:webidl.Types.VoidPtr, heightScale:Single, minHeight:Single, maxHeight:Single, upAxis:Int, hdt:PHY_ScalarType, flipQuadEdges:Bool):HeightfieldTerrainShape return null;
    public inline function new(heightStickWidth:Int, heightStickLength:Int, heightfieldData:webidl.Types.VoidPtr, heightScale:Single, minHeight:Single, maxHeight:Single, upAxis:Int, hdt:PHY_ScalarType, flipQuadEdges:Bool):Void this = new9(cast heightStickWidth, cast heightStickLength, cast heightfieldData, cast heightScale, cast minHeight, cast maxHeight, cast upAxis, cast hdt, cast flipQuadEdges);
    @:hlNative("bullet", "btHeightfieldTerrainShape_setMargin1")
    public function setMargin(margin:Single):Void { }
    @:hlNative("bullet", "btHeightfieldTerrainShape_getMargin0")
    public function getMargin():Single return 0.;
    @:hlNative("bullet", "btHeightfieldTerrainShape_delete")
    public function delete():Void { }
    @:to
    inline function _toConcaveShape():ConcaveShape return cast this;
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    @:hlNative("bullet", "btCollisionShape_setLocalScaling1")
    public function setLocalScaling(scaling:Vector3):Void { }
    @:hlNative("bullet", "btCollisionShape_calculateLocalInertia2")
    public function calculateLocalInertia(mass:Single, inertia:Vector3):Void { }
}
#elseif js
abstract HeightfieldTerrainShape(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new9(heightStickWidth:Int, heightStickLength:Int, heightfieldData:webidl.Types.VoidPtr, heightScale:Float, minHeight:Float, maxHeight:Float, upAxis:Int, hdt:PHY_ScalarType, flipQuadEdges:Bool):HeightfieldTerrainShape return untyped bullet._eb_btHeightfieldTerrainShape_new9(heightStickWidth, heightStickLength, heightfieldData, heightScale, minHeight, maxHeight, upAxis, hdt, flipQuadEdges);
    public inline function new(heightStickWidth:Int, heightStickLength:Int, heightfieldData:webidl.Types.VoidPtr, heightScale:Float, minHeight:Float, maxHeight:Float, upAxis:Int, hdt:PHY_ScalarType, flipQuadEdges:Bool):Void this = new9(cast heightStickWidth, cast heightStickLength, cast heightfieldData, cast heightScale, cast minHeight, cast maxHeight, cast upAxis, cast hdt, cast flipQuadEdges);
    inline public function setMargin(margin:Float):Void return untyped bullet._eb_btHeightfieldTerrainShape_setMargin1(this, margin);
    inline public function getMargin():Float return untyped bullet._eb_btHeightfieldTerrainShape_getMargin0(this);
    inline public function delete():Void return untyped bullet._eb_btHeightfieldTerrainShape_delete(this);
    @:to
    inline function _toConcaveShape():ConcaveShape return cast this;
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    inline public function setLocalScaling(scaling:Vector3):Void return untyped bullet._eb_btCollisionShape_setLocalScaling1(this, scaling);
    inline public function calculateLocalInertia(mass:Float, inertia:Vector3):Void return untyped bullet._eb_btCollisionShape_calculateLocalInertia2(this, mass, inertia);
}
#end
