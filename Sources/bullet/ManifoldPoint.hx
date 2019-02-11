package bullet;

#if hl
abstract ManifoldPoint(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btManifoldPoint_getPositionWorldOnA0")
    public function getPositionWorldOnA():Vector3 return null;
    @:hlNative("bullet", "btManifoldPoint_getPositionWorldOnB0")
    public function getPositionWorldOnB():Vector3 return null;
    @:hlNative("bullet", "btManifoldPoint_getAppliedImpulse0")
    public function getAppliedImpulse():Float return 0.;
    @:hlNative("bullet", "btManifoldPoint_getDistance0")
    public function getDistance():Float return 0.;
    public var m_localPointA(get, set) : Vector3;
    @:hlNative("bullet", "btManifoldPoint_get_m_localPointA")
    function get_m_localPointA():Vector3 return null;
    @:hlNative("bullet", "btManifoldPoint_set_m_localPointA")
    function set_m_localPointA(_v:Vector3):Vector3 return null;
    public var m_localPointB(get, set) : Vector3;
    @:hlNative("bullet", "btManifoldPoint_get_m_localPointB")
    function get_m_localPointB():Vector3 return null;
    @:hlNative("bullet", "btManifoldPoint_set_m_localPointB")
    function set_m_localPointB(_v:Vector3):Vector3 return null;
    public var m_positionWorldOnB(get, set) : Vector3;
    @:hlNative("bullet", "btManifoldPoint_get_m_positionWorldOnB")
    function get_m_positionWorldOnB():Vector3 return null;
    @:hlNative("bullet", "btManifoldPoint_set_m_positionWorldOnB")
    function set_m_positionWorldOnB(_v:Vector3):Vector3 return null;
    public var m_positionWorldOnA(get, set) : Vector3;
    @:hlNative("bullet", "btManifoldPoint_get_m_positionWorldOnA")
    function get_m_positionWorldOnA():Vector3 return null;
    @:hlNative("bullet", "btManifoldPoint_set_m_positionWorldOnA")
    function set_m_positionWorldOnA(_v:Vector3):Vector3 return null;
    public var m_normalWorldOnB(get, set) : Vector3;
    @:hlNative("bullet", "btManifoldPoint_get_m_normalWorldOnB")
    function get_m_normalWorldOnB():Vector3 return null;
    @:hlNative("bullet", "btManifoldPoint_set_m_normalWorldOnB")
    function set_m_normalWorldOnB(_v:Vector3):Vector3 return null;
    @:hlNative("bullet", "btManifoldPoint_delete")
    public function delete():Void { }
}
#elseif js
abstract ManifoldPoint(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function getPositionWorldOnA():Vector3 return untyped bullet._eb_btManifoldPoint_getPositionWorldOnA0(this);
    inline public function getPositionWorldOnB():Vector3 return untyped bullet._eb_btManifoldPoint_getPositionWorldOnB0(this);
    inline public function getAppliedImpulse():Float return untyped bullet._eb_btManifoldPoint_getAppliedImpulse0(this);
    inline public function getDistance():Float return untyped bullet._eb_btManifoldPoint_getDistance0(this);
    public var m_localPointA(get, set) : Vector3;
    inline function get_m_localPointA():Vector3 return untyped bullet._eb_btManifoldPoint_get_m_localPointA(this);
    inline function set_m_localPointA(_v:Vector3):Vector3 return untyped bullet._eb_btManifoldPoint_set_m_localPointA(this, _v);
    public var m_localPointB(get, set) : Vector3;
    inline function get_m_localPointB():Vector3 return untyped bullet._eb_btManifoldPoint_get_m_localPointB(this);
    inline function set_m_localPointB(_v:Vector3):Vector3 return untyped bullet._eb_btManifoldPoint_set_m_localPointB(this, _v);
    public var m_positionWorldOnB(get, set) : Vector3;
    inline function get_m_positionWorldOnB():Vector3 return untyped bullet._eb_btManifoldPoint_get_m_positionWorldOnB(this);
    inline function set_m_positionWorldOnB(_v:Vector3):Vector3 return untyped bullet._eb_btManifoldPoint_set_m_positionWorldOnB(this, _v);
    public var m_positionWorldOnA(get, set) : Vector3;
    inline function get_m_positionWorldOnA():Vector3 return untyped bullet._eb_btManifoldPoint_get_m_positionWorldOnA(this);
    inline function set_m_positionWorldOnA(_v:Vector3):Vector3 return untyped bullet._eb_btManifoldPoint_set_m_positionWorldOnA(this, _v);
    public var m_normalWorldOnB(get, set) : Vector3;
    inline function get_m_normalWorldOnB():Vector3 return untyped bullet._eb_btManifoldPoint_get_m_normalWorldOnB(this);
    inline function set_m_normalWorldOnB(_v:Vector3):Vector3 return untyped bullet._eb_btManifoldPoint_set_m_normalWorldOnB(this, _v);
    inline public function delete():Void return untyped bullet._eb_btManifoldPoint_delete(this);
}
#end
