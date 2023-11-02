import { Component } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { MovieDetailsResponse } from 'src/app/models/movie-details.interface';
import { MovieService } from 'src/app/services/movie.service';

@Component({
  selector: 'app-page-home',
  templateUrl: './page-home.component.html',
  styleUrls: ['./page-home.component.css']
})
export class PageHomeComponent {

  movieSelected!: MovieDetailsResponse;
  constructor(private modal: NgbModal, private movieService: MovieService) { }

  onMoviePopularClick(movieId: number, modalToOpen: any) {
    this.movieService.getId(movieId).subscribe(resp => {
      this.movieSelected = resp;
      this.modal.open(modalToOpen);
    });
  }

}
