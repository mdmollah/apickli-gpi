@console
Feature:
    Sample GPI API Testing Using prism mock server

    Background:
      Given I use the MOCK_GPI target

    Scenario: Validate Response Code:get_invalid_events
        And I set body to {"get_invalid_events_request": {"my_institution": ["CCLABEB0"],"from_date_time": "2017-05-25T09:00:00.000Z","to_date_time": "2017-05-25T17:30:00.000Z","maximum_number": "100"}}
        And I set headers to
          |name                    |value                                                                                 |
          | LAUApplicationID       | 001                                                                                  |
          | LAUVersion             | 1.0                                                                                  |
          | laUCallTime            | 2018-03-23T15:56:26.728Z                                                             |
          | laURequestNonce        | e802ab96-bb3a-4965-9139-5214b9f0f074                                                 |
          | laUResponseNonce       | null                                                                                 |
          | laUSigned              | (ApplAPIKey=yVGhKiV5z1ZGdaqFXoZ8AiSA9n5CrY6B),(RBACRole=[FullViewer/Scope/cclabeb0]) |
          | laUSignature           | U1khA8h9Lm1PqzB99fG6uw==                                                             |
          | Accept                 | application/json                                                                     |
          | x-api-key              | yVGhKiV5z1ZGdaqFXoZ8AiSA9n5CrY6B                                                     |
          | x-record               | 0                                                                                    |
        When I POST to /get_invalid_events
        Then response code should be 200

      Scenario: Validate Response Headers:get_invalid_events
            And I set body to {"get_invalid_events_request": {"my_institution": ["CCLABEB0"],"from_date_time": "2017-05-25T09:00:00.000Z","to_date_time": "2017-05-25T17:30:00.000Z","maximum_number": "100"}}
            And I set headers to
              |name                    |value                                                                                 |
              | LAUApplicationID       | 001                                                                                  |
              | LAUVersion             | 1.0                                                                                  |
              | laUCallTime            | 2018-03-23T15:56:26.728Z                                                             |
              | laURequestNonce        | e802ab96-bb3a-4965-9139-5214b9f0f074                                                 |
              | laUResponseNonce       | null                                                                                 |
              | laUSigned              | (ApplAPIKey=yVGhKiV5z1ZGdaqFXoZ8AiSA9n5CrY6B),(RBACRole=[FullViewer/Scope/cclabeb0]) |
              | laUSignature           | U1khA8h9Lm1PqzB99fG6uw==                                                             |
              | Accept                 | application/json                                                                     |
              | x-api-key              | yVGhKiV5z1ZGdaqFXoZ8AiSA9n5CrY6B                                                     |
              | x-record               | 0                                                                                    |
            When I POST to /get_invalid_events
            Then response code should be 200
            And response header LAUApplicationID should exist
            And response header LAUCallTime should exist
            And response header LAUSignature should exist
            And response header LAUSignature should be U1khA8h9Lm1PqzB99fG6uw==

      Scenario: Validate Response Body:get_invalid_events
        And I store the raw value ./features/SWIFT-API_gpi-api_2.0.2_swagger.json as swaggerSpecPath in scenario scope
        And I set body to {"get_invalid_events_request": {"my_institution": ["CCLABEB0"],"from_date_time": "2017-05-25T09:00:00.000Z","to_date_time": "2017-05-25T17:30:00.000Z","maximum_number": "100"}}
        And I set headers to
        |name                    |value                                                                                 |
        | LAUApplicationID       | 001                                                                                  |
        | LAUVersion             | 1.0                                                                                  |
        | laUCallTime            | 2018-03-23T15:56:26.728Z                                                             |
        | laURequestNonce        | e802ab96-bb3a-4965-9139-5214b9f0f074                                                 |
        | laUResponseNonce       | null                                                                                 |
        | laUSigned              | (ApplAPIKey=yVGhKiV5z1ZGdaqFXoZ8AiSA9n5CrY6B),(RBACRole=[FullViewer/Scope/cclabeb0]) |
        | laUSignature           | U1khA8h9Lm1PqzB99fG6uw==                                                             |
        | Accept                 | application/json                                                                     |
        | x-api-key              | yVGhKiV5z1ZGdaqFXoZ8AiSA9n5CrY6B                                                     |
        | x-record               | 0                                                                                    |
        When I POST to /get_invalid_events
        Then response code should be 200
        And response body should be valid according to schema file `swaggerSpecPath`
        And response body should be valid json

        Scenario: Error Scenario-Bad Request:get_invalid_events
            And I set body to {"get_invalid_events_request": {"my_institution": [""],"from_date_time": "2017-05-25T09:00:00.000Z","to_date_time": "2017-05-25T17:30:00.000Z","maximum_number": "100"}}
            And I set headers to
              |name                    |value                                                                                 |
              | LAUApplicationID       | 001                                                                                  |
              | LAUVersion             | 1.0                                                                                  |
              | laUCallTime            | 2018-03-23T15:56:26.728Z                                                             |
              | laURequestNonce        | e802ab96-bb3a-4965-9139-5214b9f0f074                                                 |
              | laUResponseNonce       | null                                                                                 |
              | laUSigned              | (ApplAPIKey=yVGhKiV5z1ZGdaqFXoZ8AiSA9n5CrY6B),(RBACRole=[FullViewer/Scope/cclabeb0]) |
              | laUSignature           | U1khA8h9Lm1PqzB99fG6uw==                                                             |
              | Accept                 | application/json                                                                     |
              | x-api-key              | yVGhKiV5z1ZGdaqFXoZ8AiSA9n5CrY6B                                                     |
              | x-record               | 0                                                                                    |
            When I POST to /get_invalid_events
            Then response code should be 400
