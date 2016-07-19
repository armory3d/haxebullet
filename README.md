# haxebullet

Native [Bullet 3D Physics](http://bulletphysics.org/) for Haxe. Includes library file for [Kha](https://github.com/KTXSoftware/Kha). If you have trouble including C++ sources in your framework, you may find this [issue](https://github.com/luboslenco/haxebullet/issues/2) helpful.

Package is available on haxelib:

```
haxelib install haxebullet
```

## Docs
Refer to original [Bullet documentation](http://bulletphysics.org/mediawiki-1.5.8/index.php/Main_Page).

## Remarks
Based on Bullet 2.83.7, works on C++ and JS targets. Using original C++ sources of Bullet and Ammo.js for JavaScript respectively. The goal of this repository is to provide top class 3D physics solution for Haxe.

The bindings are not complete but it's very easy to add missing stuff based on what's already there. Feel free to contribute!

## Usage

[C++ Reference](http://bulletphysics.org/mediawiki-1.5.8/index.php/Hello_World)

In order to get C++ build to work you need to add 'haxebullet/cpp/bullet' directory into your build process so compiler is able to find bullet sources.

[JS Reference](http://bulletphysics.org/mediawiki-1.5.8/index.php/Hello_World)

In order to get JS build to work you need to add 'haxebullet/js/ammo/ammo.js' script either by embedding or including it with a script tag.

``` hx
var groundShape = BtStaticPlaneShape.create(BtVector3.create(0, 1, 0).value, 1);
var groundTransform = BtTransform.create();
groundTransform.value.setIdentity();
groundTransform.value.setOrigin(BtVector3.create(0, -1, 0).value);
var centerOfMassOffsetTransform = BtTransform.create();
centerOfMassOffsetTransform.value.setIdentity();
var groundMotionState = BtDefaultMotionState.create(groundTransform.value, centerOfMassOffsetTransform.value);

var groundRigidBodyCI = BtRigidBodyConstructionInfo.create(0.01, groundMotionState, groundShape, BtVector3.create(0, 0, 0).value);
var groundRigidBody = BtRigidBody.create(groundRigidBodyCI.value);
dynamicsWorld.value.addRigidBody(groundRigidBody);


var fallShape = BtSphereShape.create(1);
var fallTransform = BtTransform.create();
fallTransform.value.setIdentity();
fallTransform.value.setOrigin(BtVector3.create(0, 50, 0).value);
var centerOfMassOffsetFallTransform = BtTransform.create();
centerOfMassOffsetFallTransform.value.setIdentity();
var fallMotionState = BtDefaultMotionState.create(fallTransform.value, centerOfMassOffsetFallTransform.value);

var fallInertia = BtVector3.create(0, 0, 0);
fallShape.value.calculateLocalInertia(1, fallInertia.value);
var fallRigidBodyCI = BtRigidBodyConstructionInfo.create(1, fallMotionState, fallShape, fallInertia.value);
var fallRigidBody = BtRigidBody.create(fallRigidBodyCI.value);
dynamicsWorld.value.addRigidBody(fallRigidBody);

for (i in 0...3000) {
	dynamicsWorld.value.stepSimulation(1 / 60);
	
	var trans = BtTransform.create();
	var m = fallRigidBody.value.getMotionState();
	m.value.getWorldTransform(trans.value);
	trace(trans.getOrigin().y());
}

// .destroy()...
```
