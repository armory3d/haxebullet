package bullet;

#if hl
abstract WheelInfo(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_suspensionStiffness(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_suspensionStiffness")
    function get_m_suspensionStiffness():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_suspensionStiffness")
    function set_m_suspensionStiffness(_v:Single):Single return 0.;
    public var m_frictionSlip(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_frictionSlip")
    function get_m_frictionSlip():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_frictionSlip")
    function set_m_frictionSlip(_v:Single):Single return 0.;
    public var m_engineForce(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_engineForce")
    function get_m_engineForce():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_engineForce")
    function set_m_engineForce(_v:Single):Single return 0.;
    public var m_rollInfluence(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_rollInfluence")
    function get_m_rollInfluence():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_rollInfluence")
    function set_m_rollInfluence(_v:Single):Single return 0.;
    public var m_suspensionRestLength1(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_suspensionRestLength1")
    function get_m_suspensionRestLength1():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_suspensionRestLength1")
    function set_m_suspensionRestLength1(_v:Single):Single return 0.;
    public var m_wheelsRadius(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_wheelsRadius")
    function get_m_wheelsRadius():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_wheelsRadius")
    function set_m_wheelsRadius(_v:Single):Single return 0.;
    public var m_wheelsDampingCompression(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_wheelsDampingCompression")
    function get_m_wheelsDampingCompression():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_wheelsDampingCompression")
    function set_m_wheelsDampingCompression(_v:Single):Single return 0.;
    public var m_wheelsDampingRelaxation(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_wheelsDampingRelaxation")
    function get_m_wheelsDampingRelaxation():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_wheelsDampingRelaxation")
    function set_m_wheelsDampingRelaxation(_v:Single):Single return 0.;
    public var m_steering(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_steering")
    function get_m_steering():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_steering")
    function set_m_steering(_v:Single):Single return 0.;
    public var m_maxSuspensionForce(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_maxSuspensionForce")
    function get_m_maxSuspensionForce():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_maxSuspensionForce")
    function set_m_maxSuspensionForce(_v:Single):Single return 0.;
    public var m_maxSuspensionTravelCm(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_maxSuspensionTravelCm")
    function get_m_maxSuspensionTravelCm():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_maxSuspensionTravelCm")
    function set_m_maxSuspensionTravelCm(_v:Single):Single return 0.;
    public var m_wheelsSuspensionForce(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_wheelsSuspensionForce")
    function get_m_wheelsSuspensionForce():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_wheelsSuspensionForce")
    function set_m_wheelsSuspensionForce(_v:Single):Single return 0.;
    public var m_bIsFrontWheel(get, set) : Bool;
    @:hlNative("bullet", "btWheelInfo_get_m_bIsFrontWheel")
    function get_m_bIsFrontWheel():Bool return false;
    @:hlNative("bullet", "btWheelInfo_set_m_bIsFrontWheel")
    function set_m_bIsFrontWheel(_v:Bool):Bool return false;
    public var m_raycastInfo(get, set) : RaycastInfo;
    @:hlNative("bullet", "btWheelInfo_get_m_raycastInfo")
    function get_m_raycastInfo():RaycastInfo return null;
    @:hlNative("bullet", "btWheelInfo_set_m_raycastInfo")
    function set_m_raycastInfo(_v:RaycastInfo):RaycastInfo return null;
    public var m_chassisConnectionPointCS(get, set) : Vector3;
    @:hlNative("bullet", "btWheelInfo_get_m_chassisConnectionPointCS")
    function get_m_chassisConnectionPointCS():Vector3 return null;
    @:hlNative("bullet", "btWheelInfo_set_m_chassisConnectionPointCS")
    function set_m_chassisConnectionPointCS(_v:Vector3):Vector3 return null;
    @:hlNative("bullet", "btWheelInfo_new1")
    static function new1(ci:WheelInfoConstructionInfo):WheelInfo return null;
    public inline function new(ci:WheelInfoConstructionInfo):Void this = new1(cast ci);
    @:hlNative("bullet", "btWheelInfo_getSuspensionRestLength0")
    public function getSuspensionRestLength():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_updateWheel2")
    public function updateWheel(chassis:RigidBody, raycastInfo:RaycastInfo):Void { }
    public var m_worldTransform(get, set) : Transform;
    @:hlNative("bullet", "btWheelInfo_get_m_worldTransform")
    function get_m_worldTransform():Transform return null;
    @:hlNative("bullet", "btWheelInfo_set_m_worldTransform")
    function set_m_worldTransform(_v:Transform):Transform return null;
    public var m_wheelDirectionCS(get, set) : Vector3;
    @:hlNative("bullet", "btWheelInfo_get_m_wheelDirectionCS")
    function get_m_wheelDirectionCS():Vector3 return null;
    @:hlNative("bullet", "btWheelInfo_set_m_wheelDirectionCS")
    function set_m_wheelDirectionCS(_v:Vector3):Vector3 return null;
    public var m_wheelAxleCS(get, set) : Vector3;
    @:hlNative("bullet", "btWheelInfo_get_m_wheelAxleCS")
    function get_m_wheelAxleCS():Vector3 return null;
    @:hlNative("bullet", "btWheelInfo_set_m_wheelAxleCS")
    function set_m_wheelAxleCS(_v:Vector3):Vector3 return null;
    public var m_rotation(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_rotation")
    function get_m_rotation():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_rotation")
    function set_m_rotation(_v:Single):Single return 0.;
    public var m_deltaRotation(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_deltaRotation")
    function get_m_deltaRotation():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_deltaRotation")
    function set_m_deltaRotation(_v:Single):Single return 0.;
    public var m_brake(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_brake")
    function get_m_brake():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_brake")
    function set_m_brake(_v:Single):Single return 0.;
    public var m_clippedInvContactDotSuspension(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_clippedInvContactDotSuspension")
    function get_m_clippedInvContactDotSuspension():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_clippedInvContactDotSuspension")
    function set_m_clippedInvContactDotSuspension(_v:Single):Single return 0.;
    public var m_suspensionRelativeVelocity(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_suspensionRelativeVelocity")
    function get_m_suspensionRelativeVelocity():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_suspensionRelativeVelocity")
    function set_m_suspensionRelativeVelocity(_v:Single):Single return 0.;
    public var m_skidInfo(get, set) : Single;
    @:hlNative("bullet", "btWheelInfo_get_m_skidInfo")
    function get_m_skidInfo():Single return 0.;
    @:hlNative("bullet", "btWheelInfo_set_m_skidInfo")
    function set_m_skidInfo(_v:Single):Single return 0.;
    @:hlNative("bullet", "btWheelInfo_delete")
    public function delete():Void { }
}
#elseif js
abstract WheelInfo(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_suspensionStiffness(get, set) : Float;
    inline function get_m_suspensionStiffness():Float return untyped bullet._eb_btWheelInfo_get_m_suspensionStiffness(this);
    inline function set_m_suspensionStiffness(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_suspensionStiffness(this, _v);
    public var m_frictionSlip(get, set) : Float;
    inline function get_m_frictionSlip():Float return untyped bullet._eb_btWheelInfo_get_m_frictionSlip(this);
    inline function set_m_frictionSlip(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_frictionSlip(this, _v);
    public var m_engineForce(get, set) : Float;
    inline function get_m_engineForce():Float return untyped bullet._eb_btWheelInfo_get_m_engineForce(this);
    inline function set_m_engineForce(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_engineForce(this, _v);
    public var m_rollInfluence(get, set) : Float;
    inline function get_m_rollInfluence():Float return untyped bullet._eb_btWheelInfo_get_m_rollInfluence(this);
    inline function set_m_rollInfluence(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_rollInfluence(this, _v);
    public var m_suspensionRestLength1(get, set) : Float;
    inline function get_m_suspensionRestLength1():Float return untyped bullet._eb_btWheelInfo_get_m_suspensionRestLength1(this);
    inline function set_m_suspensionRestLength1(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_suspensionRestLength1(this, _v);
    public var m_wheelsRadius(get, set) : Float;
    inline function get_m_wheelsRadius():Float return untyped bullet._eb_btWheelInfo_get_m_wheelsRadius(this);
    inline function set_m_wheelsRadius(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_wheelsRadius(this, _v);
    public var m_wheelsDampingCompression(get, set) : Float;
    inline function get_m_wheelsDampingCompression():Float return untyped bullet._eb_btWheelInfo_get_m_wheelsDampingCompression(this);
    inline function set_m_wheelsDampingCompression(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_wheelsDampingCompression(this, _v);
    public var m_wheelsDampingRelaxation(get, set) : Float;
    inline function get_m_wheelsDampingRelaxation():Float return untyped bullet._eb_btWheelInfo_get_m_wheelsDampingRelaxation(this);
    inline function set_m_wheelsDampingRelaxation(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_wheelsDampingRelaxation(this, _v);
    public var m_steering(get, set) : Float;
    inline function get_m_steering():Float return untyped bullet._eb_btWheelInfo_get_m_steering(this);
    inline function set_m_steering(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_steering(this, _v);
    public var m_maxSuspensionForce(get, set) : Float;
    inline function get_m_maxSuspensionForce():Float return untyped bullet._eb_btWheelInfo_get_m_maxSuspensionForce(this);
    inline function set_m_maxSuspensionForce(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_maxSuspensionForce(this, _v);
    public var m_maxSuspensionTravelCm(get, set) : Float;
    inline function get_m_maxSuspensionTravelCm():Float return untyped bullet._eb_btWheelInfo_get_m_maxSuspensionTravelCm(this);
    inline function set_m_maxSuspensionTravelCm(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_maxSuspensionTravelCm(this, _v);
    public var m_wheelsSuspensionForce(get, set) : Float;
    inline function get_m_wheelsSuspensionForce():Float return untyped bullet._eb_btWheelInfo_get_m_wheelsSuspensionForce(this);
    inline function set_m_wheelsSuspensionForce(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_wheelsSuspensionForce(this, _v);
    public var m_bIsFrontWheel(get, set) : Bool;
    inline function get_m_bIsFrontWheel():Bool return untyped bullet._eb_btWheelInfo_get_m_bIsFrontWheel(this);
    inline function set_m_bIsFrontWheel(_v:Bool):Bool return untyped bullet._eb_btWheelInfo_set_m_bIsFrontWheel(this, _v);
    public var m_raycastInfo(get, set) : RaycastInfo;
    inline function get_m_raycastInfo():RaycastInfo return untyped bullet._eb_btWheelInfo_get_m_raycastInfo(this);
    inline function set_m_raycastInfo(_v:RaycastInfo):RaycastInfo return untyped bullet._eb_btWheelInfo_set_m_raycastInfo(this, _v);
    public var m_chassisConnectionPointCS(get, set) : Vector3;
    inline function get_m_chassisConnectionPointCS():Vector3 return untyped bullet._eb_btWheelInfo_get_m_chassisConnectionPointCS(this);
    inline function set_m_chassisConnectionPointCS(_v:Vector3):Vector3 return untyped bullet._eb_btWheelInfo_set_m_chassisConnectionPointCS(this, _v);
    inline static function new1(ci:WheelInfoConstructionInfo):WheelInfo return untyped bullet._eb_btWheelInfo_new1(ci);
    public inline function new(ci:WheelInfoConstructionInfo):Void this = new1(cast ci);
    inline public function getSuspensionRestLength():Float return untyped bullet._eb_btWheelInfo_getSuspensionRestLength0(this);
    inline public function updateWheel(chassis:RigidBody, raycastInfo:RaycastInfo):Void return untyped bullet._eb_btWheelInfo_updateWheel2(this, chassis, raycastInfo);
    public var m_worldTransform(get, set) : Transform;
    inline function get_m_worldTransform():Transform return untyped bullet._eb_btWheelInfo_get_m_worldTransform(this);
    inline function set_m_worldTransform(_v:Transform):Transform return untyped bullet._eb_btWheelInfo_set_m_worldTransform(this, _v);
    public var m_wheelDirectionCS(get, set) : Vector3;
    inline function get_m_wheelDirectionCS():Vector3 return untyped bullet._eb_btWheelInfo_get_m_wheelDirectionCS(this);
    inline function set_m_wheelDirectionCS(_v:Vector3):Vector3 return untyped bullet._eb_btWheelInfo_set_m_wheelDirectionCS(this, _v);
    public var m_wheelAxleCS(get, set) : Vector3;
    inline function get_m_wheelAxleCS():Vector3 return untyped bullet._eb_btWheelInfo_get_m_wheelAxleCS(this);
    inline function set_m_wheelAxleCS(_v:Vector3):Vector3 return untyped bullet._eb_btWheelInfo_set_m_wheelAxleCS(this, _v);
    public var m_rotation(get, set) : Float;
    inline function get_m_rotation():Float return untyped bullet._eb_btWheelInfo_get_m_rotation(this);
    inline function set_m_rotation(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_rotation(this, _v);
    public var m_deltaRotation(get, set) : Float;
    inline function get_m_deltaRotation():Float return untyped bullet._eb_btWheelInfo_get_m_deltaRotation(this);
    inline function set_m_deltaRotation(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_deltaRotation(this, _v);
    public var m_brake(get, set) : Float;
    inline function get_m_brake():Float return untyped bullet._eb_btWheelInfo_get_m_brake(this);
    inline function set_m_brake(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_brake(this, _v);
    public var m_clippedInvContactDotSuspension(get, set) : Float;
    inline function get_m_clippedInvContactDotSuspension():Float return untyped bullet._eb_btWheelInfo_get_m_clippedInvContactDotSuspension(this);
    inline function set_m_clippedInvContactDotSuspension(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_clippedInvContactDotSuspension(this, _v);
    public var m_suspensionRelativeVelocity(get, set) : Float;
    inline function get_m_suspensionRelativeVelocity():Float return untyped bullet._eb_btWheelInfo_get_m_suspensionRelativeVelocity(this);
    inline function set_m_suspensionRelativeVelocity(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_suspensionRelativeVelocity(this, _v);
    public var m_skidInfo(get, set) : Float;
    inline function get_m_skidInfo():Float return untyped bullet._eb_btWheelInfo_get_m_skidInfo(this);
    inline function set_m_skidInfo(_v:Float):Float return untyped bullet._eb_btWheelInfo_set_m_skidInfo(this, _v);
    inline public function delete():Void return untyped bullet._eb_btWheelInfo_delete(this);
}
#end
