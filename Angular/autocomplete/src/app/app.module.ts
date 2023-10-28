import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';


import { AppComponent } from './app.component';
import { NgbModule, NgbPagination } from '@ng-bootstrap/ng-bootstrap';
import { PeopleListComponent } from './components/people-list/people-list.component';
import { HttpClientModule } from '@angular/common/http';
import { PeopleItemComponent } from './components/people-item/people-item.component';
import { PeopleAutocompleteComponent } from './components/people-autocomplete/people-autocomplete.component';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { MatInputModule } from '@angular/material/input';
import { MatAutocompleteModule } from '@angular/material/autocomplete';
import { BrowserAnimationsModule } from '@angular/platform-browser/animations';



@NgModule({
  declarations: [
    AppComponent,
    PeopleItemComponent,
    PeopleListComponent,
    PeopleAutocompleteComponent
  ],
  imports: [
    BrowserModule,
    NgbModule,
    HttpClientModule,
    NgbPagination,
    FormsModule,
    ReactiveFormsModule,
    MatInputModule,
    MatAutocompleteModule,
    BrowserAnimationsModule
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
