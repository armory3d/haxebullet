package bullet;

#if hl
abstract TMaterialArray(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "tMaterialArray_size0")
    public function size():Int return 0;
    @:hlNative("bullet", "tMaterialArray_at1")
    public function at(n:Int):Material return null;
    @:hlNative("bullet", "tMaterialArray_delete")
    public function delete():Void { }
}
#elseif js
abstract TMaterialArray(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function size():Int return untyped bullet._eb_tMaterialArray_size0(this);
    inline public function at(n:Int):Material return untyped bullet._eb_tMaterialArray_at1(this, n);
    inline public function delete():Void return untyped bullet._eb_tMaterialArray_delete(this);
}
#end
