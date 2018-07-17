$(function() {
  $('.sortable').sortable();

  $("input[type='checkbox']").change(function() {
    if(this.checked) {
      var checkedBoxes = $("input[type='checkbox']:checked")
      if (checkedBoxes.length > 1) {
        var lastCheckedBox = checkedBoxes[checkedBoxes.length - 2].parentElement.parentElement;
        $(this.parentElement.parentElement).insertAfter(lastCheckedBox);
      } else {
        var uncheckedBoxes = $("input[type='checkbox']:not(:checked)")
        var firstUncheckedBox = uncheckedBoxes[0].parentElement.parentElement;
        $(this.parentElement.parentElement).insertBefore(firstUncheckedBox);
      }
    } else {
      var uncheckedBoxes = $("input[type='checkbox']:not(:checked)")
      var firstUncheckedBox = uncheckedBoxes[1].parentElement.parentElement;
      $(this.parentElement.parentElement).insertBefore(firstUncheckedBox);
    }
  });
});

