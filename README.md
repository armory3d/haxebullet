# haxebullet

Native [Bullet 3D Physics](http://bulletphysics.org/) for Haxe

Based on Bullet 2.82, works on C++ and JS targets

## Demo

## Usage

[Hello World](http://bulletphysics.org/mediawiki-1.5.8/index.php/Hello_World) for C++ targets


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

[Hello World](http://bulletphysics.org/mediawiki-1.5.8/index.php/Hello_World) for JS target
