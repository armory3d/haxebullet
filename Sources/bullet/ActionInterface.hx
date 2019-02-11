package bullet;

#if hl
abstract ActionInterface(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btActionInterface_updateAction2")
    public function updateAction(collisionWorld:CollisionWorld, deltaTimeStep:Single):Void { }
    @:hlNative("bullet", "btActionInterface_delete")
    public function delete():Void { }
}
#elseif js
abstract ActionInterface(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function updateAction(collisionWorld:CollisionWorld, deltaTimeStep:Float):Void return untyped bullet._eb_btActionInterface_updateAction2(this, collisionWorld, deltaTimeStep);
    inline public function delete():Void return untyped bullet._eb_btActionInterface_delete(this);
}
#end
