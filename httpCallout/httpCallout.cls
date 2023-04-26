public class httpCallout {
   
  public static void getCalloutResponseContents() {

   // Instantiate a new Http object
      Http h = new Http();
  // Pass in the endpoint to be used using the string url
      string url = 'https://postman-echo.com/';
      url +='get?foo1=bar1&foo2=bar2';
  // Instantiate a new HTTP request, specify the method (GET) as well as the endpoint
      HttpRequest req = new HttpRequest();
      req.setEndpoint(url);
      req.setMethod('GET');

  // Send the request, and return a response
     HttpResponse res = h.send(req);
        if (res.getStatusCode() != 200) {
            System.debug('The status code returned was not expected: ' +
                res.getStatusCode() + ' ' + res.getStatus());
        } else {
            system.debug(res.getstatuscode());
           System.debug(res.getBody());
    
        }
  }


}