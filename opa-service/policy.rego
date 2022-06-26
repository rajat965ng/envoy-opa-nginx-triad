package envoy.authz

import input.attributes.request.http as http_request

default allow = false

allow = response {
  http_request.method == "GET"
  response := {
    "allowed": true,
    "headers": {"x-current-user": "OPA"},
    "response_headers_to_add": { "x-current-user": "OPA" }
  }
}
