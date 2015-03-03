# haxebullet

Native [Bullet 3D Physics](http://bulletphysics.org/) for Haxe. Includes library file for [Kha](https://github.com/KTXSoftware/Kha).

## Docs
Refer to original [Bullet documentation](http://bulletphysics.org/mediawiki-1.5.8/index.php/Main_Page)

## Remarks
Based on Bullet 2.82, works on C++ and JS targets. Using original C++ sources of Bullet and Ammo.js for JavaScript respectively. The goal of this repository is to provide top class 3D physics solution for Haxe.

There are differencies when accessing API on C++ and JS(refer to usage below) - this is because the externs for these languages work a bit differently. The purpose of this library is to be integrated in your own 3D library where these differences are easily abstracted by #if directives. If however there is a way to unify this without a performance hit please let me know.

The bindings are not complete but it's very easy to add missing stuff based on what's already there. Feel free to contribute!

## Usage

[Hello World](http://bulletphysics.org/mediawiki-1.5.8/index.php/Hello_World) for C++ targets

In order to get C++ build to work you need to add 'haxebullet/cpp/bullet' directory into your build process so compiler is able to find bullet sources.

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

[Hello World](http://bulletphysics.org/mediawiki-1.5.8/index.php/Hello_World) for JS target

In order to get JS build to work you need to add 'haxebullet/js/ammo/ammo.js' script either by embedding or including it with a script tag.

``` hx
var groundShape = new BtStaticPlaneShape(new BtVector3(0, 1, 0), 1);
var groundTransform = new BtTransform();
groundTransform.setIdentity();
groundTransform.setOrigin(new BtVector3(0, -1, 0));
var centerOfMassOffsetTransform = new BtTransform();
centerOfMassOffsetTransform.setIdentity();
var groundMotionState = new BtDefaultMotionState(groundTransform, centerOfMassOffsetTransform);

var groundRigidBodyCI = new BtRigidBodyConstructionInfo(0.01, groundMotionState, groundShape, BtVector3.create(0, 0, 0));
var groundRigidBody = new BtRigidBody(groundRigidBodyCI);
dynamicsWorld.addRigidBody(groundRigidBody);


var fallShape = new BtSphereShape(1);
var fallTransform = new BtTransform();
fallTransform.setIdentity();
fallTransform.setOrigin(new BtVector3(0, 50, 0));
var centerOfMassOffsetFallTransform = new BtTransform();
centerOfMassOffsetFallTransform.setIdentity();
var fallMotionState = new BtDefaultMotionState(fallTransform, centerOfMassOffsetFallTransform);

var fallInertia = new BtVector3(0, 0, 0);
fallShape.calculateLocalInertia(1, fallInertia);
var fallRigidBodyCI = new BtRigidBodyConstructionInfo(1, fallMotionState, fallShape, fallInertia);
var fallRigidBody = new BtRigidBody(fallRigidBodyCI);
dynamicsWorld.addRigidBody(fallRigidBody);

for (i in 0...3000) {
	dynamicsWorld.stepSimulation(1 / 60);
	
	var trans = new BtTransform();
	var m = fallRigidBody.getMotionState();
	m.getWorldTransform(trans);
	trace(trans.getOrigin().y());
}

// .destroy()...
```
