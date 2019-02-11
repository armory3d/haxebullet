package bullet;

#if hl
abstract Transform(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btTransform_new0")
    static function new0():Transform return null;
    @:hlNative("bullet", "btTransform_new2")
    static function new2(q:Quaternion, v:Vector3):Transform return null;
    public inline function new(?q:Quaternion, ?v:Vector3):Void if (q == null) this = new0() else this = new2(cast q, cast v);
    @:hlNative("bullet", "btTransform_setIdentity0")
    public function setIdentity():Void { }
    @:hlNative("bullet", "btTransform_setOrigin1")
    public function setOrigin(origin:Vector3):Void { }
    @:hlNative("bullet", "btTransform_setRotation1")
    public function setRotation(rotation:Quaternion):Void { }
    @:hlNative("bullet", "btTransform_getOrigin0")
    public function getOrigin():Vector3 return null;
    @:hlNative("bullet", "btTransform_getRotation0")
    public function getRotation():Quaternion return null;
    @:hlNative("bullet", "btTransform_getBasis0")
    public function getBasis():Matrix3x3 return null;
    @:hlNative("bullet", "btTransform_setFromOpenGLMatrix1")
    public function setFromOpenGLMatrix(m:webidl.Types.NativePtr<Single>):Void { }
    @:hlNative("bullet", "btTransform_delete")
    public function delete():Void { }
}
#elseif js
abstract Transform(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():Transform return untyped bullet._eb_btTransform_new0();
    inline static function new2(q:Quaternion, v:Vector3):Transform return untyped bullet._eb_btTransform_new2(q, v);
    public inline function new(?q:Quaternion, ?v:Vector3):Void if (q == null) this = new0() else this = new2(cast q, cast v);
    inline public function setIdentity():Void return untyped bullet._eb_btTransform_setIdentity0(this);
    inline public function setOrigin(origin:Vector3):Void return untyped bullet._eb_btTransform_setOrigin1(this, origin);
    inline public function setRotation(rotation:Quaternion):Void return untyped bullet._eb_btTransform_setRotation1(this, rotation);
    inline public function getOrigin():Vector3 return untyped bullet._eb_btTransform_getOrigin0(this);
    inline public function getRotation():Quaternion return untyped bullet._eb_btTransform_getRotation0(this);
    inline public function getBasis():Matrix3x3 return untyped bullet._eb_btTransform_getBasis0(this);
    inline public function setFromOpenGLMatrix(m:webidl.Types.NativePtr<Float>):Void return untyped bullet._eb_btTransform_setFromOpenGLMatrix1(this, m);
    inline public function delete():Void return untyped bullet._eb_btTransform_delete(this);
}
#end
