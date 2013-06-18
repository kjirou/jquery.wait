mocha.setup('bdd');

mocha.checkLeaks();
mocha.globals(['jQuery']);
mocha.run();
