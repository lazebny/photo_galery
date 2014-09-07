module.factory('promiseForCollection',
['$q', '_', function($q, _) {
  return function(collection) {
    return $q.all(
      _.map(collection, function(item){
        return item.$promise
      })
    )
  }
}])
