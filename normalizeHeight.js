// A jquery utility function that iterates over an array of jquery objects, finds the maximum
// height of the elements within, and then sets the height to match for all the elements

function normalizeHeight(domElements) {
  var max = 0;
  $(domElements).each(function() {
    if($(this).height() > max) {
      max = $(this).height();
    }
  }).height(max);
}

normalizeHeight('div');
