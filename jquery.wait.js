;(function($){
  if ($.wait !== undefined) {
    return;
  }
  $.wait = function(microseconds){
    var deferred = $.Deferred();
    setTimeout(deferred.resolve, microseconds);
    return deferred;
  }
}(jQuery));
