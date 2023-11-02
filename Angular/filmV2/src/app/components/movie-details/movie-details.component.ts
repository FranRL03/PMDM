import { Component, Input } from '@angular/core';
import { MovieDetailsResponse } from 'src/app/models/movie-details.interface';
import { Movie } from 'src/app/models/movie-list.interface';

@Component({
  selector: 'app-movie-details',
  templateUrl: './movie-details.component.html',
  styleUrls: ['./movie-details.component.css']
})
export class MovieDetailsComponent {

  @Input() movieDetails!: MovieDetailsResponse;
  movieListDetails: Movie [] = [];

  getImage() {
    return `https://www.themoviedb.org/t/p/w220_and_h330_face${this.movieDetails.poster_path}`
  }

}
