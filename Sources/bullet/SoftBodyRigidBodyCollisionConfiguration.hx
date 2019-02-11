package bullet;

#if hl
abstract SoftBodyRigidBodyCollisionConfiguration(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btSoftBodyRigidBodyCollisionConfiguration_new1")
    static function new1(?info:DefaultCollisionConstructionInfo):SoftBodyRigidBodyCollisionConfiguration return null;
    public inline function new(?info:DefaultCollisionConstructionInfo):Void this = new1(cast info);
    @:hlNative("bullet", "btSoftBodyRigidBodyCollisionConfiguration_delete")
    public function delete():Void { }
    @:to
    inline function _toDefaultCollisionConfiguration():DefaultCollisionConfiguration return cast this;
    @:to
    inline function _toCollisionConfiguration():CollisionConfiguration return cast this;
}
#elseif js
abstract SoftBodyRigidBodyCollisionConfiguration(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new1(?info:DefaultCollisionConstructionInfo):SoftBodyRigidBodyCollisionConfiguration return untyped bullet._eb_btSoftBodyRigidBodyCollisionConfiguration_new1(info);
    public inline function new(?info:DefaultCollisionConstructionInfo):Void this = new1(cast info);
    inline public function delete():Void return untyped bullet._eb_btSoftBodyRigidBodyCollisionConfiguration_delete(this);
    @:to
    inline function _toDefaultCollisionConfiguration():DefaultCollisionConfiguration return cast this;
    @:to
    inline function _toCollisionConfiguration():CollisionConfiguration return cast this;
}
#end
