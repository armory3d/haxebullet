let project = new Project('haxebullet', __dirname);

project.addFile('cpp/bullet/**');
project.addIncludeDir('cpp/bullet');

resolve(project);
