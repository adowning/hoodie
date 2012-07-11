// Generated by CoffeeScript 1.3.3

describe("Hoodie.Sharing", function() {
  beforeEach(function() {
    this.hoodie = new Mocks.Hoodie;
    return this.sharing = new Hoodie.Sharing(this.hoodie);
  });
  return describe(".constructor", function() {
    return it("should set Hoodie.Sharing.Instance.hoodie", function() {
      var hoodie;
      hoodie = 'check 1,2';
      new Hoodie.Sharing(hoodie);
      return expect(Hoodie.Sharing.Instance.hoodie).toBe('check 1,2');
    });
  });
});
