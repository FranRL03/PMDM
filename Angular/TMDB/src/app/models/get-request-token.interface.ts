export interface GetRequestTokenResponse {
    success: boolean;
    expires_at: string;
    request_token: string;
}