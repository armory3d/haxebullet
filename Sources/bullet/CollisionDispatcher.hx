package bullet;

#if hl
abstract CollisionDispatcher(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btCollisionDispatcher_new1")
    static function new1(conf:DefaultCollisionConfiguration):CollisionDispatcher return null;
    public inline function new(conf:DefaultCollisionConfiguration):Void this = new1(cast conf);
    @:hlNative("bullet", "btCollisionDispatcher_delete")
    public function delete():Void { }
    @:to
    inline function _toDispatcher():Dispatcher return cast this;
    @:hlNative("bullet", "btDispatcher_getNumManifolds0")
    public function getNumManifolds():Int return 0;
    @:hlNative("bullet", "btDispatcher_getManifoldByIndexInternal1")
    public function getManifoldByIndexInternal(index:Int):PersistentManifold return null;
}
#elseif js
abstract CollisionDispatcher(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new1(conf:DefaultCollisionConfiguration):CollisionDispatcher return untyped bullet._eb_btCollisionDispatcher_new1(conf);
    public inline function new(conf:DefaultCollisionConfiguration):Void this = new1(cast conf);
    inline public function delete():Void return untyped bullet._eb_btCollisionDispatcher_delete(this);
    @:to
    inline function _toDispatcher():Dispatcher return cast this;
    inline public function getNumManifolds():Int return untyped bullet._eb_btDispatcher_getNumManifolds0(this);
    inline public function getManifoldByIndexInternal(index:Int):PersistentManifold return untyped bullet._eb_btDispatcher_getManifoldByIndexInternal1(this, index);
}
#end
