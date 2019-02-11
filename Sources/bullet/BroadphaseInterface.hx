package bullet;

#if hl
abstract BroadphaseInterface(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btBroadphaseInterface_delete")
    public function delete():Void { }
}
#elseif js
abstract BroadphaseInterface(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function delete():Void return untyped bullet._eb_btBroadphaseInterface_delete(this);
}
#end
