package bullet;

#if hl
abstract SoftBody(webidl.Types.Ref) to webidl.Types.Ref {
    @:hlNative("bullet", "btSoftBody_new4")
    static function new4(worldInfo:SoftBodyWorldInfo, node_count:Int, x:Vector3, m:webidl.Types.NativePtr<Single>):SoftBody return null;
    public inline function new(worldInfo:SoftBodyWorldInfo, node_count:Int, x:Vector3, m:webidl.Types.NativePtr<Single>):Void this = new4(cast worldInfo, cast node_count, cast x, cast m);
    public var m_cfg(get, set) : Config;
    @:hlNative("bullet", "btSoftBody_get_m_cfg")
    function get_m_cfg():Config return null;
    @:hlNative("bullet", "btSoftBody_set_m_cfg")
    function set_m_cfg(_v:Config):Config return null;
    public var m_nodes(get, set) : TNodeArray;
    @:hlNative("bullet", "btSoftBody_get_m_nodes")
    function get_m_nodes():TNodeArray return null;
    @:hlNative("bullet", "btSoftBody_set_m_nodes")
    function set_m_nodes(_v:TNodeArray):TNodeArray return null;
    public var m_materials(get, set) : TMaterialArray;
    @:hlNative("bullet", "btSoftBody_get_m_materials")
    function get_m_materials():TMaterialArray return null;
    @:hlNative("bullet", "btSoftBody_set_m_materials")
    function set_m_materials(_v:TMaterialArray):TMaterialArray return null;
    @:hlNative("bullet", "btSoftBody_checkLink2")
    public function checkLink(node0:Int, node1:Int):Bool return false;
    @:hlNative("bullet", "btSoftBody_checkFace3")
    public function checkFace(node0:Int, node1:Int, node2:Int):Bool return false;
    @:hlNative("bullet", "btSoftBody_appendMaterial0")
    public function appendMaterial():Material return null;
    @:hlNative("bullet", "btSoftBody_appendNode2")
    public function appendNode(x:Vector3, m:Single):Void { }
    @:hlNative("bullet", "btSoftBody_appendLink4")
    public function appendLink(node0:Int, node1:Int, mat:Material, bcheckexist:Bool):Void { }
    @:hlNative("bullet", "btSoftBody_appendFace4")
    public function appendFace(node0:Int, node1:Int, node2:Int, mat:Material):Void { }
    @:hlNative("bullet", "btSoftBody_appendTetra5")
    public function appendTetra(node0:Int, node1:Int, node2:Int, node3:Int, mat:Material):Void { }
    @:hlNative("bullet", "btSoftBody_appendAnchor4")
    public function appendAnchor(node:Int, body:RigidBody, disableCollisionBetweenLinkedBodies:Bool, influence:Single):Void { }
    @:hlNative("bullet", "btSoftBody_getTotalMass0")
    public function getTotalMass():Single return 0.;
    @:hlNative("bullet", "btSoftBody_setTotalMass2")
    public function setTotalMass(mass:Single, fromfaces:Bool):Void { }
    @:hlNative("bullet", "btSoftBody_setMass2")
    public function setMass(node:Int, mass:Single):Void { }
    @:hlNative("bullet", "btSoftBody_transform1")
    public function transform(trs:Transform):Void { }
    @:hlNative("bullet", "btSoftBody_translate1")
    public function translate(trs:Vector3):Void { }
    @:hlNative("bullet", "btSoftBody_rotate1")
    public function rotate(rot:Quaternion):Void { }
    @:hlNative("bullet", "btSoftBody_scale1")
    public function scale(scl:Vector3):Void { }
    @:hlNative("bullet", "btSoftBody_generateClusters2")
    public function generateClusters(k:Int, ?maxiterations:Int):Int return 0;
    @:hlNative("bullet", "btSoftBody_upcast1")
    public function upcast(colObj:CollisionObject):SoftBody return null;
    @:hlNative("bullet", "btSoftBody_delete")
    public function delete():Void { }
    @:to
    inline function _toCollisionObject():CollisionObject return cast this;
    @:hlNative("bullet", "btCollisionObject_setAnisotropicFriction2")
    public function setAnisotropicFriction(anisotropicFriction:Vector3, frictionMode:Int):Void { }
    @:hlNative("bullet", "btCollisionObject_getCollisionShape0")
    public function getCollisionShape():CollisionShape return null;
    @:hlNative("bullet", "btCollisionObject_setContactProcessingThreshold1")
    public function setContactProcessingThreshold(contactProcessingThreshold:Single):Void { }
    @:hlNative("bullet", "btCollisionObject_setActivationState1")
    public function setActivationState(newState:Int):Void { }
    @:hlNative("bullet", "btCollisionObject_forceActivationState1")
    public function forceActivationState(newState:Int):Void { }
    @:hlNative("bullet", "btCollisionObject_activate1")
    public function activate(?forceActivation:Bool):Void { }
    @:hlNative("bullet", "btCollisionObject_isActive0")
    public function isActive():Bool return false;
    @:hlNative("bullet", "btCollisionObject_isKinematicObject0")
    public function isKinematicObject():Bool return false;
    @:hlNative("bullet", "btCollisionObject_isStaticObject0")
    public function isStaticObject():Bool return false;
    @:hlNative("bullet", "btCollisionObject_isStaticOrKinematicObject0")
    public function isStaticOrKinematicObject():Bool return false;
    @:hlNative("bullet", "btCollisionObject_setRestitution1")
    public function setRestitution(rest:Single):Void { }
    @:hlNative("bullet", "btCollisionObject_setFriction1")
    public function setFriction(frict:Single):Void { }
    @:hlNative("bullet", "btCollisionObject_setRollingFriction1")
    public function setRollingFriction(frict:Single):Void { }
    @:hlNative("bullet", "btCollisionObject_getWorldTransform0")
    public function getWorldTransform():Transform return null;
    @:hlNative("bullet", "btCollisionObject_getCollisionFlags0")
    public function getCollisionFlags():Int return 0;
    @:hlNative("bullet", "btCollisionObject_setCollisionFlags1")
    public function setCollisionFlags(flags:Int):Void { }
    @:hlNative("bullet", "btCollisionObject_setWorldTransform1")
    public function setWorldTransform(worldTrans:Transform):Void { }
    @:hlNative("bullet", "btCollisionObject_setCollisionShape1")
    public function setCollisionShape(collisionShape:CollisionShape):Void { }
    @:hlNative("bullet", "btCollisionObject_setCcdMotionThreshold1")
    public function setCcdMotionThreshold(ccdMotionThreshold:Single):Void { }
    @:hlNative("bullet", "btCollisionObject_setCcdSweptSphereRadius1")
    public function setCcdSweptSphereRadius(radius:Single):Void { }
    @:hlNative("bullet", "btCollisionObject_getUserIndex0")
    public function getUserIndex():Int return 0;
    @:hlNative("bullet", "btCollisionObject_setUserIndex1")
    public function setUserIndex(index:Int):Void { }
    @:hlNative("bullet", "btCollisionObject_getUserPointer0")
    public function getUserPointer():webidl.Types.VoidPtr return null;
    @:hlNative("bullet", "btCollisionObject_setUserPointer1")
    public function setUserPointer(userPointer:webidl.Types.VoidPtr):Void { }
}
#elseif js
abstract SoftBody(webidl.Types.Ref) to webidl.Types.Ref {
    inline static function new4(worldInfo:SoftBodyWorldInfo, node_count:Int, x:Vector3, m:webidl.Types.NativePtr<Float>):SoftBody return untyped bullet._eb_btSoftBody_new4(worldInfo, node_count, x, m);
    public inline function new(worldInfo:SoftBodyWorldInfo, node_count:Int, x:Vector3, m:webidl.Types.NativePtr<Float>):Void this = new4(cast worldInfo, cast node_count, cast x, cast m);
    public var m_cfg(get, set) : Config;
    inline function get_m_cfg():Config return untyped bullet._eb_btSoftBody_get_m_cfg(this);
    inline function set_m_cfg(_v:Config):Config return untyped bullet._eb_btSoftBody_set_m_cfg(this, _v);
    public var m_nodes(get, set) : TNodeArray;
    inline function get_m_nodes():TNodeArray return untyped bullet._eb_btSoftBody_get_m_nodes(this);
    inline function set_m_nodes(_v:TNodeArray):TNodeArray return untyped bullet._eb_btSoftBody_set_m_nodes(this, _v);
    public var m_materials(get, set) : TMaterialArray;
    inline function get_m_materials():TMaterialArray return untyped bullet._eb_btSoftBody_get_m_materials(this);
    inline function set_m_materials(_v:TMaterialArray):TMaterialArray return untyped bullet._eb_btSoftBody_set_m_materials(this, _v);
    inline public function checkLink(node0:Int, node1:Int):Bool return untyped bullet._eb_btSoftBody_checkLink2(this, node0, node1);
    inline public function checkFace(node0:Int, node1:Int, node2:Int):Bool return untyped bullet._eb_btSoftBody_checkFace3(this, node0, node1, node2);
    inline public function appendMaterial():Material return untyped bullet._eb_btSoftBody_appendMaterial0(this);
    inline public function appendNode(x:Vector3, m:Float):Void return untyped bullet._eb_btSoftBody_appendNode2(this, x, m);
    inline public function appendLink(node0:Int, node1:Int, mat:Material, bcheckexist:Bool):Void return untyped bullet._eb_btSoftBody_appendLink4(this, node0, node1, mat, bcheckexist);
    inline public function appendFace(node0:Int, node1:Int, node2:Int, mat:Material):Void return untyped bullet._eb_btSoftBody_appendFace4(this, node0, node1, node2, mat);
    inline public function appendTetra(node0:Int, node1:Int, node2:Int, node3:Int, mat:Material):Void return untyped bullet._eb_btSoftBody_appendTetra5(this, node0, node1, node2, node3, mat);
    inline public function appendAnchor(node:Int, body:RigidBody, disableCollisionBetweenLinkedBodies:Bool, influence:Float):Void return untyped bullet._eb_btSoftBody_appendAnchor4(this, node, body, disableCollisionBetweenLinkedBodies, influence);
    inline public function getTotalMass():Float return untyped bullet._eb_btSoftBody_getTotalMass0(this);
    inline public function setTotalMass(mass:Float, fromfaces:Bool):Void return untyped bullet._eb_btSoftBody_setTotalMass2(this, mass, fromfaces);
    inline public function setMass(node:Int, mass:Float):Void return untyped bullet._eb_btSoftBody_setMass2(this, node, mass);
    inline public function transform(trs:Transform):Void return untyped bullet._eb_btSoftBody_transform1(this, trs);
    inline public function translate(trs:Vector3):Void return untyped bullet._eb_btSoftBody_translate1(this, trs);
    inline public function rotate(rot:Quaternion):Void return untyped bullet._eb_btSoftBody_rotate1(this, rot);
    inline public function scale(scl:Vector3):Void return untyped bullet._eb_btSoftBody_scale1(this, scl);
    inline public function generateClusters(k:Int, ?maxiterations:Int):Int return untyped bullet._eb_btSoftBody_generateClusters2(this, k, maxiterations);
    inline public function upcast(colObj:CollisionObject):SoftBody return untyped bullet._eb_btSoftBody_upcast1(this, colObj);
    inline public function delete():Void return untyped bullet._eb_btSoftBody_delete(this);
    @:to
    inline function _toCollisionObject():CollisionObject return cast this;
    inline public function setAnisotropicFriction(anisotropicFriction:Vector3, frictionMode:Int):Void return untyped bullet._eb_btCollisionObject_setAnisotropicFriction2(this, anisotropicFriction, frictionMode);
    inline public function getCollisionShape():CollisionShape return untyped bullet._eb_btCollisionObject_getCollisionShape0(this);
    inline public function setContactProcessingThreshold(contactProcessingThreshold:Float):Void return untyped bullet._eb_btCollisionObject_setContactProcessingThreshold1(this, contactProcessingThreshold);
    inline public function setActivationState(newState:Int):Void return untyped bullet._eb_btCollisionObject_setActivationState1(this, newState);
    inline public function forceActivationState(newState:Int):Void return untyped bullet._eb_btCollisionObject_forceActivationState1(this, newState);
    inline public function activate(?forceActivation:Bool):Void return untyped bullet._eb_btCollisionObject_activate1(this, forceActivation);
    inline public function isActive():Bool return untyped bullet._eb_btCollisionObject_isActive0(this);
    inline public function isKinematicObject():Bool return untyped bullet._eb_btCollisionObject_isKinematicObject0(this);
    inline public function isStaticObject():Bool return untyped bullet._eb_btCollisionObject_isStaticObject0(this);
    inline public function isStaticOrKinematicObject():Bool return untyped bullet._eb_btCollisionObject_isStaticOrKinematicObject0(this);
    inline public function setRestitution(rest:Float):Void return untyped bullet._eb_btCollisionObject_setRestitution1(this, rest);
    inline public function setFriction(frict:Float):Void return untyped bullet._eb_btCollisionObject_setFriction1(this, frict);
    inline public function setRollingFriction(frict:Float):Void return untyped bullet._eb_btCollisionObject_setRollingFriction1(this, frict);
    inline public function getWorldTransform():Transform return untyped bullet._eb_btCollisionObject_getWorldTransform0(this);
    inline public function getCollisionFlags():Int return untyped bullet._eb_btCollisionObject_getCollisionFlags0(this);
    inline public function setCollisionFlags(flags:Int):Void return untyped bullet._eb_btCollisionObject_setCollisionFlags1(this, flags);
    inline public function setWorldTransform(worldTrans:Transform):Void return untyped bullet._eb_btCollisionObject_setWorldTransform1(this, worldTrans);
    inline public function setCollisionShape(collisionShape:CollisionShape):Void return untyped bullet._eb_btCollisionObject_setCollisionShape1(this, collisionShape);
    inline public function setCcdMotionThreshold(ccdMotionThreshold:Float):Void return untyped bullet._eb_btCollisionObject_setCcdMotionThreshold1(this, ccdMotionThreshold);
    inline public function setCcdSweptSphereRadius(radius:Float):Void return untyped bullet._eb_btCollisionObject_setCcdSweptSphereRadius1(this, radius);
    inline public function getUserIndex():Int return untyped bullet._eb_btCollisionObject_getUserIndex0(this);
    inline public function setUserIndex(index:Int):Void return untyped bullet._eb_btCollisionObject_setUserIndex1(this, index);
    inline public function getUserPointer():webidl.Types.VoidPtr return untyped bullet._eb_btCollisionObject_getUserPointer0(this);
    inline public function setUserPointer(userPointer:webidl.Types.VoidPtr):Void return untyped bullet._eb_btCollisionObject_setUserPointer1(this, userPointer);
}
#end
