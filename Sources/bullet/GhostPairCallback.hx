package bullet;

#if hl
abstract GhostPairCallback(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btGhostPairCallback_new0")
    static function new0():GhostPairCallback return null;
    public inline function new():Void this = new0();
    @:hlNative("bullet", "btGhostPairCallback_delete")
    public function delete():Void { }
}
#elseif js
abstract GhostPairCallback(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():GhostPairCallback return untyped bullet._eb_btGhostPairCallback_new0();
    public inline function new():Void this = new0();
    inline public function delete():Void return untyped bullet._eb_btGhostPairCallback_delete(this);
}
#end
