package bullet;

#if hl
abstract PersistentManifold(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btPersistentManifold_new0")
    static function new0():PersistentManifold return null;
    public inline function new():Void this = new0();
    @:hlNative("bullet", "btPersistentManifold_getBody00")
    public function getBody0():CollisionObject return null;
    @:hlNative("bullet", "btPersistentManifold_getBody10")
    public function getBody1():CollisionObject return null;
    @:hlNative("bullet", "btPersistentManifold_getNumContacts0")
    public function getNumContacts():Int return 0;
    @:hlNative("bullet", "btPersistentManifold_getContactPoint1")
    public function getContactPoint(index:Int):ManifoldPoint return null;
    @:hlNative("bullet", "btPersistentManifold_delete")
    public function delete():Void { }
}
#elseif js
abstract PersistentManifold(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():PersistentManifold return untyped bullet._eb_btPersistentManifold_new0();
    public inline function new():Void this = new0();
    inline public function getBody0():CollisionObject return untyped bullet._eb_btPersistentManifold_getBody00(this);
    inline public function getBody1():CollisionObject return untyped bullet._eb_btPersistentManifold_getBody10(this);
    inline public function getNumContacts():Int return untyped bullet._eb_btPersistentManifold_getNumContacts0(this);
    inline public function getContactPoint(index:Int):ManifoldPoint return untyped bullet._eb_btPersistentManifold_getContactPoint1(this, index);
    inline public function delete():Void return untyped bullet._eb_btPersistentManifold_delete(this);
}
#end
