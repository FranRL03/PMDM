import { Component, OnInit } from '@angular/core';
import { Router } from '@angular/router';
import { Movie } from 'src/app/models/movie-list.interface';
import { MovieService } from 'src/app/services/movie.service';

@Component({
  selector: 'app-movie-popular-list',
  templateUrl: './movie-popular-list.component.html',
  styleUrls: ['./movie-popular-list.component.css']
})
export class MoviePopularListComponent implements OnInit {
  movieList: Movie[] = [];
  pag = 1;

  constructor(private movieService: MovieService, private route: Router) { }

  ngOnInit(): void {
    this.movieService.getPopularList().subscribe(resp =>
      this.movieList = resp.results);
  }

  paginacion() {
    this.movieService.getPagina(this.pag).subscribe(resp => {
      this.movieList = resp.results;
    });
  }

  openDetails(movie: Movie) {
    this.route.navigate(['movie', movie.id]);
  }
}
