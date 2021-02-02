//= require bootstrap_sb_admin_base_v2
//= require notifyjs
//= require bootbox

/* substitui data-confirm do rails  */
$.rails.allowAction = function (element) {
  const message = element.attr('data-confirm');

  if (!message) {
    return true;
  }

  const opts = {
    title: 'Confirmação',
    message: message,
    buttons: {
      confirm: {
        label: 'Sim',
        className: 'btn-success'
      },
      cancel: {
        label: 'Não',
        className: 'btn-danger'
      }
    },
    callback: (result) => {
      if (result) {
        element.removeAttr('data-confirm');
        element.trigger('click.rails')
      }
    }
  };

  bootbox.confirm(opts);

  return false;
}