% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_create_reserved_instances_listing}
\alias{ec2_create_reserved_instances_listing}
\title{Create Reserved Instances Listing}
\usage{
ec2_create_reserved_instances_listing(
  ClientToken,
  InstanceCount,
  PriceSchedules,
  ReservedInstancesId,
  simplify = TRUE,
  others = list(),
  print_on_error = aws_get_print_on_error(),
  retry_time = aws_get_retry_time(),
  network_timeout = aws_get_network_timeout(),
  region = aws_get_region()
)
}
\arguments{
\item{ClientToken}{Character. Unique, case-sensitive identifier you provide to ensure idempotency of your listings.}

\item{InstanceCount}{Integer. The number of instances that are a part of a Reserved Instance account to be listed in the Reserved...}

\item{PriceSchedules}{List. A list specifying the price of the Standard Reserved Instance for each month remaining in the Reserved...}

\item{ReservedInstancesId}{Character. The ID of the active Standard Reserved Instance.}

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
Create Reserved Instances Listing
}
\section{ClientToken}{

Unique, case-sensitive identifier you provide
to ensure idempotency of your listings. This helps avoid duplicate
listings. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/APIReference/Run_Instance_Idempotency.html}{Ensuring Idempotency}.
}

\section{InstanceCount}{

The
number of instances that are a part of a Reserved Instance account to be
listed in the Reserved Instance Marketplace. This number should be less
than or equal to the instance count associated with the Reserved
Instance ID specified in this call.
}

\section{PriceSchedules}{

A list
specifying the price of the Standard Reserved Instance for each month
remaining in the Reserved Instance term.
}

\section{ReservedInstancesId}{

The ID of
the active Standard Reserved Instance.
}

