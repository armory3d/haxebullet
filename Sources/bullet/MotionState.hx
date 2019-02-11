package bullet;

#if hl
abstract MotionState(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btMotionState_getWorldTransform1")
    public function getWorldTransform(worldTrans:Transform):Void { }
    @:hlNative("bullet", "btMotionState_setWorldTransform1")
    public function setWorldTransform(worldTrans:Transform):Void { }
    @:hlNative("bullet", "btMotionState_delete")
    public function delete():Void { }
}
#elseif js
abstract MotionState(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function getWorldTransform(worldTrans:Transform):Void return untyped bullet._eb_btMotionState_getWorldTransform1(this, worldTrans);
    inline public function setWorldTransform(worldTrans:Transform):Void return untyped bullet._eb_btMotionState_setWorldTransform1(this, worldTrans);
    inline public function delete():Void return untyped bullet._eb_btMotionState_delete(this);
}
#end
