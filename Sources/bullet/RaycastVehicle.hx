package bullet;

#if hl
abstract RaycastVehicle(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btRaycastVehicle_new3")
    static function new3(tuning:VehicleTuning, chassis:RigidBody, raycaster:VehicleRaycaster):RaycastVehicle return null;
    public inline function new(tuning:VehicleTuning, chassis:RigidBody, raycaster:VehicleRaycaster):Void this = new3(cast tuning, cast chassis, cast raycaster);
    @:hlNative("bullet", "btRaycastVehicle_applyEngineForce2")
    public function applyEngineForce(force:Single, wheel:Int):Void { }
    @:hlNative("bullet", "btRaycastVehicle_setSteeringValue2")
    public function setSteeringValue(steering:Single, wheel:Int):Void { }
    @:hlNative("bullet", "btRaycastVehicle_getWheelTransformWS1")
    public function getWheelTransformWS(wheelIndex:Int):Transform return null;
    @:hlNative("bullet", "btRaycastVehicle_updateWheelTransform2")
    public function updateWheelTransform(wheelIndex:Int, interpolatedTransform:Bool):Void { }
    @:hlNative("bullet", "btRaycastVehicle_addWheel7")
    public function addWheel(connectionPointCS0:Vector3, wheelDirectionCS0:Vector3, wheelAxleCS:Vector3, suspensionRestLength:Single, wheelRadius:Single, tuning:VehicleTuning, isFrontWheel:Bool):WheelInfo return null;
    @:hlNative("bullet", "btRaycastVehicle_getNumWheels0")
    public function getNumWheels():Int return 0;
    @:hlNative("bullet", "btRaycastVehicle_getRigidBody0")
    public function getRigidBody():RigidBody return null;
    @:hlNative("bullet", "btRaycastVehicle_getWheelInfo1")
    public function getWheelInfo(index:Int):WheelInfo return null;
    @:hlNative("bullet", "btRaycastVehicle_setBrake2")
    public function setBrake(brake:Single, wheelIndex:Int):Void { }
    @:hlNative("bullet", "btRaycastVehicle_setCoordinateSystem3")
    public function setCoordinateSystem(rightIndex:Int, upIndex:Int, forwardIndex:Int):Void { }
    @:hlNative("bullet", "btRaycastVehicle_getCurrentSpeedKmHour0")
    public function getCurrentSpeedKmHour():Single return 0.;
    @:hlNative("bullet", "btRaycastVehicle_getChassisWorldTransform0")
    public function getChassisWorldTransform():Transform return null;
    @:hlNative("bullet", "btRaycastVehicle_rayCast1")
    public function rayCast(wheel:WheelInfo):Single return 0.;
    @:hlNative("bullet", "btRaycastVehicle_updateVehicle1")
    public function updateVehicle(step:Single):Void { }
    @:hlNative("bullet", "btRaycastVehicle_resetSuspension0")
    public function resetSuspension():Void { }
    @:hlNative("bullet", "btRaycastVehicle_getSteeringValue1")
    public function getSteeringValue(wheel:Int):Single return 0.;
    @:hlNative("bullet", "btRaycastVehicle_updateWheelTransformsWS2")
    public function updateWheelTransformsWS(wheel:WheelInfo, ?interpolatedTransform:Bool):Void { }
    @:hlNative("bullet", "btRaycastVehicle_setPitchControl1")
    public function setPitchControl(pitch:Single):Void { }
    @:hlNative("bullet", "btRaycastVehicle_updateSuspension1")
    public function updateSuspension(deltaTime:Single):Void { }
    @:hlNative("bullet", "btRaycastVehicle_updateFriction1")
    public function updateFriction(timeStep:Single):Void { }
    @:hlNative("bullet", "btRaycastVehicle_getRightAxis0")
    public function getRightAxis():Int return 0;
    @:hlNative("bullet", "btRaycastVehicle_getUpAxis0")
    public function getUpAxis():Int return 0;
    @:hlNative("bullet", "btRaycastVehicle_getForwardAxis0")
    public function getForwardAxis():Int return 0;
    @:hlNative("bullet", "btRaycastVehicle_getForwardVector0")
    public function getForwardVector():Vector3 return null;
    @:hlNative("bullet", "btRaycastVehicle_getUserConstraintType0")
    public function getUserConstraintType():Int return 0;
    @:hlNative("bullet", "btRaycastVehicle_setUserConstraintType1")
    public function setUserConstraintType(userConstraintType:Int):Void { }
    @:hlNative("bullet", "btRaycastVehicle_setUserConstraintId1")
    public function setUserConstraintId(uid:Int):Void { }
    @:hlNative("bullet", "btRaycastVehicle_getUserConstraintId0")
    public function getUserConstraintId():Int return 0;
    @:hlNative("bullet", "btRaycastVehicle_delete")
    public function delete():Void { }
    @:to
    inline function _toActionInterface():ActionInterface return cast this;
    @:hlNative("bullet", "btActionInterface_updateAction2")
    public function updateAction(collisionWorld:CollisionWorld, deltaTimeStep:Single):Void { }
}
#elseif js
abstract RaycastVehicle(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new3(tuning:VehicleTuning, chassis:RigidBody, raycaster:VehicleRaycaster):RaycastVehicle return untyped bullet._eb_btRaycastVehicle_new3(tuning, chassis, raycaster);
    public inline function new(tuning:VehicleTuning, chassis:RigidBody, raycaster:VehicleRaycaster):Void this = new3(cast tuning, cast chassis, cast raycaster);
    inline public function applyEngineForce(force:Float, wheel:Int):Void return untyped bullet._eb_btRaycastVehicle_applyEngineForce2(this, force, wheel);
    inline public function setSteeringValue(steering:Float, wheel:Int):Void return untyped bullet._eb_btRaycastVehicle_setSteeringValue2(this, steering, wheel);
    inline public function getWheelTransformWS(wheelIndex:Int):Transform return untyped bullet._eb_btRaycastVehicle_getWheelTransformWS1(this, wheelIndex);
    inline public function updateWheelTransform(wheelIndex:Int, interpolatedTransform:Bool):Void return untyped bullet._eb_btRaycastVehicle_updateWheelTransform2(this, wheelIndex, interpolatedTransform);
    inline public function addWheel(connectionPointCS0:Vector3, wheelDirectionCS0:Vector3, wheelAxleCS:Vector3, suspensionRestLength:Float, wheelRadius:Float, tuning:VehicleTuning, isFrontWheel:Bool):WheelInfo return untyped bullet._eb_btRaycastVehicle_addWheel7(this, connectionPointCS0, wheelDirectionCS0, wheelAxleCS, suspensionRestLength, wheelRadius, tuning, isFrontWheel);
    inline public function getNumWheels():Int return untyped bullet._eb_btRaycastVehicle_getNumWheels0(this);
    inline public function getRigidBody():RigidBody return untyped bullet._eb_btRaycastVehicle_getRigidBody0(this);
    inline public function getWheelInfo(index:Int):WheelInfo return untyped bullet._eb_btRaycastVehicle_getWheelInfo1(this, index);
    inline public function setBrake(brake:Float, wheelIndex:Int):Void return untyped bullet._eb_btRaycastVehicle_setBrake2(this, brake, wheelIndex);
    inline public function setCoordinateSystem(rightIndex:Int, upIndex:Int, forwardIndex:Int):Void return untyped bullet._eb_btRaycastVehicle_setCoordinateSystem3(this, rightIndex, upIndex, forwardIndex);
    inline public function getCurrentSpeedKmHour():Float return untyped bullet._eb_btRaycastVehicle_getCurrentSpeedKmHour0(this);
    inline public function getChassisWorldTransform():Transform return untyped bullet._eb_btRaycastVehicle_getChassisWorldTransform0(this);
    inline public function rayCast(wheel:WheelInfo):Float return untyped bullet._eb_btRaycastVehicle_rayCast1(this, wheel);
    inline public function updateVehicle(step:Float):Void return untyped bullet._eb_btRaycastVehicle_updateVehicle1(this, step);
    inline public function resetSuspension():Void return untyped bullet._eb_btRaycastVehicle_resetSuspension0(this);
    inline public function getSteeringValue(wheel:Int):Float return untyped bullet._eb_btRaycastVehicle_getSteeringValue1(this, wheel);
    inline public function updateWheelTransformsWS(wheel:WheelInfo, ?interpolatedTransform:Bool):Void return untyped bullet._eb_btRaycastVehicle_updateWheelTransformsWS2(this, wheel, interpolatedTransform);
    inline public function setPitchControl(pitch:Float):Void return untyped bullet._eb_btRaycastVehicle_setPitchControl1(this, pitch);
    inline public function updateSuspension(deltaTime:Float):Void return untyped bullet._eb_btRaycastVehicle_updateSuspension1(this, deltaTime);
    inline public function updateFriction(timeStep:Float):Void return untyped bullet._eb_btRaycastVehicle_updateFriction1(this, timeStep);
    inline public function getRightAxis():Int return untyped bullet._eb_btRaycastVehicle_getRightAxis0(this);
    inline public function getUpAxis():Int return untyped bullet._eb_btRaycastVehicle_getUpAxis0(this);
    inline public function getForwardAxis():Int return untyped bullet._eb_btRaycastVehicle_getForwardAxis0(this);
    inline public function getForwardVector():Vector3 return untyped bullet._eb_btRaycastVehicle_getForwardVector0(this);
    inline public function getUserConstraintType():Int return untyped bullet._eb_btRaycastVehicle_getUserConstraintType0(this);
    inline public function setUserConstraintType(userConstraintType:Int):Void return untyped bullet._eb_btRaycastVehicle_setUserConstraintType1(this, userConstraintType);
    inline public function setUserConstraintId(uid:Int):Void return untyped bullet._eb_btRaycastVehicle_setUserConstraintId1(this, uid);
    inline public function getUserConstraintId():Int return untyped bullet._eb_btRaycastVehicle_getUserConstraintId0(this);
    inline public function delete():Void return untyped bullet._eb_btRaycastVehicle_delete(this);
    @:to
    inline function _toActionInterface():ActionInterface return cast this;
    inline public function updateAction(collisionWorld:CollisionWorld, deltaTimeStep:Float):Void return untyped bullet._eb_btActionInterface_updateAction2(this, collisionWorld, deltaTimeStep);
}
#end
