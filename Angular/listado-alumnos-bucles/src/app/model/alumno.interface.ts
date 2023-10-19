enum Sex {
    Male,
    Female
}

export interface Student {
    id: string;
    name: string;
    lastName: string;
    email: string;
    sex: string;
    age: number;
    //subjects: SchoolSubject[];
    paid: boolean;
}

export interface SchoolSubject {
    name: string;
    hours: number;
}