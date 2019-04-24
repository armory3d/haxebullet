package bullet;

#if hl
abstract CylinderShape(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btCylinderShape_new1")
    static function new1(halfExtents:Vector3):CylinderShape return null;
    public inline function new(halfExtents:Vector3):Void this = new1(cast halfExtents);
    @:hlNative("bullet", "btCylinderShape_setMargin1")
    public function setMargin(margin:Single):Void { }
    @:hlNative("bullet", "btCylinderShape_getMargin0")
    public function getMargin():Single return 0.;
    @:hlNative("bullet", "btCylinderShape_delete")
    public function delete():Void { }
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    @:hlNative("bullet", "btCollisionShape_setLocalScaling1")
    public function setLocalScaling(scaling:Vector3):Void { }
    @:hlNative("bullet", "btCollisionShape_calculateLocalInertia2")
    public function calculateLocalInertia(mass:Single, inertia:Vector3):Void { }
}
#elseif js
abstract CylinderShape(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new1(halfExtents:Vector3):CylinderShape return untyped bullet._eb_btCylinderShape_new1(halfExtents);
    public inline function new(halfExtents:Vector3):Void this = new1(cast halfExtents);
    inline public function setMargin(margin:Float):Void return untyped bullet._eb_btCylinderShape_setMargin1(this, margin);
    inline public function getMargin():Float return untyped bullet._eb_btCylinderShape_getMargin0(this);
    inline public function delete():Void return untyped bullet._eb_btCylinderShape_delete(this);
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    inline public function setLocalScaling(scaling:Vector3):Void return untyped bullet._eb_btCollisionShape_setLocalScaling1(this, scaling);
    inline public function calculateLocalInertia(mass:Float, inertia:Vector3):Void return untyped bullet._eb_btCollisionShape_calculateLocalInertia2(this, mass, inertia);
}
#end