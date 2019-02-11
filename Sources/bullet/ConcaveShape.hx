package bullet;

#if hl
abstract ConcaveShape(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btConcaveShape_delete")
    public function delete():Void { }
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
abstract ConcaveShape(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function delete():Void return untyped bullet._eb_btConcaveShape_delete(this);
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    inline public function setLocalScaling(scaling:Vector3):Void return untyped bullet._eb_btCollisionShape_setLocalScaling1(this, scaling);
    inline public function calculateLocalInertia(mass:Float, inertia:Vector3):Void return untyped bullet._eb_btCollisionShape_calculateLocalInertia2(this, mass, inertia);
    inline public function setMargin(margin:Float):Void return untyped bullet._eb_btCollisionShape_setMargin1(this, margin);
    inline public function getMargin():Float return untyped bullet._eb_btCollisionShape_getMargin0(this);
}
#end
