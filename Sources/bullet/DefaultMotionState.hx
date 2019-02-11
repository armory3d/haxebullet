package bullet;

#if hl
abstract DefaultMotionState(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btDefaultMotionState_new2")
    static function new2(?startTrans:Transform, ?centerOfMassOffset:Transform):DefaultMotionState return null;
    public inline function new(?startTrans:Transform, ?centerOfMassOffset:Transform):Void this = new2(cast startTrans, cast centerOfMassOffset);
    public var m_graphicsWorldTrans(get, set) : Transform;
    @:hlNative("bullet", "btDefaultMotionState_get_m_graphicsWorldTrans")
    function get_m_graphicsWorldTrans():Transform return null;
    @:hlNative("bullet", "btDefaultMotionState_set_m_graphicsWorldTrans")
    function set_m_graphicsWorldTrans(_v:Transform):Transform return null;
    @:hlNative("bullet", "btDefaultMotionState_delete")
    public function delete():Void { }
    @:to
    inline function _toMotionState():MotionState return cast this;
    @:hlNative("bullet", "btMotionState_getWorldTransform1")
    public function getWorldTransform(worldTrans:Transform):Void { }
    @:hlNative("bullet", "btMotionState_setWorldTransform1")
    public function setWorldTransform(worldTrans:Transform):Void { }
}
#elseif js
abstract DefaultMotionState(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new2(?startTrans:Transform, ?centerOfMassOffset:Transform):DefaultMotionState return untyped bullet._eb_btDefaultMotionState_new2(startTrans, centerOfMassOffset);
    public inline function new(?startTrans:Transform, ?centerOfMassOffset:Transform):Void this = new2(cast startTrans, cast centerOfMassOffset);
    public var m_graphicsWorldTrans(get, set) : Transform;
    inline function get_m_graphicsWorldTrans():Transform return untyped bullet._eb_btDefaultMotionState_get_m_graphicsWorldTrans(this);
    inline function set_m_graphicsWorldTrans(_v:Transform):Transform return untyped bullet._eb_btDefaultMotionState_set_m_graphicsWorldTrans(this, _v);
    inline public function delete():Void return untyped bullet._eb_btDefaultMotionState_delete(this);
    @:to
    inline function _toMotionState():MotionState return cast this;
    inline public function getWorldTransform(worldTrans:Transform):Void return untyped bullet._eb_btMotionState_getWorldTransform1(this, worldTrans);
    inline public function setWorldTransform(worldTrans:Transform):Void return untyped bullet._eb_btMotionState_setWorldTransform1(this, worldTrans);
}
#end
