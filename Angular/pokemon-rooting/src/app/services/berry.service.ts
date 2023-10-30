import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { BerryListResponse } from '../models/berry-list.interface';
import { Observable } from 'rxjs';

@Injectable({
  providedIn: 'root'
})
export class BerryService {

  constructor(private http: HttpClient) { }

  getBerryList(): Observable<BerryListResponse>{
    return this.http.get<BerryListResponse>('https://pokeapi.co/api/v2/berry');
  }

}
