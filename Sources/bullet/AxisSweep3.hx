package bullet;

#if hl
abstract AxisSweep3(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btAxisSweep3_new5")
    static function new5(worldAabbMin:Vector3, worldAabbMax:Vector3, ?maxHandles:Int, ?pairCache:OverlappingPairCache, ?disableRaycastAccelerator:Bool):AxisSweep3 return null;
    public inline function new(worldAabbMin:Vector3, worldAabbMax:Vector3, ?maxHandles:Int, ?pairCache:OverlappingPairCache, ?disableRaycastAccelerator:Bool):Void this = new5(cast worldAabbMin, cast worldAabbMax, cast maxHandles, cast pairCache, cast disableRaycastAccelerator);
    @:hlNative("bullet", "btAxisSweep3_delete")
    public function delete():Void { }
}
#elseif js
abstract AxisSweep3(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new5(worldAabbMin:Vector3, worldAabbMax:Vector3, ?maxHandles:Int, ?pairCache:OverlappingPairCache, ?disableRaycastAccelerator:Bool):AxisSweep3 return untyped bullet._eb_btAxisSweep3_new5(worldAabbMin, worldAabbMax, maxHandles, pairCache, disableRaycastAccelerator);
    public inline function new(worldAabbMin:Vector3, worldAabbMax:Vector3, ?maxHandles:Int, ?pairCache:OverlappingPairCache, ?disableRaycastAccelerator:Bool):Void this = new5(cast worldAabbMin, cast worldAabbMax, cast maxHandles, cast pairCache, cast disableRaycastAccelerator);
    inline public function delete():Void return untyped bullet._eb_btAxisSweep3_delete(this);
}
#end
