import { Component, OnInit } from '@angular/core';
import { FormControl } from '@angular/forms';
import { Observable, debounceTime, distinctUntilChanged, map, startWith, switchMap } from 'rxjs';
import { People } from 'src/app/model/people-list.interface';
import { PeopleListService } from 'src/app/services/people.sevice';

@Component({
  selector: 'app-people-autocomplete',
  templateUrl: './people-autocomplete.component.html',
  styleUrls: ['./people-autocomplete.component.css']
})
export class PeopleAutocompleteComponent {

  peopleCtrl = new FormControl();
  filterPeople: Observable<People[]>;
  people: People[] = [];

  constructor(private peopleService: PeopleListService) {
    this.filterPeople = this.peopleCtrl.valueChanges.pipe(
      startWith(" "),
      debounceTime(300),
      distinctUntilChanged(),
      switchMap(people => this.peopleService.getPeopleList()),
      map(response => response.results),
    );

    this.filterPeople.subscribe(data => {
      console.log('Datos de autocompletado:', data);
    });
  }

}
