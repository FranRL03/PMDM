import { NgModule } from '@angular/core';
import { RouterModule, Routes } from '@angular/router';
import { PageHomeComponent } from './ui/page-home/page-home.component';
import { PageNotFoundComponent } from './ui/page-not-found/page-not-found.component';
import { MoviePopularListComponent } from './components/movie-popular-list/movie-popular-list.component';
import { MovieTopRatedComponent } from './components/movie-top-rated/movie-top-rated.component';

const routes: Routes = [
  { path: 'home', component: PageHomeComponent },
  { path: 'popular', component: MoviePopularListComponent },
  { path: 'topRated', component: MovieTopRatedComponent },
  { path: ' ', pathMatch: 'full', redirectTo: '/home' },
  { path: '**', component: PageNotFoundComponent }
];

@NgModule({
  imports: [RouterModule.forRoot(routes)],
  exports: [RouterModule]
})
export class AppRoutingModule { }
