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
export class PeopleAutocompleteComponent{


  peopleCtrl = new FormControl();
  filterPeople: Observable<People[]>;
  people : People[] = [];
  

  constructor() {
    this.filterPeople = this.peopleCtrl.valueChanges.pipe(
      startWith(''),
      map(people => (people ? this._filterPeople(people) : this.people.slice())),
    );
  }

  private _filterPeople(value: string): People[] {
    const filterValue = value.toLowerCase();

    return this.people.filter(people => people.name.toLowerCase().includes(filterValue));
  }

}
