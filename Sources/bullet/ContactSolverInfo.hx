package bullet;

#if hl
abstract ContactSolverInfo(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_splitImpulse(get, set) : Int;
    @:hlNative("bullet", "btContactSolverInfo_get_m_splitImpulse")
    function get_m_splitImpulse():Int return 0;
    @:hlNative("bullet", "btContactSolverInfo_set_m_splitImpulse")
    function set_m_splitImpulse(_v:Int):Int return 0;
    public var m_splitImpulsePenetrationThreshold(get, set) : Int;
    @:hlNative("bullet", "btContactSolverInfo_get_m_splitImpulsePenetrationThreshold")
    function get_m_splitImpulsePenetrationThreshold():Int return 0;
    @:hlNative("bullet", "btContactSolverInfo_set_m_splitImpulsePenetrationThreshold")
    function set_m_splitImpulsePenetrationThreshold(_v:Int):Int return 0;
    public var m_numIterations(get, set) : Int;
    @:hlNative("bullet", "btContactSolverInfo_get_m_numIterations")
    function get_m_numIterations():Int return 0;
    @:hlNative("bullet", "btContactSolverInfo_set_m_numIterations")
    function set_m_numIterations(_v:Int):Int return 0;
    @:hlNative("bullet", "btContactSolverInfo_delete")
    public function delete():Void { }
}
#elseif js
abstract ContactSolverInfo(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_splitImpulse(get, set) : Int;
    inline function get_m_splitImpulse():Int return untyped bullet._eb_btContactSolverInfo_get_m_splitImpulse(this);
    inline function set_m_splitImpulse(_v:Int):Int return untyped bullet._eb_btContactSolverInfo_set_m_splitImpulse(this, _v);
    public var m_splitImpulsePenetrationThreshold(get, set) : Int;
    inline function get_m_splitImpulsePenetrationThreshold():Int return untyped bullet._eb_btContactSolverInfo_get_m_splitImpulsePenetrationThreshold(this);
    inline function set_m_splitImpulsePenetrationThreshold(_v:Int):Int return untyped bullet._eb_btContactSolverInfo_set_m_splitImpulsePenetrationThreshold(this, _v);
    public var m_numIterations(get, set) : Int;
    inline function get_m_numIterations():Int return untyped bullet._eb_btContactSolverInfo_get_m_numIterations(this);
    inline function set_m_numIterations(_v:Int):Int return untyped bullet._eb_btContactSolverInfo_set_m_numIterations(this, _v);
    inline public function delete():Void return untyped bullet._eb_btContactSolverInfo_delete(this);
}
#end
