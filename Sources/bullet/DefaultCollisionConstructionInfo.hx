package bullet;

#if hl
abstract DefaultCollisionConstructionInfo(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btDefaultCollisionConstructionInfo_new0")
    static function new0():DefaultCollisionConstructionInfo return null;
    public inline function new():Void this = new0();
    @:hlNative("bullet", "btDefaultCollisionConstructionInfo_delete")
    public function delete():Void { }
}
#elseif js
abstract DefaultCollisionConstructionInfo(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():DefaultCollisionConstructionInfo return untyped bullet._eb_btDefaultCollisionConstructionInfo_new0();
    public inline function new():Void this = new0();
    inline public function delete():Void return untyped bullet._eb_btDefaultCollisionConstructionInfo_delete(this);
}
#end
