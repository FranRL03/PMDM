import { Component } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { MovieDetailsResponse } from 'src/app/models/movie-details.interface';
import { Movie } from 'src/app/models/movie-list.interface';
import { MovieService } from 'src/app/services/movie.service';

@Component({
  selector: 'app-movie-top-rated',
  templateUrl: './movie-top-rated.component.html',
  styleUrls: ['./movie-top-rated.component.css']
})
export class MovieTopRatedComponent {

  movieTopRated: Movie[] = [];
  movieSelected!: MovieDetailsResponse;

  constructor(private movieService: MovieService, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.movieService.getMovieTopRated().subscribe(resp =>
      this.movieTopRated = resp.results);
  }

  open(id: number, modal: any){
    this.movieService.getMovieId(id).subscribe(resp =>{
      this.movieSelected = resp;
      this.modalService.open(modal);
    });
  }

}
