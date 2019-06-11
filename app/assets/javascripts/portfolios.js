// # Place all the behaviors and hooks related to the matching controller here.
// # All this logic will automatically be available in application.js.
// # You can use CoffeeScript in this file: http://coffeescript.org/

$('.custom-file-input').on('change', function() { 
  let fileName = $(this).val().split('\\').pop(); 
  $(this).next('.custom-file-label').addClass("selected").html(fileName); 
});

// $(document).ready ->



// $(document).ready ->

//   # ------------------------------------------------------
//   # pretty-fy the upload field
//   # ------------------------------------------------------
//   $realInputField = $('#real_file')

//   # drop just the filename in the display field
//   $realInputField.change ->
//     $('#file-display').val $(@).val().replace(/^.*[\\\/]/, '')

//   # trigger the real input field click to bring up the file selection dialog
//   $('#upload-btn').click ->
//     $realInputField.click()