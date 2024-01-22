import { NgModule, importProvidersFrom } from '@angular/core';
import { BrowserModule } from '@angular/platform-browser';

import { AppRoutingModule } from './app-routing.module';
import { AppComponent } from './app.component';
import { TicTacToeComponent } from './components/tic-tac-toe/tic-tac-toe.component';
import { NgbModule } from '@ng-bootstrap/ng-bootstrap';
import { FormsModule, ReactiveFormsModule } from '@angular/forms';
import { LoginComponent } from './components/login/login.component';
import { provideFirebaseApp } from '@angular/fire/app';
import { provideFirestore } from '@angular/fire/firestore';
import { provideRouter, withViewTransitions } from '@angular/router';
import { initializeApp } from 'firebase/app';
import { getFirestore } from 'firebase/firestore';
import { environment } from '../environments/environment.development';

@NgModule({
  declarations: [
    AppComponent,
    TicTacToeComponent,
    LoginComponent
  ],
  imports: [
    BrowserModule,
    AppRoutingModule,
    NgbModule,
    ReactiveFormsModule,
    FormsModule,
    provideFirebaseApp(() => initializeApp(environment.firebaseConfig)),
    provideFirestore(() => getFirestore()),
    provideDatabase(() => getDatabase())

  ],
  providers: [],
  bootstrap: [AppComponent]
})
export class AppModule { }
function provideAnimations(): import("@angular/core").Provider | import("@angular/core").EnvironmentProviders {
  throw new Error('Function not implemented.');
}

function provideAuth(arg0: () => any): import("@angular/core").ImportProvidersSource {
  throw new Error('Function not implemented.');
}

function getAuth() {
  throw new Error('Function not implemented.');
}

function provideStorage(arg0: () => any): import("@angular/core").ImportProvidersSource {
  throw new Error('Function not implemented.');
}

function getDatabase() {
  throw new Error('Function not implemented.');
}

