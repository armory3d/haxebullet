package bullet;

#if hl
abstract Config(webidl.Types.Ref) to webidl.Types.Ref {
    public var kVCF(get, set) : Single;
    @:hlNative("bullet", "Config_get_kVCF")
    function get_kVCF():Single return 0.;
    @:hlNative("bullet", "Config_set_kVCF")
    function set_kVCF(_v:Single):Single return 0.;
    public var kDP(get, set) : Single;
    @:hlNative("bullet", "Config_get_kDP")
    function get_kDP():Single return 0.;
    @:hlNative("bullet", "Config_set_kDP")
    function set_kDP(_v:Single):Single return 0.;
    public var kDG(get, set) : Single;
    @:hlNative("bullet", "Config_get_kDG")
    function get_kDG():Single return 0.;
    @:hlNative("bullet", "Config_set_kDG")
    function set_kDG(_v:Single):Single return 0.;
    public var kLF(get, set) : Single;
    @:hlNative("bullet", "Config_get_kLF")
    function get_kLF():Single return 0.;
    @:hlNative("bullet", "Config_set_kLF")
    function set_kLF(_v:Single):Single return 0.;
    public var kPR(get, set) : Single;
    @:hlNative("bullet", "Config_get_kPR")
    function get_kPR():Single return 0.;
    @:hlNative("bullet", "Config_set_kPR")
    function set_kPR(_v:Single):Single return 0.;
    public var kVC(get, set) : Single;
    @:hlNative("bullet", "Config_get_kVC")
    function get_kVC():Single return 0.;
    @:hlNative("bullet", "Config_set_kVC")
    function set_kVC(_v:Single):Single return 0.;
    public var kDF(get, set) : Single;
    @:hlNative("bullet", "Config_get_kDF")
    function get_kDF():Single return 0.;
    @:hlNative("bullet", "Config_set_kDF")
    function set_kDF(_v:Single):Single return 0.;
    public var kMT(get, set) : Single;
    @:hlNative("bullet", "Config_get_kMT")
    function get_kMT():Single return 0.;
    @:hlNative("bullet", "Config_set_kMT")
    function set_kMT(_v:Single):Single return 0.;
    public var kCHR(get, set) : Single;
    @:hlNative("bullet", "Config_get_kCHR")
    function get_kCHR():Single return 0.;
    @:hlNative("bullet", "Config_set_kCHR")
    function set_kCHR(_v:Single):Single return 0.;
    public var kKHR(get, set) : Single;
    @:hlNative("bullet", "Config_get_kKHR")
    function get_kKHR():Single return 0.;
    @:hlNative("bullet", "Config_set_kKHR")
    function set_kKHR(_v:Single):Single return 0.;
    public var kSHR(get, set) : Single;
    @:hlNative("bullet", "Config_get_kSHR")
    function get_kSHR():Single return 0.;
    @:hlNative("bullet", "Config_set_kSHR")
    function set_kSHR(_v:Single):Single return 0.;
    public var kAHR(get, set) : Single;
    @:hlNative("bullet", "Config_get_kAHR")
    function get_kAHR():Single return 0.;
    @:hlNative("bullet", "Config_set_kAHR")
    function set_kAHR(_v:Single):Single return 0.;
    public var kSRHR_CL(get, set) : Single;
    @:hlNative("bullet", "Config_get_kSRHR_CL")
    function get_kSRHR_CL():Single return 0.;
    @:hlNative("bullet", "Config_set_kSRHR_CL")
    function set_kSRHR_CL(_v:Single):Single return 0.;
    public var kSKHR_CL(get, set) : Single;
    @:hlNative("bullet", "Config_get_kSKHR_CL")
    function get_kSKHR_CL():Single return 0.;
    @:hlNative("bullet", "Config_set_kSKHR_CL")
    function set_kSKHR_CL(_v:Single):Single return 0.;
    public var kSSHR_CL(get, set) : Single;
    @:hlNative("bullet", "Config_get_kSSHR_CL")
    function get_kSSHR_CL():Single return 0.;
    @:hlNative("bullet", "Config_set_kSSHR_CL")
    function set_kSSHR_CL(_v:Single):Single return 0.;
    public var kSR_SPLT_CL(get, set) : Single;
    @:hlNative("bullet", "Config_get_kSR_SPLT_CL")
    function get_kSR_SPLT_CL():Single return 0.;
    @:hlNative("bullet", "Config_set_kSR_SPLT_CL")
    function set_kSR_SPLT_CL(_v:Single):Single return 0.;
    public var kSK_SPLT_CL(get, set) : Single;
    @:hlNative("bullet", "Config_get_kSK_SPLT_CL")
    function get_kSK_SPLT_CL():Single return 0.;
    @:hlNative("bullet", "Config_set_kSK_SPLT_CL")
    function set_kSK_SPLT_CL(_v:Single):Single return 0.;
    public var kSS_SPLT_CL(get, set) : Single;
    @:hlNative("bullet", "Config_get_kSS_SPLT_CL")
    function get_kSS_SPLT_CL():Single return 0.;
    @:hlNative("bullet", "Config_set_kSS_SPLT_CL")
    function set_kSS_SPLT_CL(_v:Single):Single return 0.;
    public var maxvolume(get, set) : Single;
    @:hlNative("bullet", "Config_get_maxvolume")
    function get_maxvolume():Single return 0.;
    @:hlNative("bullet", "Config_set_maxvolume")
    function set_maxvolume(_v:Single):Single return 0.;
    public var timescale(get, set) : Single;
    @:hlNative("bullet", "Config_get_timescale")
    function get_timescale():Single return 0.;
    @:hlNative("bullet", "Config_set_timescale")
    function set_timescale(_v:Single):Single return 0.;
    public var viterations(get, set) : Int;
    @:hlNative("bullet", "Config_get_viterations")
    function get_viterations():Int return 0;
    @:hlNative("bullet", "Config_set_viterations")
    function set_viterations(_v:Int):Int return 0;
    public var piterations(get, set) : Int;
    @:hlNative("bullet", "Config_get_piterations")
    function get_piterations():Int return 0;
    @:hlNative("bullet", "Config_set_piterations")
    function set_piterations(_v:Int):Int return 0;
    public var diterations(get, set) : Int;
    @:hlNative("bullet", "Config_get_diterations")
    function get_diterations():Int return 0;
    @:hlNative("bullet", "Config_set_diterations")
    function set_diterations(_v:Int):Int return 0;
    public var citerations(get, set) : Int;
    @:hlNative("bullet", "Config_get_citerations")
    function get_citerations():Int return 0;
    @:hlNative("bullet", "Config_set_citerations")
    function set_citerations(_v:Int):Int return 0;
    public var collisions(get, set) : Int;
    @:hlNative("bullet", "Config_get_collisions")
    function get_collisions():Int return 0;
    @:hlNative("bullet", "Config_set_collisions")
    function set_collisions(_v:Int):Int return 0;
    @:hlNative("bullet", "Config_delete")
    public function delete():Void { }
}
#elseif js
abstract Config(webidl.Types.Ref) to webidl.Types.Ref {
    public var kVCF(get, set) : Float;
    inline function get_kVCF():Float return untyped bullet._eb_Config_get_kVCF(this);
    inline function set_kVCF(_v:Float):Float return untyped bullet._eb_Config_set_kVCF(this, _v);
    public var kDP(get, set) : Float;
    inline function get_kDP():Float return untyped bullet._eb_Config_get_kDP(this);
    inline function set_kDP(_v:Float):Float return untyped bullet._eb_Config_set_kDP(this, _v);
    public var kDG(get, set) : Float;
    inline function get_kDG():Float return untyped bullet._eb_Config_get_kDG(this);
    inline function set_kDG(_v:Float):Float return untyped bullet._eb_Config_set_kDG(this, _v);
    public var kLF(get, set) : Float;
    inline function get_kLF():Float return untyped bullet._eb_Config_get_kLF(this);
    inline function set_kLF(_v:Float):Float return untyped bullet._eb_Config_set_kLF(this, _v);
    public var kPR(get, set) : Float;
    inline function get_kPR():Float return untyped bullet._eb_Config_get_kPR(this);
    inline function set_kPR(_v:Float):Float return untyped bullet._eb_Config_set_kPR(this, _v);
    public var kVC(get, set) : Float;
    inline function get_kVC():Float return untyped bullet._eb_Config_get_kVC(this);
    inline function set_kVC(_v:Float):Float return untyped bullet._eb_Config_set_kVC(this, _v);
    public var kDF(get, set) : Float;
    inline function get_kDF():Float return untyped bullet._eb_Config_get_kDF(this);
    inline function set_kDF(_v:Float):Float return untyped bullet._eb_Config_set_kDF(this, _v);
    public var kMT(get, set) : Float;
    inline function get_kMT():Float return untyped bullet._eb_Config_get_kMT(this);
    inline function set_kMT(_v:Float):Float return untyped bullet._eb_Config_set_kMT(this, _v);
    public var kCHR(get, set) : Float;
    inline function get_kCHR():Float return untyped bullet._eb_Config_get_kCHR(this);
    inline function set_kCHR(_v:Float):Float return untyped bullet._eb_Config_set_kCHR(this, _v);
    public var kKHR(get, set) : Float;
    inline function get_kKHR():Float return untyped bullet._eb_Config_get_kKHR(this);
    inline function set_kKHR(_v:Float):Float return untyped bullet._eb_Config_set_kKHR(this, _v);
    public var kSHR(get, set) : Float;
    inline function get_kSHR():Float return untyped bullet._eb_Config_get_kSHR(this);
    inline function set_kSHR(_v:Float):Float return untyped bullet._eb_Config_set_kSHR(this, _v);
    public var kAHR(get, set) : Float;
    inline function get_kAHR():Float return untyped bullet._eb_Config_get_kAHR(this);
    inline function set_kAHR(_v:Float):Float return untyped bullet._eb_Config_set_kAHR(this, _v);
    public var kSRHR_CL(get, set) : Float;
    inline function get_kSRHR_CL():Float return untyped bullet._eb_Config_get_kSRHR_CL(this);
    inline function set_kSRHR_CL(_v:Float):Float return untyped bullet._eb_Config_set_kSRHR_CL(this, _v);
    public var kSKHR_CL(get, set) : Float;
    inline function get_kSKHR_CL():Float return untyped bullet._eb_Config_get_kSKHR_CL(this);
    inline function set_kSKHR_CL(_v:Float):Float return untyped bullet._eb_Config_set_kSKHR_CL(this, _v);
    public var kSSHR_CL(get, set) : Float;
    inline function get_kSSHR_CL():Float return untyped bullet._eb_Config_get_kSSHR_CL(this);
    inline function set_kSSHR_CL(_v:Float):Float return untyped bullet._eb_Config_set_kSSHR_CL(this, _v);
    public var kSR_SPLT_CL(get, set) : Float;
    inline function get_kSR_SPLT_CL():Float return untyped bullet._eb_Config_get_kSR_SPLT_CL(this);
    inline function set_kSR_SPLT_CL(_v:Float):Float return untyped bullet._eb_Config_set_kSR_SPLT_CL(this, _v);
    public var kSK_SPLT_CL(get, set) : Float;
    inline function get_kSK_SPLT_CL():Float return untyped bullet._eb_Config_get_kSK_SPLT_CL(this);
    inline function set_kSK_SPLT_CL(_v:Float):Float return untyped bullet._eb_Config_set_kSK_SPLT_CL(this, _v);
    public var kSS_SPLT_CL(get, set) : Float;
    inline function get_kSS_SPLT_CL():Float return untyped bullet._eb_Config_get_kSS_SPLT_CL(this);
    inline function set_kSS_SPLT_CL(_v:Float):Float return untyped bullet._eb_Config_set_kSS_SPLT_CL(this, _v);
    public var maxvolume(get, set) : Float;
    inline function get_maxvolume():Float return untyped bullet._eb_Config_get_maxvolume(this);
    inline function set_maxvolume(_v:Float):Float return untyped bullet._eb_Config_set_maxvolume(this, _v);
    public var timescale(get, set) : Float;
    inline function get_timescale():Float return untyped bullet._eb_Config_get_timescale(this);
    inline function set_timescale(_v:Float):Float return untyped bullet._eb_Config_set_timescale(this, _v);
    public var viterations(get, set) : Int;
    inline function get_viterations():Int return untyped bullet._eb_Config_get_viterations(this);
    inline function set_viterations(_v:Int):Int return untyped bullet._eb_Config_set_viterations(this, _v);
    public var piterations(get, set) : Int;
    inline function get_piterations():Int return untyped bullet._eb_Config_get_piterations(this);
    inline function set_piterations(_v:Int):Int return untyped bullet._eb_Config_set_piterations(this, _v);
    public var diterations(get, set) : Int;
    inline function get_diterations():Int return untyped bullet._eb_Config_get_diterations(this);
    inline function set_diterations(_v:Int):Int return untyped bullet._eb_Config_set_diterations(this, _v);
    public var citerations(get, set) : Int;
    inline function get_citerations():Int return untyped bullet._eb_Config_get_citerations(this);
    inline function set_citerations(_v:Int):Int return untyped bullet._eb_Config_set_citerations(this, _v);
    public var collisions(get, set) : Int;
    inline function get_collisions():Int return untyped bullet._eb_Config_get_collisions(this);
    inline function set_collisions(_v:Int):Int return untyped bullet._eb_Config_set_collisions(this, _v);
    inline public function delete():Void return untyped bullet._eb_Config_delete(this);
}
#end
