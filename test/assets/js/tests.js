// Ref) https://github.com/guille/ms.js/blob/master/test/test.js
if ('undefined' !== typeof require) {
  var expect = require('expect.js');
}

describe('初期化', function(){
  it('$.wait が定義されている', function(){
    expect($.wait).to.be.a('function');
  });
});
