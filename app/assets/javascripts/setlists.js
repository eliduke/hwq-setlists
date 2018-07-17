$(function() {
  $('.sortable').sortable();

  $("input[type='checkbox']").change(function() {
    var checkedBoxes = $("input[type='checkbox']:checked")
    var uncheckedBoxes = $("input[type='checkbox']:not(:checked)")

    if(this.checked) {
      var newest_checked_song = $(this.parentElement)

      if (checkedBoxes.length > 1) {
        // A checkbox has _just_ been checked and we don't want that one
        // We want the second to last checked checkbox, hence the `[length - 2]`
        // Also we actually want the li around the checkbox, hence the `parentElement`
        var lastCheckedSong = checkedBoxes[checkedBoxes.length - 2].parentElement;

        // Move the newest checked song to the bottom of the list of checked songs
        newest_checked_song.insertAfter(lastCheckedSong);
      } else {
        var firstUncheckedSong = uncheckedBoxes[0].parentElement;

        // Move the newest checked song to the very top of the list
        newest_checked_song.insertBefore(firstUncheckedSong);
      }
    } else {
      var newest_unchecked_song = $(this.parentElement)

      // A checkbox has _just_ been unchecked and we don't want that one
      // We want the second unchecked checkbox, hence the `[1]`
      var firstUncheckedSong = uncheckedBoxes[1].parentElement;

      // Move the newest unchecked song to the top of the list of unchecked songs
      newest_unchecked_song.insertBefore(firstUncheckedSong);
    }
  });
});

