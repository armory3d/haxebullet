package bullet;

#if hl
abstract DefaultVehicleRaycaster(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btDefaultVehicleRaycaster_new1")
    static function new1(world:DynamicsWorld):DefaultVehicleRaycaster return null;
    public inline function new(world:DynamicsWorld):Void this = new1(cast world);
    @:hlNative("bullet", "btDefaultVehicleRaycaster_delete")
    public function delete():Void { }
    @:to
    inline function _toVehicleRaycaster():VehicleRaycaster return cast this;
    @:hlNative("bullet", "btVehicleRaycaster_castRay3")
    public function castRay(from:Vector3, to:Vector3, result:VehicleRaycasterResult):Void { }
}
#elseif js
abstract DefaultVehicleRaycaster(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new1(world:DynamicsWorld):DefaultVehicleRaycaster return untyped bullet._eb_btDefaultVehicleRaycaster_new1(world);
    public inline function new(world:DynamicsWorld):Void this = new1(cast world);
    inline public function delete():Void return untyped bullet._eb_btDefaultVehicleRaycaster_delete(this);
    @:to
    inline function _toVehicleRaycaster():VehicleRaycaster return cast this;
    inline public function castRay(from:Vector3, to:Vector3, result:VehicleRaycasterResult):Void return untyped bullet._eb_btVehicleRaycaster_castRay3(this, from, to, result);
}
#end
