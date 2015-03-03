var project = new Project('haxebullet');

project.addFile('cpp/bullet/**');
project.addIncludeDir('cpp/bullet');

return project;
