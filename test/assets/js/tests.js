// Ref) https://github.com/guille/ms.js/blob/master/test/test.js
if ('undefined' !== typeof require) {
  var expect = require('expect.js');
}

describe('初期化', function(){
  it('$.wait が定義されている', function(){
    expect($.wait).to.be.a('function');
  });
});

describe('実行', function(){
  it('pending な Deferred オブジェクトを返す', function(){
    var d = $.wait(1, function(){});
    expect(d.state()).to.be('pending');
  });

  it('指定秒数待ってから次の処理を実行するか', function(done){
    var start = new Date().getTime();
    $.wait(1000).then(function(){
        var delta = new Date().getTime() - start;
        expect(delta > 950).to.be.ok();
        expect(delta < 1050).to.be.ok();
        done();
    });
  });
});
