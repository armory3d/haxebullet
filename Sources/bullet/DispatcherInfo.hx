package bullet;

#if hl
abstract DispatcherInfo(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_timeStep(get, set) : Single;
    @:hlNative("bullet", "btDispatcherInfo_get_m_timeStep")
    function get_m_timeStep():Single return 0.;
    @:hlNative("bullet", "btDispatcherInfo_set_m_timeStep")
    function set_m_timeStep(_v:Single):Single return 0.;
    public var m_stepCount(get, set) : Int;
    @:hlNative("bullet", "btDispatcherInfo_get_m_stepCount")
    function get_m_stepCount():Int return 0;
    @:hlNative("bullet", "btDispatcherInfo_set_m_stepCount")
    function set_m_stepCount(_v:Int):Int return 0;
    public var m_dispatchFunc(get, set) : Int;
    @:hlNative("bullet", "btDispatcherInfo_get_m_dispatchFunc")
    function get_m_dispatchFunc():Int return 0;
    @:hlNative("bullet", "btDispatcherInfo_set_m_dispatchFunc")
    function set_m_dispatchFunc(_v:Int):Int return 0;
    public var m_timeOfImpact(get, set) : Single;
    @:hlNative("bullet", "btDispatcherInfo_get_m_timeOfImpact")
    function get_m_timeOfImpact():Single return 0.;
    @:hlNative("bullet", "btDispatcherInfo_set_m_timeOfImpact")
    function set_m_timeOfImpact(_v:Single):Single return 0.;
    public var m_useContinuous(get, set) : Bool;
    @:hlNative("bullet", "btDispatcherInfo_get_m_useContinuous")
    function get_m_useContinuous():Bool return false;
    @:hlNative("bullet", "btDispatcherInfo_set_m_useContinuous")
    function set_m_useContinuous(_v:Bool):Bool return false;
    public var m_enableSatConvex(get, set) : Bool;
    @:hlNative("bullet", "btDispatcherInfo_get_m_enableSatConvex")
    function get_m_enableSatConvex():Bool return false;
    @:hlNative("bullet", "btDispatcherInfo_set_m_enableSatConvex")
    function set_m_enableSatConvex(_v:Bool):Bool return false;
    public var m_enableSPU(get, set) : Bool;
    @:hlNative("bullet", "btDispatcherInfo_get_m_enableSPU")
    function get_m_enableSPU():Bool return false;
    @:hlNative("bullet", "btDispatcherInfo_set_m_enableSPU")
    function set_m_enableSPU(_v:Bool):Bool return false;
    public var m_useEpa(get, set) : Bool;
    @:hlNative("bullet", "btDispatcherInfo_get_m_useEpa")
    function get_m_useEpa():Bool return false;
    @:hlNative("bullet", "btDispatcherInfo_set_m_useEpa")
    function set_m_useEpa(_v:Bool):Bool return false;
    public var m_allowedCcdPenetration(get, set) : Single;
    @:hlNative("bullet", "btDispatcherInfo_get_m_allowedCcdPenetration")
    function get_m_allowedCcdPenetration():Single return 0.;
    @:hlNative("bullet", "btDispatcherInfo_set_m_allowedCcdPenetration")
    function set_m_allowedCcdPenetration(_v:Single):Single return 0.;
    public var m_useConvexConservativeDistanceUtil(get, set) : Bool;
    @:hlNative("bullet", "btDispatcherInfo_get_m_useConvexConservativeDistanceUtil")
    function get_m_useConvexConservativeDistanceUtil():Bool return false;
    @:hlNative("bullet", "btDispatcherInfo_set_m_useConvexConservativeDistanceUtil")
    function set_m_useConvexConservativeDistanceUtil(_v:Bool):Bool return false;
    public var m_convexConservativeDistanceThreshold(get, set) : Single;
    @:hlNative("bullet", "btDispatcherInfo_get_m_convexConservativeDistanceThreshold")
    function get_m_convexConservativeDistanceThreshold():Single return 0.;
    @:hlNative("bullet", "btDispatcherInfo_set_m_convexConservativeDistanceThreshold")
    function set_m_convexConservativeDistanceThreshold(_v:Single):Single return 0.;
    @:hlNative("bullet", "btDispatcherInfo_delete")
    public function delete():Void { }
}
#elseif js
abstract DispatcherInfo(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_timeStep(get, set) : Float;
    inline function get_m_timeStep():Float return untyped bullet._eb_btDispatcherInfo_get_m_timeStep(this);
    inline function set_m_timeStep(_v:Float):Float return untyped bullet._eb_btDispatcherInfo_set_m_timeStep(this, _v);
    public var m_stepCount(get, set) : Int;
    inline function get_m_stepCount():Int return untyped bullet._eb_btDispatcherInfo_get_m_stepCount(this);
    inline function set_m_stepCount(_v:Int):Int return untyped bullet._eb_btDispatcherInfo_set_m_stepCount(this, _v);
    public var m_dispatchFunc(get, set) : Int;
    inline function get_m_dispatchFunc():Int return untyped bullet._eb_btDispatcherInfo_get_m_dispatchFunc(this);
    inline function set_m_dispatchFunc(_v:Int):Int return untyped bullet._eb_btDispatcherInfo_set_m_dispatchFunc(this, _v);
    public var m_timeOfImpact(get, set) : Float;
    inline function get_m_timeOfImpact():Float return untyped bullet._eb_btDispatcherInfo_get_m_timeOfImpact(this);
    inline function set_m_timeOfImpact(_v:Float):Float return untyped bullet._eb_btDispatcherInfo_set_m_timeOfImpact(this, _v);
    public var m_useContinuous(get, set) : Bool;
    inline function get_m_useContinuous():Bool return untyped bullet._eb_btDispatcherInfo_get_m_useContinuous(this);
    inline function set_m_useContinuous(_v:Bool):Bool return untyped bullet._eb_btDispatcherInfo_set_m_useContinuous(this, _v);
    public var m_enableSatConvex(get, set) : Bool;
    inline function get_m_enableSatConvex():Bool return untyped bullet._eb_btDispatcherInfo_get_m_enableSatConvex(this);
    inline function set_m_enableSatConvex(_v:Bool):Bool return untyped bullet._eb_btDispatcherInfo_set_m_enableSatConvex(this, _v);
    public var m_enableSPU(get, set) : Bool;
    inline function get_m_enableSPU():Bool return untyped bullet._eb_btDispatcherInfo_get_m_enableSPU(this);
    inline function set_m_enableSPU(_v:Bool):Bool return untyped bullet._eb_btDispatcherInfo_set_m_enableSPU(this, _v);
    public var m_useEpa(get, set) : Bool;
    inline function get_m_useEpa():Bool return untyped bullet._eb_btDispatcherInfo_get_m_useEpa(this);
    inline function set_m_useEpa(_v:Bool):Bool return untyped bullet._eb_btDispatcherInfo_set_m_useEpa(this, _v);
    public var m_allowedCcdPenetration(get, set) : Float;
    inline function get_m_allowedCcdPenetration():Float return untyped bullet._eb_btDispatcherInfo_get_m_allowedCcdPenetration(this);
    inline function set_m_allowedCcdPenetration(_v:Float):Float return untyped bullet._eb_btDispatcherInfo_set_m_allowedCcdPenetration(this, _v);
    public var m_useConvexConservativeDistanceUtil(get, set) : Bool;
    inline function get_m_useConvexConservativeDistanceUtil():Bool return untyped bullet._eb_btDispatcherInfo_get_m_useConvexConservativeDistanceUtil(this);
    inline function set_m_useConvexConservativeDistanceUtil(_v:Bool):Bool return untyped bullet._eb_btDispatcherInfo_set_m_useConvexConservativeDistanceUtil(this, _v);
    public var m_convexConservativeDistanceThreshold(get, set) : Float;
    inline function get_m_convexConservativeDistanceThreshold():Float return untyped bullet._eb_btDispatcherInfo_get_m_convexConservativeDistanceThreshold(this);
    inline function set_m_convexConservativeDistanceThreshold(_v:Float):Float return untyped bullet._eb_btDispatcherInfo_set_m_convexConservativeDistanceThreshold(this, _v);
    inline public function delete():Void return untyped bullet._eb_btDispatcherInfo_delete(this);
}
#end
