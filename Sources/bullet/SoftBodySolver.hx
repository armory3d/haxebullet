package bullet;

#if hl
abstract SoftBodySolver(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btSoftBodySolver_delete")
    public function delete():Void { }
}
#elseif js
abstract SoftBodySolver(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function delete():Void return untyped bullet._eb_btSoftBodySolver_delete(this);
}
#end
