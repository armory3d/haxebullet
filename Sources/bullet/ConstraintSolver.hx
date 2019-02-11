package bullet;

#if hl
abstract ConstraintSolver(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btConstraintSolver_delete")
    public function delete():Void { }
}
#elseif js
abstract ConstraintSolver(webidl.Types.Ref) to webidl.Types.Ref {
    inline public function delete():Void return untyped bullet._eb_btConstraintSolver_delete(this);
}
#end
