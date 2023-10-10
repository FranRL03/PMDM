$(document).ready(() => {

    $(document).on('click', '#btnLogin', () => {
        // .val() devuelve el valor que hay en ese campo
        var email = $('#email').val(); 
        var pass = $('#password').val();
        // metodo para limpiar los campos
        clearFields();

        // si los campos están vacios te añade la clase is-invalid que es una
        // clase de boostrap
        if (email == '') {
            $('#email').addClass('is-invalid');
        }

        if (pass == '') {
            $('#password').addClass('is-invalid');
        }
    });

    // esta función te borra la clase para resetear los campos
    function clearFields() {
        $('.form-control').removeClass('is-invalid');
    }
});