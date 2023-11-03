import { Component, OnInit, inject } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MovieDetailsResponse } from 'src/app/models/movie-details.interface';
import { MovieService } from 'src/app/services/movie.service';

@Component({
  selector: 'app-movie-details',
  templateUrl: './movie-details.component.html',
  styleUrls: ['./movie-details.component.css']
})
export class MovieDetailsComponent implements OnInit {

  movieDetails!: MovieDetailsResponse;
  id!: number;
  route: ActivatedRoute = inject(ActivatedRoute);

  constructor(private movieService: MovieService) {
    this.id = this.route.snapshot.params['id'];
  }

  ngOnInit(): void {
    this.movieService.getId(this.id).subscribe(resp => {
      this.movieDetails = resp;
    })
  }

  getImage() {
    return `https://www.themoviedb.org/t/p/w220_and_h330_face${this.movieDetails.poster_path}`
  }
}
