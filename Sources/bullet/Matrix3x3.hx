package bullet;

#if hl
abstract Matrix3x3(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btMatrix3x3_setEulerZYX3")
    public function setEulerZYX(ex:Single, ey:Single, ez:Single):Void { }
    @:hlNative("bullet", "btMatrix3x3_getRotation1")
    public function getRotation(q:Quaternion):Void { }
    @:hlNative("bullet", "btMatrix3x3_getRow1")
    public function getRow(y:Int):Vector3 return null;
    @:hlNative("bullet", "btMatrix3x3_delete")
    public function delete():Void { }
}
#elseif js
abstract Matrix3x3(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function setEulerZYX(ex:Float, ey:Float, ez:Float):Void return untyped bullet._eb_btMatrix3x3_setEulerZYX3(this, ex, ey, ez);
    inline public function getRotation(q:Quaternion):Void return untyped bullet._eb_btMatrix3x3_getRotation1(this, q);
    inline public function getRow(y:Int):Vector3 return untyped bullet._eb_btMatrix3x3_getRow1(this, y);
    inline public function delete():Void return untyped bullet._eb_btMatrix3x3_delete(this);
}
#end
