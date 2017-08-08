console.log('reached datepicker.js')
// $(".datepicker").datepicker();

$(".datepicker").each(function(input) {

  $(this).datepicker({
    calendarWeeks: true,
    todayHighlight: true,
    dateFormat: "yy-mm-dd",
    altField: $(this).next()
  })

  $(this).datepicker("option", $.datepicker.regional[I18n.currentLocale()]);
})

  // If you use i18n-js you can set the locale like that


