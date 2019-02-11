package bullet;

#if hl
abstract TriangleMesh(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btTriangleMesh_new2")
    static function new2(?use32bitIndices:Bool, ?use4componentVertices:Bool):TriangleMesh return null;
    public inline function new(?use32bitIndices:Bool, ?use4componentVertices:Bool):Void this = new2(cast use32bitIndices, cast use4componentVertices);
    @:hlNative("bullet", "btTriangleMesh_addTriangle4")
    public function addTriangle(vertex0:Vector3, vertex1:Vector3, vertex2:Vector3, ?removeDuplicateVertices:Bool):Void { }
    @:hlNative("bullet", "btTriangleMesh_delete")
    public function delete():Void { }
    @:to
    inline function _toStridingMeshInterface():StridingMeshInterface return cast this;
}
#elseif js
abstract TriangleMesh(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new2(?use32bitIndices:Bool, ?use4componentVertices:Bool):TriangleMesh return untyped bullet._eb_btTriangleMesh_new2(use32bitIndices, use4componentVertices);
    public inline function new(?use32bitIndices:Bool, ?use4componentVertices:Bool):Void this = new2(cast use32bitIndices, cast use4componentVertices);
    inline public function addTriangle(vertex0:Vector3, vertex1:Vector3, vertex2:Vector3, ?removeDuplicateVertices:Bool):Void return untyped bullet._eb_btTriangleMesh_addTriangle4(this, vertex0, vertex1, vertex2, removeDuplicateVertices);
    inline public function delete():Void return untyped bullet._eb_btTriangleMesh_delete(this);
    @:to
    inline function _toStridingMeshInterface():StridingMeshInterface return cast this;
}
#end
