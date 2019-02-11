package bullet;

#if hl
abstract SequentialImpulseConstraintSolver(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btSequentialImpulseConstraintSolver_new0")
    static function new0():SequentialImpulseConstraintSolver return null;
    public inline function new():Void this = new0();
    @:hlNative("bullet", "btSequentialImpulseConstraintSolver_delete")
    public function delete():Void { }
    @:to
    inline function _toConstraintSolver():ConstraintSolver return cast this;
}
#elseif js
abstract SequentialImpulseConstraintSolver(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():SequentialImpulseConstraintSolver return untyped bullet._eb_btSequentialImpulseConstraintSolver_new0();
    public inline function new():Void this = new0();
    inline public function delete():Void return untyped bullet._eb_btSequentialImpulseConstraintSolver_delete(this);
    @:to
    inline function _toConstraintSolver():ConstraintSolver return cast this;
}
#end
