$(document).ready(function () {

    $.ajax({
        url: 'https://swapi.dev/api/planets/',
        type: 'GET'
    }).done(function (resp) {
        var planets = resp.results;
        planets.forEach(function (planeta) {

            var template = `<div class="bg-warning btn-view-planet" type="button"> <p id="listadoPlanetas" itemid="${planeta.name}">${planeta.name}</p> </div>`

            $('#listadoPlanetas').append(template);

            $(document).on('click', '.btn-view-planet', function () {

                var planetId = $(this).attr('itemid');

                console.log(planetId)

            });
        });
    });



});