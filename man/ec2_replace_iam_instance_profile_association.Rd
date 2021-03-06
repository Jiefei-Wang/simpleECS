% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_replace_iam_instance_profile_association}
\alias{ec2_replace_iam_instance_profile_association}
\title{Replace Iam Instance Profile Association}
\usage{
ec2_replace_iam_instance_profile_association(
  IamInstanceProfile,
  AssociationId,
  simplify = TRUE,
  others = list(),
  print_on_error = aws_get_print_on_error(),
  retry_time = aws_get_retry_time(),
  network_timeout = aws_get_network_timeout(),
  region = aws_get_region()
)
}
\arguments{
\item{IamInstanceProfile}{Object. The IAM instance profile.}

\item{AssociationId}{Character. The ID of the existing IAM instance profile association.}

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
Replace Iam Instance Profile Association
}
\section{IamInstanceProfile}{

The IAM instance
profile.
}

\section{AssociationId}{

The ID of the existing IAM instance profile
association.
}

