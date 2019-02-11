package bullet;

#if hl
abstract DefaultCollisionConfiguration(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btDefaultCollisionConfiguration_new1")
    static function new1(?info:DefaultCollisionConstructionInfo):DefaultCollisionConfiguration return null;
    public inline function new(?info:DefaultCollisionConstructionInfo):Void this = new1(cast info);
    @:hlNative("bullet", "btDefaultCollisionConfiguration_delete")
    public function delete():Void { }
    @:to
    inline function _toCollisionConfiguration():CollisionConfiguration return cast this;
}
#elseif js
abstract DefaultCollisionConfiguration(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new1(?info:DefaultCollisionConstructionInfo):DefaultCollisionConfiguration return untyped bullet._eb_btDefaultCollisionConfiguration_new1(info);
    public inline function new(?info:DefaultCollisionConstructionInfo):Void this = new1(cast info);
    inline public function delete():Void return untyped bullet._eb_btDefaultCollisionConfiguration_delete(this);
    @:to
    inline function _toCollisionConfiguration():CollisionConfiguration return cast this;
}
#end
