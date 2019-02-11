package bullet;

#if hl
abstract ConvexHullShape(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btConvexHullShape_new0")
    static function new0():ConvexHullShape return null;
    public inline function new():Void this = new0();
    @:hlNative("bullet", "btConvexHullShape_addPoint2")
    public function addPoint(point:Vector3, ?recalculateLocalAABB:Bool):Void { }
    @:hlNative("bullet", "btConvexHullShape_setMargin1")
    public function setMargin(margin:Single):Void { }
    @:hlNative("bullet", "btConvexHullShape_getMargin0")
    public function getMargin():Single return 0.;
    @:hlNative("bullet", "btConvexHullShape_delete")
    public function delete():Void { }
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    @:hlNative("bullet", "btCollisionShape_setLocalScaling1")
    public function setLocalScaling(scaling:Vector3):Void { }
    @:hlNative("bullet", "btCollisionShape_calculateLocalInertia2")
    public function calculateLocalInertia(mass:Single, inertia:Vector3):Void { }
}
#elseif js
abstract ConvexHullShape(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():ConvexHullShape return untyped bullet._eb_btConvexHullShape_new0();
    public inline function new():Void this = new0();
    inline public function addPoint(point:Vector3, ?recalculateLocalAABB:Bool):Void return untyped bullet._eb_btConvexHullShape_addPoint2(this, point, recalculateLocalAABB);
    inline public function setMargin(margin:Float):Void return untyped bullet._eb_btConvexHullShape_setMargin1(this, margin);
    inline public function getMargin():Float return untyped bullet._eb_btConvexHullShape_getMargin0(this);
    inline public function delete():Void return untyped bullet._eb_btConvexHullShape_delete(this);
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    inline public function setLocalScaling(scaling:Vector3):Void return untyped bullet._eb_btCollisionShape_setLocalScaling1(this, scaling);
    inline public function calculateLocalInertia(mass:Float, inertia:Vector3):Void return untyped bullet._eb_btCollisionShape_calculateLocalInertia2(this, mass, inertia);
}
#end
