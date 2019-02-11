package bullet;

#if hl
abstract CompoundShape(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btCompoundShape_new1")
    static function new1(?enableDynamicAabbTree:Bool):CompoundShape return null;
    public inline function new(?enableDynamicAabbTree:Bool):Void this = new1(cast enableDynamicAabbTree);
    @:hlNative("bullet", "btCompoundShape_addChildShape2")
    public function addChildShape(localTransform:Transform, shape:CollisionShape):Void { }
    @:hlNative("bullet", "btCompoundShape_removeChildShapeByIndex1")
    public function removeChildShapeByIndex(childShapeindex:Int):Void { }
    @:hlNative("bullet", "btCompoundShape_getNumChildShapes0")
    public function getNumChildShapes():Int return 0;
    @:hlNative("bullet", "btCompoundShape_getChildShape1")
    public function getChildShape(index:Int):CollisionShape return null;
    @:hlNative("bullet", "btCompoundShape_setMargin1")
    public function setMargin(margin:Single):Void { }
    @:hlNative("bullet", "btCompoundShape_getMargin0")
    public function getMargin():Single return 0.;
    @:hlNative("bullet", "btCompoundShape_delete")
    public function delete():Void { }
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    @:hlNative("bullet", "btCollisionShape_setLocalScaling1")
    public function setLocalScaling(scaling:Vector3):Void { }
    @:hlNative("bullet", "btCollisionShape_calculateLocalInertia2")
    public function calculateLocalInertia(mass:Single, inertia:Vector3):Void { }
}
#elseif js
abstract CompoundShape(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new1(?enableDynamicAabbTree:Bool):CompoundShape return untyped bullet._eb_btCompoundShape_new1(enableDynamicAabbTree);
    public inline function new(?enableDynamicAabbTree:Bool):Void this = new1(cast enableDynamicAabbTree);
    inline public function addChildShape(localTransform:Transform, shape:CollisionShape):Void return untyped bullet._eb_btCompoundShape_addChildShape2(this, localTransform, shape);
    inline public function removeChildShapeByIndex(childShapeindex:Int):Void return untyped bullet._eb_btCompoundShape_removeChildShapeByIndex1(this, childShapeindex);
    inline public function getNumChildShapes():Int return untyped bullet._eb_btCompoundShape_getNumChildShapes0(this);
    inline public function getChildShape(index:Int):CollisionShape return untyped bullet._eb_btCompoundShape_getChildShape1(this, index);
    inline public function setMargin(margin:Float):Void return untyped bullet._eb_btCompoundShape_setMargin1(this, margin);
    inline public function getMargin():Float return untyped bullet._eb_btCompoundShape_getMargin0(this);
    inline public function delete():Void return untyped bullet._eb_btCompoundShape_delete(this);
    @:to
    inline function _toCollisionShape():CollisionShape return cast this;
    inline public function setLocalScaling(scaling:Vector3):Void return untyped bullet._eb_btCollisionShape_setLocalScaling1(this, scaling);
    inline public function calculateLocalInertia(mass:Float, inertia:Vector3):Void return untyped bullet._eb_btCollisionShape_calculateLocalInertia2(this, mass, inertia);
}
#end
