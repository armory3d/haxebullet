package bullet;

#if hl
abstract BoxShape(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btBoxShape_new1")
    static function new1(boxHalfExtents:Vector3):BoxShape return null;
    public inline function new(boxHalfExtents:Vector3):Void this = new1(cast boxHalfExtents);
    @:hlNative("bullet", "btBoxShape_setMargin1")
    public function setMargin(margin:Single):Void { }
    @:hlNative("bullet", "btBoxShape_getMargin0")
    public function getMargin():Single return 0.;
    @:hlNative("bullet", "btBoxShape_delete")
    public function delete():Void { }
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    @:hlNative("bullet", "btCollisionShape_setLocalScaling1")
    public function setLocalScaling(scaling:Vector3):Void { }
    @:hlNative("bullet", "btCollisionShape_calculateLocalInertia2")
    public function calculateLocalInertia(mass:Single, inertia:Vector3):Void { }
}
#elseif js
abstract BoxShape(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new1(boxHalfExtents:Vector3):BoxShape return untyped bullet._eb_btBoxShape_new1(boxHalfExtents);
    public inline function new(boxHalfExtents:Vector3):Void this = new1(cast boxHalfExtents);
    inline public function setMargin(margin:Float):Void return untyped bullet._eb_btBoxShape_setMargin1(this, margin);
    inline public function getMargin():Float return untyped bullet._eb_btBoxShape_getMargin0(this);
    inline public function delete():Void return untyped bullet._eb_btBoxShape_delete(this);
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    inline public function setLocalScaling(scaling:Vector3):Void return untyped bullet._eb_btCollisionShape_setLocalScaling1(this, scaling);
    inline public function calculateLocalInertia(mass:Float, inertia:Vector3):Void return untyped bullet._eb_btCollisionShape_calculateLocalInertia2(this, mass, inertia);
}
#end
