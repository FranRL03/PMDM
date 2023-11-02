import { Component, OnInit } from '@angular/core';
import { NgbModal } from '@ng-bootstrap/ng-bootstrap';
import { MovieDetailsResponse } from 'src/app/models/movie-details.interface';
import { Movie } from 'src/app/models/movie-list.interface';
import { MovieService } from 'src/app/services/movie.service';

@Component({
  selector: 'app-movie-popular-list',
  templateUrl: './movie-popular-list.component.html',
  styleUrls: ['./movie-popular-list.component.css']
})
export class MoviePopularListComponent implements OnInit {
  movieList: Movie[] = [];
  movieSelected!: MovieDetailsResponse;

  constructor(private movieService: MovieService, private modalService: NgbModal) { }

  ngOnInit(): void {
    this.movieService.getPopularList().subscribe(resp =>
      this.movieList = resp.results);
  }

  open(id: number, modal: any) {
    this.movieService.getId(id).subscribe(resp => {
      this.movieSelected = resp;
      this.modalService.open(modal);
    });
  }
}
