Feature: Http API request/response
    As a user, I want to make requests and
    receive responses from the JSON API

    Background:
        Given My timezone is "Asia/Bishkek"
        And Restart the api server with the following envs:
            | PORT   | 3000                   |
            | WS_URL | http://localhost:3000/ | 

    Scenario: Make auth.test POST request with token in body
        When I send "POST" request to "http://localhost:3000/api/auth.test" with conditions
            """
            {
                "request": {
                    "headers": {
                        "Content-Type": "application/json"
                    },
                    "body": {
                        "token": "xoxb-XXXXXXXXXXXX-TTTTTTTTTTTTTT"
                    }
                },
                "response": {
                    "ok": true,
                    "url": "http://localhost:3000/",
                    "team": "BotFactory",
                    "user": "valera",
                    "team_id": "T12345678",
                    "user_id": "W12345679"
                }
            }
            """
        And I restart the server with default envs