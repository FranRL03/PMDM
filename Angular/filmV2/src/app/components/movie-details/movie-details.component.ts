import { Component, Input, OnInit } from '@angular/core';
import {  ActivatedRoute, ParamMap, Router } from '@angular/router';
import { padNumber } from '@ng-bootstrap/ng-bootstrap/util/util';
import { Movie } from 'src/app/models/movie-list.interface';

@Component({
  selector: 'app-movie-details',
  templateUrl: './movie-details.component.html',
  styleUrls: ['./movie-details.component.css']
})
export class MovieDetailsComponent  implements OnInit{

  movieDetails!: MovieDetailsComponent;


  constructor(private rutaActiva: ActivatedRoute) { }

  ngOnInit() {
    
  }

}
