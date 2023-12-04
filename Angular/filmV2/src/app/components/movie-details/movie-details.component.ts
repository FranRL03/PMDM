import { Component, OnInit, inject } from '@angular/core';
import { ActivatedRoute } from '@angular/router';
import { MovieDetailsResponse } from 'src/app/models/movie-details.interface';
import { MovieJob } from 'src/app/models/movie.interface';
import { TrailersResponse, Videos } from 'src/app/models/trailers.interface';
import { MovieService } from 'src/app/services/movie.service';


@Component({
  selector: 'app-movie-details',
  templateUrl: './movie-details.component.html',
  styleUrls: ['./movie-details.component.css']
})
export class MovieDetailsComponent implements OnInit {

  trailer: Videos[] = [];
  movieDetails!: MovieDetailsResponse;
  id!: number;
  route: ActivatedRoute = inject(ActivatedRoute);

  constructor(private movieService: MovieService) {
    this.id = this.route.snapshot.params['id'];
  }

  ngOnInit(): void {
    this.movieService.getId(this.id).subscribe(resp => {
      this.movieDetails = resp;
      this.trailers;
    })
  }

  trailers(){
    this.movieService.getTrailers(this.id).subscribe(resp =>{
      this.trailer = resp.results})
    }


  getImage() {
    return `https://www.themoviedb.org/t/p/w220_and_h330_face${this.movieDetails.poster_path}`
  }
}
