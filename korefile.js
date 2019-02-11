let project = new Project('haxebullet', __dirname);
project.addFile('bullet/**');
project.addIncludeDir('bullet');
project.addFile('khabind/bullet.cpp');
resolve(project);
