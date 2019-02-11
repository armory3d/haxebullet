package bullet;

#if hl
abstract SoftBodyArray(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btSoftBodyArray_size0")
    public function size():Int return 0;
    @:hlNative("bullet", "btSoftBodyArray_at1")
    public function at(n:Int):SoftBody return null;
    @:hlNative("bullet", "btSoftBodyArray_delete")
    public function delete():Void { }
}
#elseif js
abstract SoftBodyArray(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function size():Int return untyped bullet._eb_btSoftBodyArray_size0(this);
    inline public function at(n:Int):SoftBody return untyped bullet._eb_btSoftBodyArray_at1(this, n);
    inline public function delete():Void return untyped bullet._eb_btSoftBodyArray_delete(this);
}
#end
