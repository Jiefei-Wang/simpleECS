% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_authorize_client_vpn_ingress}
\alias{ec2_authorize_client_vpn_ingress}
\title{Authorize Client Vpn Ingress}
\usage{
ec2_authorize_client_vpn_ingress(
  ClientVpnEndpointId,
  TargetNetworkCidr,
  AccessGroupId = NULL,
  AuthorizeAllGroups = NULL,
  Description = NULL,
  ClientToken = NULL,
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
\item{ClientVpnEndpointId}{Character. The ID of the Client VPN endpoint.}

\item{TargetNetworkCidr}{Character. The IPv4 address range, in CIDR notation, of the network for which access is being authorized.}

\item{AccessGroupId}{Character. The ID of the group to grant access to, for example, the Active Directory group or identity provider...[optional]}

\item{AuthorizeAllGroups}{Logical. Indicates whether to grant access to all clients.[optional]}

\item{Description}{Character. A brief description of the authorization rule.[optional]}

\item{ClientToken}{Character. Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.[optional]}

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
Adds an ingress authorization rule to a Client VPN
endpoint. Ingress authorization rules act as firewall rules that grant
access to networks. You must configure ingress authorization rules to
enable clients to access resources in AWS or on-premises
networks.
}
\section{ClientVpnEndpointId}{

The ID of the Client VPN
endpoint.
}

\section{TargetNetworkCidr}{

The IPv4 address range, in CIDR notation,
of the network for which access is being
authorized.
}

\section{AccessGroupId}{

The ID of the group to grant access to,
for example, the Active Directory group or identity provider (IdP)
group. Required if \code{AuthorizeAllGroups} is \code{false} or not
specified.
}

\section{AuthorizeAllGroups}{

Indicates whether to grant access to all
clients. Specify \code{true} to grant all clients who successfully establish
a VPN connection access to the network. Must be set to \code{true} if
\code{AccessGroupId} is not specified.
}

\section{Description}{

A brief
description of the authorization rule.
}

\section{ClientToken}{

Unique,
case-sensitive identifier that you provide to ensure the idempotency of
the request. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html}{How to Ensure Idempotency}.
}

\section{DryRun}{

Checks
whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.
}

