import { Component } from '@angular/core';
import { Movie } from 'src/app/models/movie-list.interface';
import { MovieService } from 'src/app/services/movie.service';

@Component({
  selector: 'app-movie-top-rated',
  templateUrl: './movie-top-rated.component.html',
  styleUrls: ['./movie-top-rated.component.css']
})
export class MovieTopRatedComponent {

  movieTopRated: Movie[] = [];

  constructor(private movieService: MovieService) { }

  ngOnInit(): void {
    this.movieService.getMovieTopRated().subscribe(resp =>
      this.movieTopRated = resp.results);
  }

}
