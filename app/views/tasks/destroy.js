$('.delete_task').bind('ajax:success', function() {
$(this).closest('tr').fadeOut();
});