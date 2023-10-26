import { NgModule } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';


import { AppComponent } from './app.component';
import { NgbModule, NgbPagination } from '@ng-bootstrap/ng-bootstrap';
import { PeopleListComponent } from './components/people-list/people-list.component';
import { HttpClientModule } from '@angular/common/http';
import { PeopleItemComponent } from './components/people-item/people-item.component';


@NgModule({
  declarations: [
    AppComponent,
    PeopleItemComponent,
    PeopleListComponent
  ],
  imports: [
    BrowserModule,
    NgbModule,
    HttpClientModule,
    NgbPagination
  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
