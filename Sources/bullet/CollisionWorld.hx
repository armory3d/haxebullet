package bullet;

#if hl
abstract CollisionWorld(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btCollisionWorld_getDispatcher0")
    public function getDispatcher():Dispatcher return null;
    @:hlNative("bullet", "btCollisionWorld_rayTest3")
    public function rayTest(rayFromWorld:Vector3, rayToWorld:Vector3, resultCallback:RayResultCallback):Void { }
    @:hlNative("bullet", "btCollisionWorld_getPairCache0")
    public function getPairCache():OverlappingPairCache return null;
    @:hlNative("bullet", "btCollisionWorld_getDispatchInfo0")
    public function getDispatchInfo():DispatcherInfo return null;
    @:hlNative("bullet", "btCollisionWorld_addCollisionObject3")
    public function addCollisionObject(collisionObject:CollisionObject, ?collisionFilterGroup:hl.UI16, ?collisionFilterMask:hl.UI16):Void { }
    @:hlNative("bullet", "btCollisionWorld_getBroadphase0")
    public function getBroadphase():BroadphaseInterface return null;
    @:hlNative("bullet", "btCollisionWorld_convexSweepTest5")
    public function convexSweepTest(castShape:ConvexShape, from:Transform, to:Transform, resultCallback:ConvexResultCallback, allowedCcdPenetration:Single):Void { }
    @:hlNative("bullet", "btCollisionWorld_contactPairTest3")
    public function contactPairTest(colObjA:CollisionObject, colObjB:CollisionObject, resultCallback:ContactResultCallback):Void { }
    @:hlNative("bullet", "btCollisionWorld_contactTest2")
    public function contactTest(colObj:CollisionObject, resultCallback:ContactResultCallback):Void { }
    @:hlNative("bullet", "btCollisionWorld_updateSingleAabb1")
    public function updateSingleAabb(colObj:CollisionObject):Void { }
    @:hlNative("bullet", "btCollisionWorld_delete")
    public function delete():Void { }
}
#elseif js
abstract CollisionWorld(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function getDispatcher():Dispatcher return untyped bullet._eb_btCollisionWorld_getDispatcher0(this);
    inline public function rayTest(rayFromWorld:Vector3, rayToWorld:Vector3, resultCallback:RayResultCallback):Void return untyped bullet._eb_btCollisionWorld_rayTest3(this, rayFromWorld, rayToWorld, resultCallback);
    inline public function getPairCache():OverlappingPairCache return untyped bullet._eb_btCollisionWorld_getPairCache0(this);
    inline public function getDispatchInfo():DispatcherInfo return untyped bullet._eb_btCollisionWorld_getDispatchInfo0(this);
    inline public function addCollisionObject(collisionObject:CollisionObject, ?collisionFilterGroup:Int, ?collisionFilterMask:Int):Void return untyped bullet._eb_btCollisionWorld_addCollisionObject3(this, collisionObject, collisionFilterGroup, collisionFilterMask);
    inline public function getBroadphase():BroadphaseInterface return untyped bullet._eb_btCollisionWorld_getBroadphase0(this);
    inline public function convexSweepTest(castShape:ConvexShape, from:Transform, to:Transform, resultCallback:ConvexResultCallback, allowedCcdPenetration:Float):Void return untyped bullet._eb_btCollisionWorld_convexSweepTest5(this, castShape, from, to, resultCallback, allowedCcdPenetration);
    inline public function contactPairTest(colObjA:CollisionObject, colObjB:CollisionObject, resultCallback:ContactResultCallback):Void return untyped bullet._eb_btCollisionWorld_contactPairTest3(this, colObjA, colObjB, resultCallback);
    inline public function contactTest(colObj:CollisionObject, resultCallback:ContactResultCallback):Void return untyped bullet._eb_btCollisionWorld_contactTest2(this, colObj, resultCallback);
    inline public function updateSingleAabb(colObj:CollisionObject):Void return untyped bullet._eb_btCollisionWorld_updateSingleAabb1(this, colObj);
    inline public function delete():Void return untyped bullet._eb_btCollisionWorld_delete(this);
}
#end
