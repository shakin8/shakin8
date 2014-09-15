// accommodate Turbolinks and track page views
$(document).on('ready page:change', function() {
  analytics.page();
})// accommodate Turbolinks
// track page views and form submissions
$(document).on('ready page:change', function() {
  console.log('page loaded');
  analytics.page();
  analytics.trackForm($('#new_visitor'), 'Signed Up');
  analytics.trackForm($('#new_contact'), 'Contact Request');
})