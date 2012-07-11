###
to be fixed ...

describe "Hoodie.Sharing.Instance", ->  
  beforeEach ->
    @hoodie  = new Mocks.Hoodie 
    Hoodie.Sharing.Instance.hoodie = @hoodie
    @sharing = new Hoodie.Sharing.Instance
  
  describe "constructor", ->
    beforeEach ->
      spyOn(@hoodie.store, "uuid").andReturn 'new_id'
      spyOn(Hoodie.Sharing.Instance::, "set")
      spyOn(Hoodie.Sharing.Instance::, "add")
      
    it "should set the attributes", ->
      sharing = new Hoodie.Sharing.Instance {funky: 'options'}
      expect(Hoodie.Sharing.Instance::set).wasCalledWith {funky: 'options'}
    
    
    _when "user is anonymous", ->
      beforeEach ->
        @hoodie.account.username = undefined
      
      it "should use the SharingHoodie", ->
        sharing = new Hoodie.Sharing.Instance
        expect(sharing.hoodie.constructor).toBe SharingHoodie
        
      it "should set anonymous to true", ->
        sharing = new Hoodie.Sharing.Instance
        expect(sharing.anonymous).toBeTruthy()
      
        
    _when "user has an account", ->
      beforeEach ->
        @hoodie.account.username = 'joe@example.com'
      
      it "should use the SharingHoodie", ->
        sharing = new Hoodie.Sharing.Instance
        expect(sharing.hoodie.constructor).toBe HoodieMock
        
      it "should set anonymous to false", ->
        sharing = new Hoodie.Sharing.Instance
        expect(sharing.anonymous).toBeFalsy()
    
  # /constructor
###