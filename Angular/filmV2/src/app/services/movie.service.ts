import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { MovieListResponse } from '../models/movie-list.interface';
import { MovieDetailsResponse } from '../models/movie-details.interface';
import { environment } from 'src/environments/environment';
import { MovieJob } from '../models/movie.interface';
import { TrailersResponse } from '../models/trailers.interface';

const API_BASE_URL = '/movie'

@Injectable({
  providedIn: 'root'
})
export class MovieService {

  constructor(private http: HttpClient) { }

  getPopularList(): Observable<MovieListResponse> {
    return this.http.get<MovieListResponse>(`${environment.baseUrl}${API_BASE_URL}/popular?api_key=${environment.apiKey}`)
  }

  getId(id: number): Observable<MovieDetailsResponse> {
    return this.http.get<MovieDetailsResponse>(`${environment.baseUrl}${API_BASE_URL}/${id}?api_key=${environment.apiKey}`)
  }

  getPagina(pag: number): Observable<MovieListResponse> {
    return this.http.get<MovieListResponse>(`${environment.baseUrl}${API_BASE_URL}/popular?api_key=${environment.apiKey}&page=${pag}`)
  }

  getTrailers(id: number): Observable<TrailersResponse> {
    return this.http.get<TrailersResponse>(`${environment.baseUrl}${API_BASE_URL}/${id}/videos?api_key=${environment.apiKey}`)
  }
}
