import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { MovieListResponse } from '../models/movie-list.interface';

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  constructor(private http: HttpClient) { }

  getMoviePopularList(): Observable<MovieListResponse> {
    return this.http.get<MovieListResponse>('https://api.themoviedb.org/3/movie/popular?api_key=b448b25869241da85a01f82d0167801c')
  }

  getMovieTopRated(): Observable<MovieListResponse> {
    return this.http.get<MovieListResponse>('https://api.themoviedb.org/3/movie/top_rated?api_key=b448b25869241da85a01f82d0167801c')
  }
}
