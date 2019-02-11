package bullet;

#if hl
abstract SphereShape(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btSphereShape_new1")
    static function new1(radius:Single):SphereShape return null;
    public inline function new(radius:Single):Void this = new1(cast radius);
    @:hlNative("bullet", "btSphereShape_setMargin1")
    public function setMargin(margin:Single):Void { }
    @:hlNative("bullet", "btSphereShape_getMargin0")
    public function getMargin():Single return 0.;
    @:hlNative("bullet", "btSphereShape_delete")
    public function delete():Void { }
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    @:hlNative("bullet", "btCollisionShape_setLocalScaling1")
    public function setLocalScaling(scaling:Vector3):Void { }
    @:hlNative("bullet", "btCollisionShape_calculateLocalInertia2")
    public function calculateLocalInertia(mass:Single, inertia:Vector3):Void { }
}
#elseif js
abstract SphereShape(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new1(radius:Float):SphereShape return untyped bullet._eb_btSphereShape_new1(radius);
    public inline function new(radius:Float):Void this = new1(cast radius);
    inline public function setMargin(margin:Float):Void return untyped bullet._eb_btSphereShape_setMargin1(this, margin);
    inline public function getMargin():Float return untyped bullet._eb_btSphereShape_getMargin0(this);
    inline public function delete():Void return untyped bullet._eb_btSphereShape_delete(this);
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    inline public function setLocalScaling(scaling:Vector3):Void return untyped bullet._eb_btCollisionShape_setLocalScaling1(this, scaling);
    inline public function calculateLocalInertia(mass:Float, inertia:Vector3):Void return untyped bullet._eb_btCollisionShape_calculateLocalInertia2(this, mass, inertia);
}
#end
