import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PokemonListComponent } from './components/pokemon-list/pokemon-list.component';
import { PageNotFoundComponent } from './components/page-not-found/page-not-found.component';
import { BerryListComponent } from './components/berry-list/berry-list.component';

const routes: Routes = [
  { path: 'list', component: PokemonListComponent },
  { path: 'berry', component: BerryListComponent },
  { path: 'detail', component: PokemonListComponent },
  { path: '', pathMatch: 'full', redirectTo: '/list' },
  { path: '**', component: PageNotFoundComponent },
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
