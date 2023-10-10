$(document).ready(function () {
    $.ajax({
        url: 'https://swapi.dev/api/people',
        type: 'GET'
    }).done(function (resp) {
        var listadoPersonajes = resp.results;
        listadoPersonajes.forEach(function (personajes) {
            var template = `<div class="card mt-4" style="width: 18rem;">
            <img src="https://starwars-visualguide.com/assets/img/characters/2.jpg" class="card-img-top" alt="...">
            <div class="card-body">
                <h5 class="card-title text-center">${personajes.name}</h5>
                <p class="card-text">Some quick example text to build on the card title and make up
                    the
                    bulk
                    of
                    the card's content.</p>
            </div>
            <ul class="list-group list-group-flush">
                <li class="list-group-item">Species: ${personajes.species}</li>
                <li class="list-group-item">Height: ${personajes.height}</li>
                <li class="list-group-item">Mass: ${personajes.mass}</li>
            </ul>
            <div class="d-flex justify-content-center">
                <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#exampleModal">
                    Información
                </button>
            </div>
        </div>`;

            $('#lista-personajes').append(template);
        });
    });

});
