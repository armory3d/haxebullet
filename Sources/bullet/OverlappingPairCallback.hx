package bullet;

#if hl
abstract OverlappingPairCallback(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btOverlappingPairCallback_delete")
    public function delete():Void { }
}
#elseif js
abstract OverlappingPairCallback(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function delete():Void return untyped bullet._eb_btOverlappingPairCallback_delete(this);
}
#end
