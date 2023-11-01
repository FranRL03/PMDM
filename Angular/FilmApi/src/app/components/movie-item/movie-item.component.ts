import { Component, EventEmitter, Input, Output } from '@angular/core';
import { Movie } from 'src/app/models/movie-list.interface';

@Component({
  selector: 'app-movie-item',
  templateUrl: './movie-item.component.html',
  styleUrls: ['./movie-item.component.css']
})
export class MovieItemComponent {

  @Input() movie!: Movie;
  @Output() movieClick = new EventEmitter<number>;

  getImage() {
    return `https://www.themoviedb.org/t/p/w220_and_h330_face${this.movie.poster_path}`
  }

  Info(){
    this.movieClick.emit(this.movie.id);
  }

}
