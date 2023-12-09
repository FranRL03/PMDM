// Generated by https://quicktype.io

export interface ReviewsResponse {
    id:            number;
    page:          number;
    results:       Reviews[];
    total_pages:   number;
    total_results: number;
}

export interface Reviews {
    author:         string;
    author_details: AuthorDetails;
    content:        string;
    created_at:     string;
    id:             string;
    updated_at:     string;
    url:            string;
}

export interface AuthorDetails {
    name:        string;
    username:    string;
    avatar_path: string;
    rating:      number;
}