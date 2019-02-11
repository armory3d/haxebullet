package bullet;

#if hl
abstract CollisionConfiguration(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btCollisionConfiguration_delete")
    public function delete():Void { }
}
#elseif js
abstract CollisionConfiguration(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function delete():Void return untyped bullet._eb_btCollisionConfiguration_delete(this);
}
#end
