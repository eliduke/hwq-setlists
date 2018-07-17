$(function() {
  $('.sortable').sortable();

  $("input[type='checkbox']").change(function() {
    var checkedBoxes = $("input[type='checkbox']:checked")
    var uncheckedBoxes = $("input[type='checkbox']:not(:checked)")

    if(this.checked) {
      var newest_checked_song = $(this.parentElement.parentElement)

      if (checkedBoxes.length > 1) {
        // A checkbox has _just_ been checked and we don't want that one
        // We want the second to last checked checkbox, hence the `[length - 2]`

        var lastCheckedSong = checkedBoxes[checkedBoxes.length - 2].parentElement.parentElement;
        newest_checked_song.insertAfter(lastCheckedSong);
      } else {
        var firstUncheckedSong = uncheckedBoxes[0].parentElement.parentElement;
        newest_checked_song.insertBefore(firstUncheckedSong);
      }
    } else {
      // A checkbox has _just_ been unchecked and we don't want that one
      // We want the second unchecked checkbox, hence the `[1]`

      var newest_unchecked_song = $(this.parentElement.parentElement)
      var firstUncheckedSong = uncheckedBoxes[1].parentElement.parentElement;
      newest_unchecked_song.insertBefore(firstUncheckedSong);
    }
  });
});

