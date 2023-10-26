import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { Simpson, SimpsonsListResponse } from '../model/simpsons-list.interface';
import { SimpsonDetails, SimpsonDetailsResponse } from '../model/simpson-details.interface';

@Injectable({
  providedIn: 'root'
})
export class SimpsonService {

  constructor(private http: HttpClient) { }

  getSimpsonList(): Observable<SimpsonsListResponse> {
    return this.http.get<SimpsonsListResponse>(`https://apisimpsons.fly.dev/api/personajes`);
  }

  getSimpsonName(nombre: string): Observable<SimpsonDetailsResponse> {
    return this.http.get<SimpsonDetailsResponse>(`https://apisimpsons.fly.dev/api/personajes/find/${nombre}`);
  }
}
