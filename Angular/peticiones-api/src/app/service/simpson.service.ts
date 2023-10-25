import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { Observable } from 'rxjs';
import { SimpsonsListResponse } from '../model/simpsons-list.interface';

@Injectable({
  providedIn: 'root'
})
export class SimpsonService {

  constructor(private http: HttpClient) { }

  getSimpsonList(): Observable<SimpsonsListResponse>{
    return this.http.get<SimpsonsListResponse>('https://apisimpsons.fly.dev/api/personajes');
  }
}
