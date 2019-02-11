package bullet;

#if hl
abstract DiscreteDynamicsWorld(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btDiscreteDynamicsWorld_new4")
    static function new4(dispatcher:Dispatcher, pairCache:BroadphaseInterface, constraintSolver:ConstraintSolver, collisionConfiguration:CollisionConfiguration):DiscreteDynamicsWorld return null;
    public inline function new(dispatcher:Dispatcher, pairCache:BroadphaseInterface, constraintSolver:ConstraintSolver, collisionConfiguration:CollisionConfiguration):Void this = new4(cast dispatcher, cast pairCache, cast constraintSolver, cast collisionConfiguration);
    @:hlNative("bullet", "btDiscreteDynamicsWorld_setGravity1")
    public function setGravity(gravity:Vector3):Void { }
    @:hlNative("bullet", "btDiscreteDynamicsWorld_getGravity0")
    public function getGravity():Vector3 return null;
    @:hlNative("bullet", "btDiscreteDynamicsWorld_addRigidBody1")
    function addRigidBody1(body:RigidBody):Void { }
    @:hlNative("bullet", "btDiscreteDynamicsWorld_addRigidBody3")
    function addRigidBody3(body:RigidBody, group:hl.UI16, mask:hl.UI16):Void { }
    public inline function addRigidBody(body:RigidBody, ?group:hl.UI16, ?mask:hl.UI16):Void if (group == null) addRigidBody1(cast body) else addRigidBody3(cast body, cast group, cast mask);
    @:hlNative("bullet", "btDiscreteDynamicsWorld_removeRigidBody1")
    public function removeRigidBody(body:RigidBody):Void { }
    @:hlNative("bullet", "btDiscreteDynamicsWorld_addConstraint2")
    public function addConstraint(constraint:TypedConstraint, ?disableCollisionsBetweenLinkedBodies:Bool):Void { }
    @:hlNative("bullet", "btDiscreteDynamicsWorld_removeConstraint1")
    public function removeConstraint(constraint:TypedConstraint):Void { }
    @:hlNative("bullet", "btDiscreteDynamicsWorld_stepSimulation3")
    public function stepSimulation(timeStep:Single, ?maxSubSteps:Int, ?fixedTimeStep:Single):Int return 0;
    @:hlNative("bullet", "btDiscreteDynamicsWorld_delete")
    public function delete():Void { }
    @:to
    inline function _toDynamicsWorld():DynamicsWorld return cast this;
    @:hlNative("bullet", "btDynamicsWorld_addAction1")
    public function addAction(action:ActionInterface):Void { }
    @:hlNative("bullet", "btDynamicsWorld_removeAction1")
    public function removeAction(action:ActionInterface):Void { }
    @:hlNative("bullet", "btDynamicsWorld_getSolverInfo0")
    public function getSolverInfo():ContactSolverInfo return null;
    @:to
    inline function _toCollisionWorld():CollisionWorld return cast this;
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
}
#elseif js
abstract DiscreteDynamicsWorld(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new4(dispatcher:Dispatcher, pairCache:BroadphaseInterface, constraintSolver:ConstraintSolver, collisionConfiguration:CollisionConfiguration):DiscreteDynamicsWorld return untyped bullet._eb_btDiscreteDynamicsWorld_new4(dispatcher, pairCache, constraintSolver, collisionConfiguration);
    public inline function new(dispatcher:Dispatcher, pairCache:BroadphaseInterface, constraintSolver:ConstraintSolver, collisionConfiguration:CollisionConfiguration):Void this = new4(cast dispatcher, cast pairCache, cast constraintSolver, cast collisionConfiguration);
    inline public function setGravity(gravity:Vector3):Void return untyped bullet._eb_btDiscreteDynamicsWorld_setGravity1(this, gravity);
    inline public function getGravity():Vector3 return untyped bullet._eb_btDiscreteDynamicsWorld_getGravity0(this);
    inline function addRigidBody1(body:RigidBody):Void return untyped bullet._eb_btDiscreteDynamicsWorld_addRigidBody1(this, body);
    inline function addRigidBody3(body:RigidBody, group:Int, mask:Int):Void return untyped bullet._eb_btDiscreteDynamicsWorld_addRigidBody3(this, body, group, mask);
    public inline function addRigidBody(body:RigidBody, ?group:Int, ?mask:Int):Void if (group == null) addRigidBody1(cast body) else addRigidBody3(cast body, cast group, cast mask);
    inline public function removeRigidBody(body:RigidBody):Void return untyped bullet._eb_btDiscreteDynamicsWorld_removeRigidBody1(this, body);
    inline public function addConstraint(constraint:TypedConstraint, ?disableCollisionsBetweenLinkedBodies:Bool):Void return untyped bullet._eb_btDiscreteDynamicsWorld_addConstraint2(this, constraint, disableCollisionsBetweenLinkedBodies);
    inline public function removeConstraint(constraint:TypedConstraint):Void return untyped bullet._eb_btDiscreteDynamicsWorld_removeConstraint1(this, constraint);
    inline public function stepSimulation(timeStep:Float, ?maxSubSteps:Int, ?fixedTimeStep:Float):Int return untyped bullet._eb_btDiscreteDynamicsWorld_stepSimulation3(this, timeStep, maxSubSteps, fixedTimeStep);
    inline public function delete():Void return untyped bullet._eb_btDiscreteDynamicsWorld_delete(this);
    @:to
    inline function _toDynamicsWorld():DynamicsWorld return cast this;
    inline public function addAction(action:ActionInterface):Void return untyped bullet._eb_btDynamicsWorld_addAction1(this, action);
    inline public function removeAction(action:ActionInterface):Void return untyped bullet._eb_btDynamicsWorld_removeAction1(this, action);
    inline public function getSolverInfo():ContactSolverInfo return untyped bullet._eb_btDynamicsWorld_getSolverInfo0(this);
    @:to
    inline function _toCollisionWorld():CollisionWorld return cast this;
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
}
#end
