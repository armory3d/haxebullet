package bullet;

#if hl
abstract WheelInfoConstructionInfo(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_chassisConnectionCS(get, set) : Vector3;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_get_m_chassisConnectionCS")
    function get_m_chassisConnectionCS():Vector3 return null;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_set_m_chassisConnectionCS")
    function set_m_chassisConnectionCS(_v:Vector3):Vector3 return null;
    public var m_wheelDirectionCS(get, set) : Vector3;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_get_m_wheelDirectionCS")
    function get_m_wheelDirectionCS():Vector3 return null;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_set_m_wheelDirectionCS")
    function set_m_wheelDirectionCS(_v:Vector3):Vector3 return null;
    public var m_wheelAxleCS(get, set) : Vector3;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_get_m_wheelAxleCS")
    function get_m_wheelAxleCS():Vector3 return null;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_set_m_wheelAxleCS")
    function set_m_wheelAxleCS(_v:Vector3):Vector3 return null;
    public var m_suspensionRestLength(get, set) : Single;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_get_m_suspensionRestLength")
    function get_m_suspensionRestLength():Single return 0.;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_set_m_suspensionRestLength")
    function set_m_suspensionRestLength(_v:Single):Single return 0.;
    public var m_maxSuspensionTravelCm(get, set) : Single;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_get_m_maxSuspensionTravelCm")
    function get_m_maxSuspensionTravelCm():Single return 0.;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_set_m_maxSuspensionTravelCm")
    function set_m_maxSuspensionTravelCm(_v:Single):Single return 0.;
    public var m_wheelRadius(get, set) : Single;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_get_m_wheelRadius")
    function get_m_wheelRadius():Single return 0.;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_set_m_wheelRadius")
    function set_m_wheelRadius(_v:Single):Single return 0.;
    public var m_suspensionStiffness(get, set) : Single;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_get_m_suspensionStiffness")
    function get_m_suspensionStiffness():Single return 0.;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_set_m_suspensionStiffness")
    function set_m_suspensionStiffness(_v:Single):Single return 0.;
    public var m_wheelsDampingCompression(get, set) : Single;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_get_m_wheelsDampingCompression")
    function get_m_wheelsDampingCompression():Single return 0.;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_set_m_wheelsDampingCompression")
    function set_m_wheelsDampingCompression(_v:Single):Single return 0.;
    public var m_wheelsDampingRelaxation(get, set) : Single;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_get_m_wheelsDampingRelaxation")
    function get_m_wheelsDampingRelaxation():Single return 0.;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_set_m_wheelsDampingRelaxation")
    function set_m_wheelsDampingRelaxation(_v:Single):Single return 0.;
    public var m_frictionSlip(get, set) : Single;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_get_m_frictionSlip")
    function get_m_frictionSlip():Single return 0.;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_set_m_frictionSlip")
    function set_m_frictionSlip(_v:Single):Single return 0.;
    public var m_maxSuspensionForce(get, set) : Single;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_get_m_maxSuspensionForce")
    function get_m_maxSuspensionForce():Single return 0.;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_set_m_maxSuspensionForce")
    function set_m_maxSuspensionForce(_v:Single):Single return 0.;
    public var m_bIsFrontWheel(get, set) : Bool;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_get_m_bIsFrontWheel")
    function get_m_bIsFrontWheel():Bool return false;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_set_m_bIsFrontWheel")
    function set_m_bIsFrontWheel(_v:Bool):Bool return false;
    @:hlNative("bullet", "btWheelInfoConstructionInfo_delete")
    public function delete():Void { }
}
#elseif js
abstract WheelInfoConstructionInfo(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_chassisConnectionCS(get, set) : Vector3;
    inline function get_m_chassisConnectionCS():Vector3 return untyped bullet._eb_btWheelInfoConstructionInfo_get_m_chassisConnectionCS(this);
    inline function set_m_chassisConnectionCS(_v:Vector3):Vector3 return untyped bullet._eb_btWheelInfoConstructionInfo_set_m_chassisConnectionCS(this, _v);
    public var m_wheelDirectionCS(get, set) : Vector3;
    inline function get_m_wheelDirectionCS():Vector3 return untyped bullet._eb_btWheelInfoConstructionInfo_get_m_wheelDirectionCS(this);
    inline function set_m_wheelDirectionCS(_v:Vector3):Vector3 return untyped bullet._eb_btWheelInfoConstructionInfo_set_m_wheelDirectionCS(this, _v);
    public var m_wheelAxleCS(get, set) : Vector3;
    inline function get_m_wheelAxleCS():Vector3 return untyped bullet._eb_btWheelInfoConstructionInfo_get_m_wheelAxleCS(this);
    inline function set_m_wheelAxleCS(_v:Vector3):Vector3 return untyped bullet._eb_btWheelInfoConstructionInfo_set_m_wheelAxleCS(this, _v);
    public var m_suspensionRestLength(get, set) : Float;
    inline function get_m_suspensionRestLength():Float return untyped bullet._eb_btWheelInfoConstructionInfo_get_m_suspensionRestLength(this);
    inline function set_m_suspensionRestLength(_v:Float):Float return untyped bullet._eb_btWheelInfoConstructionInfo_set_m_suspensionRestLength(this, _v);
    public var m_maxSuspensionTravelCm(get, set) : Float;
    inline function get_m_maxSuspensionTravelCm():Float return untyped bullet._eb_btWheelInfoConstructionInfo_get_m_maxSuspensionTravelCm(this);
    inline function set_m_maxSuspensionTravelCm(_v:Float):Float return untyped bullet._eb_btWheelInfoConstructionInfo_set_m_maxSuspensionTravelCm(this, _v);
    public var m_wheelRadius(get, set) : Float;
    inline function get_m_wheelRadius():Float return untyped bullet._eb_btWheelInfoConstructionInfo_get_m_wheelRadius(this);
    inline function set_m_wheelRadius(_v:Float):Float return untyped bullet._eb_btWheelInfoConstructionInfo_set_m_wheelRadius(this, _v);
    public var m_suspensionStiffness(get, set) : Float;
    inline function get_m_suspensionStiffness():Float return untyped bullet._eb_btWheelInfoConstructionInfo_get_m_suspensionStiffness(this);
    inline function set_m_suspensionStiffness(_v:Float):Float return untyped bullet._eb_btWheelInfoConstructionInfo_set_m_suspensionStiffness(this, _v);
    public var m_wheelsDampingCompression(get, set) : Float;
    inline function get_m_wheelsDampingCompression():Float return untyped bullet._eb_btWheelInfoConstructionInfo_get_m_wheelsDampingCompression(this);
    inline function set_m_wheelsDampingCompression(_v:Float):Float return untyped bullet._eb_btWheelInfoConstructionInfo_set_m_wheelsDampingCompression(this, _v);
    public var m_wheelsDampingRelaxation(get, set) : Float;
    inline function get_m_wheelsDampingRelaxation():Float return untyped bullet._eb_btWheelInfoConstructionInfo_get_m_wheelsDampingRelaxation(this);
    inline function set_m_wheelsDampingRelaxation(_v:Float):Float return untyped bullet._eb_btWheelInfoConstructionInfo_set_m_wheelsDampingRelaxation(this, _v);
    public var m_frictionSlip(get, set) : Float;
    inline function get_m_frictionSlip():Float return untyped bullet._eb_btWheelInfoConstructionInfo_get_m_frictionSlip(this);
    inline function set_m_frictionSlip(_v:Float):Float return untyped bullet._eb_btWheelInfoConstructionInfo_set_m_frictionSlip(this, _v);
    public var m_maxSuspensionForce(get, set) : Float;
    inline function get_m_maxSuspensionForce():Float return untyped bullet._eb_btWheelInfoConstructionInfo_get_m_maxSuspensionForce(this);
    inline function set_m_maxSuspensionForce(_v:Float):Float return untyped bullet._eb_btWheelInfoConstructionInfo_set_m_maxSuspensionForce(this, _v);
    public var m_bIsFrontWheel(get, set) : Bool;
    inline function get_m_bIsFrontWheel():Bool return untyped bullet._eb_btWheelInfoConstructionInfo_get_m_bIsFrontWheel(this);
    inline function set_m_bIsFrontWheel(_v:Bool):Bool return untyped bullet._eb_btWheelInfoConstructionInfo_set_m_bIsFrontWheel(this, _v);
    inline public function delete():Void return untyped bullet._eb_btWheelInfoConstructionInfo_delete(this);
}
#end
