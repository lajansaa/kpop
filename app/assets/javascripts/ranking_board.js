$(function() {

  $('#date-picker').change(function(event){
    console.log($(event.target).val());
    data = JSON.parse($(event.target).val());
    $.get(
      '/from_nomination_cycle',
      {cycle_id: data.cycle_id,
       award_id: data.award_id}
    );
  });
});