package bullet;

#if hl
abstract TNodeArray(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "tNodeArray_size0")
    public function size():Int return 0;
    @:hlNative("bullet", "tNodeArray_at1")
    public function at(n:Int):Node return null;
    @:hlNative("bullet", "tNodeArray_delete")
    public function delete():Void { }
}
#elseif js
abstract TNodeArray(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function size():Int return untyped bullet._eb_tNodeArray_size0(this);
    inline public function at(n:Int):Node return untyped bullet._eb_tNodeArray_at1(this, n);
    inline public function delete():Void return untyped bullet._eb_tNodeArray_delete(this);
}
#end
