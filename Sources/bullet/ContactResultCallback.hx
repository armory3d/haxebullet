package bullet;

#if hl
abstract ContactResultCallback(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "ContactResultCallback_addSingleResult7")
    public function addSingleResult(cp:ManifoldPoint, colObj0Wrap:CollisionObjectWrapper, partId0:Int, index0:Int, colObj1Wrap:CollisionObjectWrapper, partId1:Int, index1:Int):Single return 0.;
    @:hlNative("bullet", "ContactResultCallback_delete")
    public function delete():Void { }
}
#elseif js
abstract ContactResultCallback(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function addSingleResult(cp:ManifoldPoint, colObj0Wrap:CollisionObjectWrapper, partId0:Int, index0:Int, colObj1Wrap:CollisionObjectWrapper, partId1:Int, index1:Int):Float return untyped bullet._eb_ContactResultCallback_addSingleResult7(this, cp, colObj0Wrap, partId0, index0, colObj1Wrap, partId1, index1);
    inline public function delete():Void return untyped bullet._eb_ContactResultCallback_delete(this);
}
#end
