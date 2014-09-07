$(function() {
  var GammaSettings = {
    viewport : [
      { width : 1200, columns : 5 },
      { width : 900, columns : 4 },
      { width : 500, columns : 3 },
      { width : 320, columns : 2 },
      { width : 0, columns : 2 }
    ],
    historyapi: true
  };

  setTimeout(
    function() {
      Gamma.init(GammaSettings)

    }, 10000
  )
  // Gamma.init(GammaSettings)
  // Gamma.init( GammaSettings, fncallback );

  function fncallback() {
    $('#loadmore').show().on('click', function() {
      ++page;

      var newitems = items[page-1]

      if( page <= 1 ) {
        Gamma.add( $( newitems ) );
      }
      if( page === 1 ) {
        $( this ).remove();
      }

    });
  }
})
