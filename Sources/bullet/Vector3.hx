package bullet;

#if hl
abstract Vector3(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btVector3_new0")
    static function new0():Vector3 return null;
    @:hlNative("bullet", "btVector3_new3")
    static function new3(x:Single, y:Single, z:Single):Vector3 return null;
    public inline function new(?x:Single, ?y:Single, ?z:Single):Void if (x == null) this = new0() else this = new3(cast x, cast y, cast z);
    @:hlNative("bullet", "btVector3_length0")
    public function length():Single return 0.;
    @:hlNative("bullet", "btVector3_x0")
    public function x():Single return 0.;
    @:hlNative("bullet", "btVector3_y0")
    public function y():Single return 0.;
    @:hlNative("bullet", "btVector3_z0")
    public function z():Single return 0.;
    @:hlNative("bullet", "btVector3_setX1")
    public function setX(x:Single):Void { }
    @:hlNative("bullet", "btVector3_setY1")
    public function setY(y:Single):Void { }
    @:hlNative("bullet", "btVector3_setZ1")
    public function setZ(z:Single):Void { }
    @:hlNative("bullet", "btVector3_setValue3")
    public function setValue(x:Single, y:Single, z:Single):Void { }
    @:hlNative("bullet", "btVector3_normalize0")
    public function normalize():Void { }
    @:hlNative("bullet", "btVector3_rotate2")
    public function rotate(wAxis:Vector3, angle:Single):Vector3 return null;
    @:hlNative("bullet", "btVector3_dot1")
    public function dot(v:Vector3):Single return 0.;
    @:hlNative("bullet", "btVector3_op_mul1")
    public function op_mul(x:Single):Vector3 return null;
    @:hlNative("bullet", "btVector3_op_add1")
    public function op_add(v:Vector3):Vector3 return null;
    @:hlNative("bullet", "btVector3_op_sub1")
    public function op_sub(v:Vector3):Vector3 return null;
    @:hlNative("bullet", "btVector3_delete")
    public function delete():Void { }
}
#elseif js
abstract Vector3(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():Vector3 return untyped bullet._eb_btVector3_new0();
    inline static function new3(x:Float, y:Float, z:Float):Vector3 return untyped bullet._eb_btVector3_new3(x, y, z);
    public inline function new(?x:Float, ?y:Float, ?z:Float):Void if (x == null) this = new0() else this = new3(cast x, cast y, cast z);
    inline public function length():Float return untyped bullet._eb_btVector3_length0(this);
    inline public function x():Float return untyped bullet._eb_btVector3_x0(this);
    inline public function y():Float return untyped bullet._eb_btVector3_y0(this);
    inline public function z():Float return untyped bullet._eb_btVector3_z0(this);
    inline public function setX(x:Float):Void return untyped bullet._eb_btVector3_setX1(this, x);
    inline public function setY(y:Float):Void return untyped bullet._eb_btVector3_setY1(this, y);
    inline public function setZ(z:Float):Void return untyped bullet._eb_btVector3_setZ1(this, z);
    inline public function setValue(x:Float, y:Float, z:Float):Void return untyped bullet._eb_btVector3_setValue3(this, x, y, z);
    inline public function normalize():Void return untyped bullet._eb_btVector3_normalize0(this);
    inline public function rotate(wAxis:Vector3, angle:Float):Vector3 return untyped bullet._eb_btVector3_rotate2(this, wAxis, angle);
    inline public function dot(v:Vector3):Float return untyped bullet._eb_btVector3_dot1(this, v);
    inline public function op_mul(x:Float):Vector3 return untyped bullet._eb_btVector3_op_mul1(this, x);
    inline public function op_add(v:Vector3):Vector3 return untyped bullet._eb_btVector3_op_add1(this, v);
    inline public function op_sub(v:Vector3):Vector3 return untyped bullet._eb_btVector3_op_sub1(this, v);
    inline public function delete():Void return untyped bullet._eb_btVector3_delete(this);
}
#end
