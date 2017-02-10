#HTTP Requests

1. What are some common HTTP status codes?
  * 404 Not Found: means the requested resource is no longer available or, more specifically, just not found
  * 403 Forbidden: means access to the resource is forbidden
  * 500 Internal Server Error: the catchall for a server-side error 
  * 503 Service Unavailable: means the web server isn’t available... usually a temporary problem 
  * 504 Gateway Timeout: indicates a gateway timeout

  Definitions found from this [resource](https://www.globo.tech/learning-center/5-most-common-http-error-codes-explained/).

2. What is the difference between a GET request and a POST request? When might each be used?
  * GET - Requests data from a specified resource
  * POST - Submits data to be processed to a specified resource

  POST is used for destructive actions (creation, editing, deletion) because you can't hit a POST action in the address bar of your browser. GET is used when it's safe to allow a person to call an action. 

3. **Optional bonus question:** What is a cookie (the technical kind, not the delicious kind)? How does it relate to HTTP requests?

  An HTTP cookie (web cookie, browser cookie) is a small piece of data that a server sends to the user's web browser, that may store it and send it back together with the next request to the same server.

  Cookies are mainly used for these three purposes:
    * Session management (user logins, shopping carts)
    * Personalization (user preferences)
    * Tracking (analyzing user behavior)