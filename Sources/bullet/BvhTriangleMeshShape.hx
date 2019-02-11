package bullet;

#if hl
abstract BvhTriangleMeshShape(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btBvhTriangleMeshShape_new3")
    static function new3(meshInterface:StridingMeshInterface, useQuantizedAabbCompression:Bool, ?buildBvh:Bool):BvhTriangleMeshShape return null;
    public inline function new(meshInterface:StridingMeshInterface, useQuantizedAabbCompression:Bool, ?buildBvh:Bool):Void this = new3(cast meshInterface, cast useQuantizedAabbCompression, cast buildBvh);
    @:hlNative("bullet", "btBvhTriangleMeshShape_delete")
    public function delete():Void { }
    @:to
    inline function _toTriangleMeshShape():TriangleMeshShape return cast this;
    @:to
    inline function _toConcaveShape():ConcaveShape return cast this;
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    @:hlNative("bullet", "btCollisionShape_setLocalScaling1")
    public function setLocalScaling(scaling:Vector3):Void { }
    @:hlNative("bullet", "btCollisionShape_calculateLocalInertia2")
    public function calculateLocalInertia(mass:Single, inertia:Vector3):Void { }
    @:hlNative("bullet", "btCollisionShape_setMargin1")
    public function setMargin(margin:Single):Void { }
    @:hlNative("bullet", "btCollisionShape_getMargin0")
    public function getMargin():Single return 0.;
}
#elseif js
abstract BvhTriangleMeshShape(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new3(meshInterface:StridingMeshInterface, useQuantizedAabbCompression:Bool, ?buildBvh:Bool):BvhTriangleMeshShape return untyped bullet._eb_btBvhTriangleMeshShape_new3(meshInterface, useQuantizedAabbCompression, buildBvh);
    public inline function new(meshInterface:StridingMeshInterface, useQuantizedAabbCompression:Bool, ?buildBvh:Bool):Void this = new3(cast meshInterface, cast useQuantizedAabbCompression, cast buildBvh);
    inline public function delete():Void return untyped bullet._eb_btBvhTriangleMeshShape_delete(this);
    @:to
    inline function _toTriangleMeshShape():TriangleMeshShape return cast this;
    @:to
    inline function _toConcaveShape():ConcaveShape return cast this;
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    inline public function setLocalScaling(scaling:Vector3):Void return untyped bullet._eb_btCollisionShape_setLocalScaling1(this, scaling);
    inline public function calculateLocalInertia(mass:Float, inertia:Vector3):Void return untyped bullet._eb_btCollisionShape_calculateLocalInertia2(this, mass, inertia);
    inline public function setMargin(margin:Float):Void return untyped bullet._eb_btCollisionShape_setMargin1(this, margin);
    inline public function getMargin():Float return untyped bullet._eb_btCollisionShape_getMargin0(this);
}
#end
