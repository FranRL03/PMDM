$(document).ready(function () {



    $(document).on('click', '#boton', () => {

        var abecedario = ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j',
            'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'];

        var tres = 3;
        var text = $('#mensaje').val();
        var valores = [];
        var letrasCifradas = [];
        

        for (var i = 0; i < text.length; i++) {

            var valor = text.charAt(i).charCodeAt();

            var valorNuevo = (valor - 97 + tres) % 26 + 1;

            valores.push(valorNuevo);

        }

        console.log(valores)
        console.log(valorNuevo)

        // for(var i = 0; i < abecedario.length; i++){

        //     var numeros = valores[i];

        //     var letra = abecedario[numeros - 97];

        // }

       
        // console.log(letra)
        

    });
});

