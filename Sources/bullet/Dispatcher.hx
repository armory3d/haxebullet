package bullet;

#if hl
abstract Dispatcher(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btDispatcher_getNumManifolds0")
    public function getNumManifolds():Int return 0;
    @:hlNative("bullet", "btDispatcher_getManifoldByIndexInternal1")
    public function getManifoldByIndexInternal(index:Int):PersistentManifold return null;
    @:hlNative("bullet", "btDispatcher_delete")
    public function delete():Void { }
}
#elseif js
abstract Dispatcher(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function getNumManifolds():Int return untyped bullet._eb_btDispatcher_getNumManifolds0(this);
    inline public function getManifoldByIndexInternal(index:Int):PersistentManifold return untyped bullet._eb_btDispatcher_getManifoldByIndexInternal1(this, index);
    inline public function delete():Void return untyped bullet._eb_btDispatcher_delete(this);
}
#end
