window.Mocks or= {}
Mocks.changed_docs = ->
  [
    {
      content   : "this is done"
      done      : true
      type      : "todo"
      id        : "abc3"
      _rev      : '2-123'
      _deleted  : true
      _localInfo: 'funky'
      updated_at: "2012-20-12T12:00:00.000Z"
      created_at: "2012-20-12T12:00:00.000Z"
    },
    {
      content   : "remember the milk"
      done      : false
      type      : "todo"
      id        : "abc2"
      updated_at: "2012-20-12T12:00:00.000Z"
      created_at: "2012-20-12T12:00:00.000Z"
    }
  ]