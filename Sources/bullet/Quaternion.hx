package bullet;

#if hl
abstract Quaternion(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btQuaternion_new4")
    static function new4(x:Single, y:Single, z:Single, w:Single):Quaternion return null;
    public inline function new(x:Single, y:Single, z:Single, w:Single):Void this = new4(cast x, cast y, cast z, cast w);
    @:hlNative("bullet", "btQuaternion_setValue4")
    public function setValue(x:Single, y:Single, z:Single, w:Single):Void { }
    @:hlNative("bullet", "btQuaternion_setEulerZYX3")
    public function setEulerZYX(z:Single, y:Single, x:Single):Void { }
    @:hlNative("bullet", "btQuaternion_setRotation2")
    public function setRotation(axis:Vector3, angle:Single):Void { }
    @:hlNative("bullet", "btQuaternion_normalize0")
    public function normalize():Void { }
    @:hlNative("bullet", "btQuaternion_length20")
    public function length2():Single return 0.;
    @:hlNative("bullet", "btQuaternion_length0")
    public function length():Single return 0.;
    @:hlNative("bullet", "btQuaternion_dot1")
    public function dot(q:Quaternion):Single return 0.;
    @:hlNative("bullet", "btQuaternion_normalized0")
    public function normalized():Quaternion return null;
    @:hlNative("bullet", "btQuaternion_getAxis0")
    public function getAxis():Vector3 return null;
    @:hlNative("bullet", "btQuaternion_inverse0")
    public function inverse():Quaternion return null;
    @:hlNative("bullet", "btQuaternion_getAngle0")
    public function getAngle():Single return 0.;
    @:hlNative("bullet", "btQuaternion_getAngleShortestPath0")
    public function getAngleShortestPath():Single return 0.;
    @:hlNative("bullet", "btQuaternion_angle1")
    public function angle(q:Quaternion):Single return 0.;
    @:hlNative("bullet", "btQuaternion_angleShortestPath1")
    public function angleShortestPath(q:Quaternion):Single return 0.;
    @:hlNative("bullet", "btQuaternion_op_add1")
    public function op_add(q:Quaternion):Quaternion return null;
    @:hlNative("bullet", "btQuaternion_op_sub1")
    public function op_sub(q:Quaternion):Quaternion return null;
    @:hlNative("bullet", "btQuaternion_op_mul1")
    public function op_mul(s:Single):Quaternion return null;
    @:hlNative("bullet", "btQuaternion_op_mulq1")
    public function op_mulq(q:Quaternion):Quaternion return null;
    @:hlNative("bullet", "btQuaternion_op_div1")
    public function op_div(s:Single):Quaternion return null;
    @:hlNative("bullet", "btQuaternion_delete")
    public function delete():Void { }
    @:to
    inline function _toQuadWord():QuadWord return cast this;
    @:hlNative("bullet", "btQuadWord_x0")
    public function x():Single return 0.;
    @:hlNative("bullet", "btQuadWord_y0")
    public function y():Single return 0.;
    @:hlNative("bullet", "btQuadWord_z0")
    public function z():Single return 0.;
    @:hlNative("bullet", "btQuadWord_w0")
    public function w():Single return 0.;
    @:hlNative("bullet", "btQuadWord_setX1")
    public function setX(x:Single):Void { }
    @:hlNative("bullet", "btQuadWord_setY1")
    public function setY(y:Single):Void { }
    @:hlNative("bullet", "btQuadWord_setZ1")
    public function setZ(z:Single):Void { }
    @:hlNative("bullet", "btQuadWord_setW1")
    public function setW(w:Single):Void { }
}
#elseif js
abstract Quaternion(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new4(x:Float, y:Float, z:Float, w:Float):Quaternion return untyped bullet._eb_btQuaternion_new4(x, y, z, w);
    public inline function new(x:Float, y:Float, z:Float, w:Float):Void this = new4(cast x, cast y, cast z, cast w);
    inline public function setValue(x:Float, y:Float, z:Float, w:Float):Void return untyped bullet._eb_btQuaternion_setValue4(this, x, y, z, w);
    inline public function setEulerZYX(z:Float, y:Float, x:Float):Void return untyped bullet._eb_btQuaternion_setEulerZYX3(this, z, y, x);
    inline public function setRotation(axis:Vector3, angle:Float):Void return untyped bullet._eb_btQuaternion_setRotation2(this, axis, angle);
    inline public function normalize():Void return untyped bullet._eb_btQuaternion_normalize0(this);
    inline public function length2():Float return untyped bullet._eb_btQuaternion_length20(this);
    inline public function length():Float return untyped bullet._eb_btQuaternion_length0(this);
    inline public function dot(q:Quaternion):Float return untyped bullet._eb_btQuaternion_dot1(this, q);
    inline public function normalized():Quaternion return untyped bullet._eb_btQuaternion_normalized0(this);
    inline public function getAxis():Vector3 return untyped bullet._eb_btQuaternion_getAxis0(this);
    inline public function inverse():Quaternion return untyped bullet._eb_btQuaternion_inverse0(this);
    inline public function getAngle():Float return untyped bullet._eb_btQuaternion_getAngle0(this);
    inline public function getAngleShortestPath():Float return untyped bullet._eb_btQuaternion_getAngleShortestPath0(this);
    inline public function angle(q:Quaternion):Float return untyped bullet._eb_btQuaternion_angle1(this, q);
    inline public function angleShortestPath(q:Quaternion):Float return untyped bullet._eb_btQuaternion_angleShortestPath1(this, q);
    inline public function op_add(q:Quaternion):Quaternion return untyped bullet._eb_btQuaternion_op_add1(this, q);
    inline public function op_sub(q:Quaternion):Quaternion return untyped bullet._eb_btQuaternion_op_sub1(this, q);
    inline public function op_mul(s:Float):Quaternion return untyped bullet._eb_btQuaternion_op_mul1(this, s);
    inline public function op_mulq(q:Quaternion):Quaternion return untyped bullet._eb_btQuaternion_op_mulq1(this, q);
    inline public function op_div(s:Float):Quaternion return untyped bullet._eb_btQuaternion_op_div1(this, s);
    inline public function delete():Void return untyped bullet._eb_btQuaternion_delete(this);
    @:to
    inline function _toQuadWord():QuadWord return cast this;
    inline public function x():Float return untyped bullet._eb_btQuadWord_x0(this);
    inline public function y():Float return untyped bullet._eb_btQuadWord_y0(this);
    inline public function z():Float return untyped bullet._eb_btQuadWord_z0(this);
    inline public function w():Float return untyped bullet._eb_btQuadWord_w0(this);
    inline public function setX(x:Float):Void return untyped bullet._eb_btQuadWord_setX1(this, x);
    inline public function setY(y:Float):Void return untyped bullet._eb_btQuadWord_setY1(this, y);
    inline public function setZ(z:Float):Void return untyped bullet._eb_btQuadWord_setZ1(this, z);
    inline public function setW(w:Float):Void return untyped bullet._eb_btQuadWord_setW1(this, w);
}
#end
