package bullet;

#if hl
abstract SoftBodyHelpers(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btSoftBodyHelpers_new0")
    static function new0():SoftBodyHelpers return null;
    public inline function new():Void this = new0();
    @:hlNative("bullet", "btSoftBodyHelpers_CreateRope5")
    public function CreateRope(worldInfo:SoftBodyWorldInfo, from:Vector3, to:Vector3, res:Int, fixeds:Int):SoftBody return null;
    @:hlNative("bullet", "btSoftBodyHelpers_CreatePatch9")
    public function CreatePatch(worldInfo:SoftBodyWorldInfo, corner00:Vector3, corner10:Vector3, corner01:Vector3, corner11:Vector3, resx:Int, resy:Int, fixeds:Int, gendiags:Bool):SoftBody return null;
    @:hlNative("bullet", "btSoftBodyHelpers_CreatePatchUV10")
    public function CreatePatchUV(worldInfo:SoftBodyWorldInfo, corner00:Vector3, corner10:Vector3, corner01:Vector3, corner11:Vector3, resx:Int, resy:Int, fixeds:Int, gendiags:Bool, tex_coords:webidl.Types.NativePtr<Single>):SoftBody return null;
    @:hlNative("bullet", "btSoftBodyHelpers_CreateEllipsoid4")
    public function CreateEllipsoid(worldInfo:SoftBodyWorldInfo, center:Vector3, radius:Vector3, res:Int):SoftBody return null;
    @:hlNative("bullet", "btSoftBodyHelpers_CreateFromTriMesh5")
    public function CreateFromTriMesh(worldInfo:SoftBodyWorldInfo, vertices:webidl.Types.NativePtr<Single>, triangles:webidl.Types.NativePtr<Int>, ntriangles:Int, randomizeConstraints:Bool):SoftBody return null;
    @:hlNative("bullet", "btSoftBodyHelpers_CreateFromConvexHull4")
    public function CreateFromConvexHull(worldInfo:SoftBodyWorldInfo, vertices:Vector3, nvertices:Int, randomizeConstraints:Bool):SoftBody return null;
    @:hlNative("bullet", "btSoftBodyHelpers_delete")
    public function delete():Void { }
}
#elseif js
abstract SoftBodyHelpers(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():SoftBodyHelpers return untyped bullet._eb_btSoftBodyHelpers_new0();
    public inline function new():Void this = new0();
    inline public function CreateRope(worldInfo:SoftBodyWorldInfo, from:Vector3, to:Vector3, res:Int, fixeds:Int):SoftBody return untyped bullet._eb_btSoftBodyHelpers_CreateRope5(this, worldInfo, from, to, res, fixeds);
    inline public function CreatePatch(worldInfo:SoftBodyWorldInfo, corner00:Vector3, corner10:Vector3, corner01:Vector3, corner11:Vector3, resx:Int, resy:Int, fixeds:Int, gendiags:Bool):SoftBody return untyped bullet._eb_btSoftBodyHelpers_CreatePatch9(this, worldInfo, corner00, corner10, corner01, corner11, resx, resy, fixeds, gendiags);
    inline public function CreatePatchUV(worldInfo:SoftBodyWorldInfo, corner00:Vector3, corner10:Vector3, corner01:Vector3, corner11:Vector3, resx:Int, resy:Int, fixeds:Int, gendiags:Bool, tex_coords:webidl.Types.NativePtr<Float>):SoftBody return untyped bullet._eb_btSoftBodyHelpers_CreatePatchUV10(this, worldInfo, corner00, corner10, corner01, corner11, resx, resy, fixeds, gendiags, tex_coords);
    inline public function CreateEllipsoid(worldInfo:SoftBodyWorldInfo, center:Vector3, radius:Vector3, res:Int):SoftBody return untyped bullet._eb_btSoftBodyHelpers_CreateEllipsoid4(this, worldInfo, center, radius, res);
    inline public function CreateFromTriMesh(worldInfo:SoftBodyWorldInfo, vertices:webidl.Types.NativePtr<Float>, triangles:webidl.Types.NativePtr<Int>, ntriangles:Int, randomizeConstraints:Bool):SoftBody return untyped bullet._eb_btSoftBodyHelpers_CreateFromTriMesh5(this, worldInfo, vertices, triangles, ntriangles, randomizeConstraints);
    inline public function CreateFromConvexHull(worldInfo:SoftBodyWorldInfo, vertices:Vector3, nvertices:Int, randomizeConstraints:Bool):SoftBody return untyped bullet._eb_btSoftBodyHelpers_CreateFromConvexHull4(this, worldInfo, vertices, nvertices, randomizeConstraints);
    inline public function delete():Void return untyped bullet._eb_btSoftBodyHelpers_delete(this);
}
#end
