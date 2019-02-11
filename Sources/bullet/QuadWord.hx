package bullet;

#if hl
abstract QuadWord(webidl.Types.Ref) to webidl.Types.Ref {
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
    @:hlNative("bullet", "btQuadWord_delete")
    public function delete():Void { }
}
#elseif js
abstract QuadWord(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function x():Float return untyped bullet._eb_btQuadWord_x0(this);
    inline public function y():Float return untyped bullet._eb_btQuadWord_y0(this);
    inline public function z():Float return untyped bullet._eb_btQuadWord_z0(this);
    inline public function w():Float return untyped bullet._eb_btQuadWord_w0(this);
    inline public function setX(x:Float):Void return untyped bullet._eb_btQuadWord_setX1(this, x);
    inline public function setY(y:Float):Void return untyped bullet._eb_btQuadWord_setY1(this, y);
    inline public function setZ(z:Float):Void return untyped bullet._eb_btQuadWord_setZ1(this, z);
    inline public function setW(w:Float):Void return untyped bullet._eb_btQuadWord_setW1(this, w);
    inline public function delete():Void return untyped bullet._eb_btQuadWord_delete(this);
}
#end
