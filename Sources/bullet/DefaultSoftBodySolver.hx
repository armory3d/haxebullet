package bullet;

#if hl
abstract DefaultSoftBodySolver(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btDefaultSoftBodySolver_new0")
    static function new0():DefaultSoftBodySolver return null;
    public inline function new():Void this = new0();
    @:hlNative("bullet", "btDefaultSoftBodySolver_delete")
    public function delete():Void { }
    @:to
    inline function _toSoftBodySolver():SoftBodySolver return cast this;
}
#elseif js
abstract DefaultSoftBodySolver(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new0():DefaultSoftBodySolver return untyped bullet._eb_btDefaultSoftBodySolver_new0();
    public inline function new():Void this = new0();
    inline public function delete():Void return untyped bullet._eb_btDefaultSoftBodySolver_delete(this);
    @:to
    inline function _toSoftBodySolver():SoftBodySolver return cast this;
}
#end
