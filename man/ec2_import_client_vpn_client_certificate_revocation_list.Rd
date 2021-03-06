% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_import_client_vpn_client_certificate_revocation_list}
\alias{ec2_import_client_vpn_client_certificate_revocation_list}
\title{Import Client Vpn Client Certificate Revocation List}
\usage{
ec2_import_client_vpn_client_certificate_revocation_list(
  ClientVpnEndpointId,
  CertificateRevocationList,
  DryRun = NULL,
  simplify = TRUE,
  others = list(),
  print_on_error = aws_get_print_on_error(),
  retry_time = aws_get_retry_time(),
  network_timeout = aws_get_network_timeout(),
  region = aws_get_region()
)
}
\arguments{
\item{ClientVpnEndpointId}{Character. The ID of the Client VPN endpoint to which the client certificate revocation list applies.}

\item{CertificateRevocationList}{Character. The client certificate revocation list file.}

\item{DryRun}{Logical. Checks whether you have the required permissions for the action, without actually making the request,...[optional]}

\item{simplify}{Logical. Whether to simplify the result and handle \code{nextToken}
in the response[optional]}

\item{others}{Named list. The parameters that are not included in the
function parameters and need to be added into the request[optional]}

\item{print_on_error}{Logical. Whether to show an error message when a
network error occurs.}

\item{retry_time}{Integer. Number of retries for a REST request when encounter the
network issue. If the request has been sent \code{retry_time} times but still not
be able to get the response, an error will be thrown.}

\item{network_timeout}{Numeric. Number of seconds to wait for a REST response
until giving up. Can not be less than 1 ms.}

\item{region}{Character. The region of the AWS service.}
}
\value{
A list object or a character vector
}
\description{
Import Client Vpn Client Certificate Revocation List
}
\section{ClientVpnEndpointId}{

The ID of the Client VPN
endpoint to which the client certificate revocation list
applies.
}

\section{CertificateRevocationList}{

The client certificate revocation list
file. For more information, see \href{https://docs.aws.amazon.com/vpn/latest/clientvpn-admin/cvpn-working-certificates.html#cvpn-working-certificates-generate}{Generate a Client Certificate Revocation List}
in the \emph{AWS Client VPN Administrator Guide}.
}

\section{DryRun}{

Checks
whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.
}

