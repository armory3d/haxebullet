package bullet;

#if hl
abstract DbvtBroadphase(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btDbvtBroadphase_new0")
    static function new0():DbvtBroadphase return null;
    public inline function new():Void this = new0();
    @:hlNative("bullet", "btDbvtBroadphase_delete")
    public function delete():Void { }
    @:to
    inline function _toBroadphaseInterface():BroadphaseInterface return cast this;
}
#elseif js
abstract DbvtBroadphase(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():DbvtBroadphase return untyped bullet._eb_btDbvtBroadphase_new0();
    public inline function new():Void this = new0();
    inline public function delete():Void return untyped bullet._eb_btDbvtBroadphase_delete(this);
    @:to
    inline function _toBroadphaseInterface():BroadphaseInterface return cast this;
}
#end
