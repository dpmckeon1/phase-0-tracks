# HTTP Requests Reseach
## Dan McKeon

### What are some common HTTP status codes?

*General Categories:*

* 1xx: Informational
* 2xx: Success
* 3xx: Redirection
* 4xx: Client Error 
* 5xx: Server Error

*Specific Codes:*

* 200 OK - Successful request
* 400 Bad Request - HTTP request has invalid syntax
* 401 Unauthorized - Requested resource has not been authenticated correctly (user must provide credentials)
* 403 Forbidden - Access to resource if forbidden, meaning resource is available from some machines/clients, just not this particular one (note: this does not pertain to authentication issues as those result in 401 errors)
* 404 Not Found - Requested resource could not be found
* 500 Internal Server Error - Catch all error code for other server errors not specified as a specific server error; could just be a temporary problem where retry is successful
* 502 Bad Gateway
* 503 Service Unavailable - Web server is not available; could just be a temporary problem where retry is successful
* 504 Gateway Timeout - Connection to server took too long, could be due to any number of reasons including too much traffic or network device malfunction; could just be a temporary problem where retry is successful

### Difference between GET and POST request

*GET Requests*

* GET requests obtain remote data by including all required data encoded in a URL
* GET requests are used for as simple an action as navigating to a web page (when navigating to cnn.com, the browser is issuing a GET request for http://www.cnn.com) but are also used for retrieving data from an API or a multitude of other actions

*POST Requests*

* POST requests update remote data by supplying data from the client in the message body to be processed
* POST requests are used for actions like submitting after filling out a form or creating an account - situations where the browser needs to communicate information to be stored in a remote database


### What is a cookie? How does it relate to HTTP requests?

* Cookies are data sent from a website to be stored on a user's computer and store state information such as previous browsing activity or shopping cart status
* When a server received an HTTP request, it can include a Set-Cookie header in the response, which creates a cookie
* The browser stores the cookie and the server that supplied it will interact with that cookie every time the user visits that website in the future




