package bullet;

#if hl
abstract VehicleRaycaster(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btVehicleRaycaster_castRay3")
    public function castRay(from:Vector3, to:Vector3, result:VehicleRaycasterResult):Void { }
    @:hlNative("bullet", "btVehicleRaycaster_delete")
    public function delete():Void { }
}
#elseif js
abstract VehicleRaycaster(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function castRay(from:Vector3, to:Vector3, result:VehicleRaycasterResult):Void return untyped bullet._eb_btVehicleRaycaster_castRay3(this, from, to, result);
    inline public function delete():Void return untyped bullet._eb_btVehicleRaycaster_delete(this);
}
#end
