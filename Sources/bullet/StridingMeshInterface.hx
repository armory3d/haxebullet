package bullet;

#if hl
abstract StridingMeshInterface(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btStridingMeshInterface_delete")
    public function delete():Void { }
}
#elseif js
abstract StridingMeshInterface(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function delete():Void return untyped bullet._eb_btStridingMeshInterface_delete(this);
}
#end
