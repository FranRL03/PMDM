import { Injectable } from '@angular/core';

const COLLECTION_USERS = 'users';

@Injectable({
  providedIn: 'root'
})
export class UserService {

  constructor(public firestore: Firestore) { }

  async createUser(name: string, age: number) {
    const docRef = await addDoc(collection(this.firestore, COLLECTION_USERS), {
      name: name,
      age: age,
    });
    console.log('Document written with ID: ', docRef.id);
  }

  getUsers() { }
}
