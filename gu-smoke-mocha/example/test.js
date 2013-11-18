// Load should.js
var should = require('should');

// BDD example
describe('Array', function(){
  before(function(){
    console.log("Before function ran here!")
  });

  describe('#indexOf()', function(){
    it('should return -1 when not present', function(){
      [1,2,3].indexOf(4).should.equal(-1);
    });
  });
});
