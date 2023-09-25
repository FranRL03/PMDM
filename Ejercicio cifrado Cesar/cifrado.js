$(document).ready(function () {



    $(document).on('click', '#boton', () => {

        var abecedario = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
            'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];


        var text = $('#mensaje').val().toLowerCase();
        var salto = parseInt($('#saltos').val());

        var result = '';

        for (var i = 0; i < text.length; i++) {

            var letter = text[i];

            var valor = abecedario.indexOf(letter)

            if (valor == -1) {
                result += letter
            } else {
                var valorNuevo = (valor + salto) % abecedario.length;
                var newLetter = abecedario[valorNuevo];
                result += newLetter
            }
        }

        $('#result').text(result);

    });
});

