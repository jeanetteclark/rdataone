% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/auth_request.R
\name{auth_head}
\alias{auth_head}
\title{Send a http HEAD request for a resource with authenticated credentials if available.}
\usage{
auth_head(url, nconfig = config(), node)
}
\arguments{
\item{url}{The URL to be accessed via authenticated HEAD.}

\item{nconfig}{HTTP configuration options as used by curl, defaults to empty list}

\item{node}{The D1Node object that the request will be made to.}
}
\value{
the response object from the method
}
\description{
Retrieve http header information for a URL using an HTTP HEAD request 
using authentication credentials provided in a client certificate or token.  
Authenticated access depends on the suggested openssl package. If the openssl 
package is not installed, then the request falls back to an unauthenticated request, 
which may fail due to insufficient permissions.
Configuration options for httr/RCurl can be passed using the normal config()
mechanisms to generate a config option. Use httr_options() to see a complete list
of available options. Note: The HEAD method is identical to GET except that the server MUST 
NOT return a message-body in the response.
}
