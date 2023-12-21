import { Component } from '@angular/core';
import { UserService } from '../../services/user.service';

@Component({
  selector: 'app-login',
  templateUrl: './login.component.html',
  styleUrl: './login.component.css'
})
export class LoginComponent {
  name: string = '';

  constructor(public userService: UserService) { }

  addUser() {
    this.userService.createUser(this.name);
  }

}
