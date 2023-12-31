import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { MovieListResponse } from '../models/movie-list.interface';
import { MovieDetailsResponse } from '../models/movie-details.interface';
import { environment } from 'src/environments/environment';

const API_BASE_URL = '/movie'

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  constructor(private http: HttpClient) { }

  getPopularList(): Observable<MovieListResponse> {
    return this.http.get<MovieListResponse>(`${environment.baseUrl}${API_BASE_URL}/popular?api_key=${environment.apiKey}`)
  }

  getTopRated(): Observable<MovieListResponse> {
    return this.http.get<MovieListResponse>(`${environment.baseUrl}${API_BASE_URL}/top_rated?api_key=${environment.apiKey}`)
  }

  getId(id: number): Observable<MovieDetailsResponse> {
    return this.http.get<MovieDetailsResponse>(`${environment.baseUrl}${API_BASE_URL}/${id}?api_key=${environment.apiKey}`)
  }
}
