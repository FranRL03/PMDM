import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { MovieListResponse } from '../models/movie-list.interface';
import { MovieDetailsResponse } from '../models/movie-details.interface';

const API_BASE_URL = 'https://api.themoviedb.org/3/movie'
const API_KEY = 'api_key=b448b25869241da85a01f82d0167801c'

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  constructor(private http: HttpClient) { }

  getPopularList(): Observable<MovieListResponse> {
    return this.http.get<MovieListResponse>(`${API_BASE_URL}/popular?${API_KEY}`)
  }

  getTopRated(): Observable<MovieListResponse> {
    return this.http.get<MovieListResponse>(`${API_BASE_URL}/top_rated?${API_KEY}`)
  }

  getId(id: number): Observable<MovieDetailsResponse> {
    return this.http.get<MovieDetailsResponse>(`${API_BASE_URL}/${id}?${API_KEY}`)
  }
}
