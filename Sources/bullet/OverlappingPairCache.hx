package bullet;

#if hl
abstract OverlappingPairCache(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btOverlappingPairCache_setInternalGhostPairCallback1")
    public function setInternalGhostPairCallback(ghostPairCallback:OverlappingPairCallback):Void { }
    @:hlNative("bullet", "btOverlappingPairCache_delete")
    public function delete():Void { }
}
#elseif js
abstract OverlappingPairCache(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function setInternalGhostPairCallback(ghostPairCallback:OverlappingPairCallback):Void return untyped bullet._eb_btOverlappingPairCache_setInternalGhostPairCallback1(this, ghostPairCallback);
    inline public function delete():Void return untyped bullet._eb_btOverlappingPairCache_delete(this);
}
#end
