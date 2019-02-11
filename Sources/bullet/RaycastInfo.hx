package bullet;

#if hl
abstract RaycastInfo(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_contactNormalWS(get, set) : Vector3;
    @:hlNative("bullet", "RaycastInfo_get_m_contactNormalWS")
    function get_m_contactNormalWS():Vector3 return null;
    @:hlNative("bullet", "RaycastInfo_set_m_contactNormalWS")
    function set_m_contactNormalWS(_v:Vector3):Vector3 return null;
    public var m_contactPointWS(get, set) : Vector3;
    @:hlNative("bullet", "RaycastInfo_get_m_contactPointWS")
    function get_m_contactPointWS():Vector3 return null;
    @:hlNative("bullet", "RaycastInfo_set_m_contactPointWS")
    function set_m_contactPointWS(_v:Vector3):Vector3 return null;
    public var m_suspensionLength(get, set) : Single;
    @:hlNative("bullet", "RaycastInfo_get_m_suspensionLength")
    function get_m_suspensionLength():Single return 0.;
    @:hlNative("bullet", "RaycastInfo_set_m_suspensionLength")
    function set_m_suspensionLength(_v:Single):Single return 0.;
    public var m_hardPointWS(get, set) : Vector3;
    @:hlNative("bullet", "RaycastInfo_get_m_hardPointWS")
    function get_m_hardPointWS():Vector3 return null;
    @:hlNative("bullet", "RaycastInfo_set_m_hardPointWS")
    function set_m_hardPointWS(_v:Vector3):Vector3 return null;
    public var m_wheelDirectionWS(get, set) : Vector3;
    @:hlNative("bullet", "RaycastInfo_get_m_wheelDirectionWS")
    function get_m_wheelDirectionWS():Vector3 return null;
    @:hlNative("bullet", "RaycastInfo_set_m_wheelDirectionWS")
    function set_m_wheelDirectionWS(_v:Vector3):Vector3 return null;
    public var m_wheelAxleWS(get, set) : Vector3;
    @:hlNative("bullet", "RaycastInfo_get_m_wheelAxleWS")
    function get_m_wheelAxleWS():Vector3 return null;
    @:hlNative("bullet", "RaycastInfo_set_m_wheelAxleWS")
    function set_m_wheelAxleWS(_v:Vector3):Vector3 return null;
    public var m_isInContact(get, set) : Bool;
    @:hlNative("bullet", "RaycastInfo_get_m_isInContact")
    function get_m_isInContact():Bool return false;
    @:hlNative("bullet", "RaycastInfo_set_m_isInContact")
    function set_m_isInContact(_v:Bool):Bool return false;
    public var m_groundObject(get, set) : webidl.Types.Any;
    @:hlNative("bullet", "RaycastInfo_get_m_groundObject")
    function get_m_groundObject():webidl.Types.Any return null;
    @:hlNative("bullet", "RaycastInfo_set_m_groundObject")
    function set_m_groundObject(_v:webidl.Types.Any):webidl.Types.Any return null;
    @:hlNative("bullet", "RaycastInfo_delete")
    public function delete():Void { }
}
#elseif js
abstract RaycastInfo(webidl.Types.Ref) to webidl.Types.Ref {
    public var m_contactNormalWS(get, set) : Vector3;
    inline function get_m_contactNormalWS():Vector3 return untyped bullet._eb_RaycastInfo_get_m_contactNormalWS(this);
    inline function set_m_contactNormalWS(_v:Vector3):Vector3 return untyped bullet._eb_RaycastInfo_set_m_contactNormalWS(this, _v);
    public var m_contactPointWS(get, set) : Vector3;
    inline function get_m_contactPointWS():Vector3 return untyped bullet._eb_RaycastInfo_get_m_contactPointWS(this);
    inline function set_m_contactPointWS(_v:Vector3):Vector3 return untyped bullet._eb_RaycastInfo_set_m_contactPointWS(this, _v);
    public var m_suspensionLength(get, set) : Float;
    inline function get_m_suspensionLength():Float return untyped bullet._eb_RaycastInfo_get_m_suspensionLength(this);
    inline function set_m_suspensionLength(_v:Float):Float return untyped bullet._eb_RaycastInfo_set_m_suspensionLength(this, _v);
    public var m_hardPointWS(get, set) : Vector3;
    inline function get_m_hardPointWS():Vector3 return untyped bullet._eb_RaycastInfo_get_m_hardPointWS(this);
    inline function set_m_hardPointWS(_v:Vector3):Vector3 return untyped bullet._eb_RaycastInfo_set_m_hardPointWS(this, _v);
    public var m_wheelDirectionWS(get, set) : Vector3;
    inline function get_m_wheelDirectionWS():Vector3 return untyped bullet._eb_RaycastInfo_get_m_wheelDirectionWS(this);
    inline function set_m_wheelDirectionWS(_v:Vector3):Vector3 return untyped bullet._eb_RaycastInfo_set_m_wheelDirectionWS(this, _v);
    public var m_wheelAxleWS(get, set) : Vector3;
    inline function get_m_wheelAxleWS():Vector3 return untyped bullet._eb_RaycastInfo_get_m_wheelAxleWS(this);
    inline function set_m_wheelAxleWS(_v:Vector3):Vector3 return untyped bullet._eb_RaycastInfo_set_m_wheelAxleWS(this, _v);
    public var m_isInContact(get, set) : Bool;
    inline function get_m_isInContact():Bool return untyped bullet._eb_RaycastInfo_get_m_isInContact(this);
    inline function set_m_isInContact(_v:Bool):Bool return untyped bullet._eb_RaycastInfo_set_m_isInContact(this, _v);
    public var m_groundObject(get, set) : webidl.Types.Any;
    inline function get_m_groundObject():webidl.Types.Any return untyped bullet._eb_RaycastInfo_get_m_groundObject(this);
    inline function set_m_groundObject(_v:webidl.Types.Any):webidl.Types.Any return untyped bullet._eb_RaycastInfo_set_m_groundObject(this, _v);
    inline public function delete():Void return untyped bullet._eb_RaycastInfo_delete(this);
}
#end
