import { HttpClient } from '@angular/common/http';
import { Injectable } from '@angular/core';
import { PeopleListResponse } from '../model/people-list.interface';
import { Observable } from 'rxjs';
import { PeopleDetailsResponse } from '../model/people-details.interface';


@Injectable({
  providedIn: 'root'
})
export class PeopleListService {

  constructor(private http: HttpClient) { }

  getPeopleList(): Observable<PeopleListResponse>{
    return this.http.get<PeopleListResponse>('https://rickandmortyapi.com/api/character')
  }

  getPeopleId(id: string): Observable<PeopleDetailsResponse>{
    return this.http.get<PeopleDetailsResponse>(`https://rickandmortyapi.com/api/character/${id}`)
  }
}
