% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ecs-actions.R
\name{ecs_create_capacity_provider}
\alias{ecs_create_capacity_provider}
\title{Create Capacity Provider}
\usage{
ecs_create_capacity_provider(
  name = NULL,
  autoScalingGroupProvider = NULL,
  tags = NULL,
  simplify = TRUE,
  others = list(),
  print_on_error = aws_get_print_on_error(),
  retry_time = aws_get_retry_time(),
  network_timeout = aws_get_network_timeout(),
  region = aws_get_region()
)
}
\arguments{
\item{name}{Character. The name of the capacity provider.}

\item{autoScalingGroupProvider}{Object. The details of the Auto Scaling group for the capacity provider.}

\item{tags}{List.   The metadata that you apply to the capacity provider to help you categorize and organize them.}

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
Creates a new capacity provider. Capacity providers are associated with
an Amazon ECS cluster and are used in capacity provider strategies to
facilitate cluster auto scaling.
}
\section{name}{

The name of the capacity provider. Up to 255 characters are allowed,
including letters (upper and lowercase), numbers, underscores, and
hyphens. The name cannot be prefixed with \'\code{aws}\', \'\code{ecs}\', or
\'\code{fargate}\'.
}

\section{autoScalingGroupProvider}{

The details of the Auto Scaling group
for the capacity provider.
}

\section{tags}{


The metadata that you apply to the capacity provider to help you
categorize and organize them. Each tag consists of a key and an optional
value, both of which you define.

The following basic restrictions apply to tags:
\itemize{
\item Maximum number of tags per resource - 50
\item For each resource, each tag key must be unique, and each tag key can
have only one value.
\item Maximum key length - 128 Unicode characters in UTF-8
\item Maximum value length - 256 Unicode characters in UTF-8
\item If your tagging schema is used across multiple services and
resources, remember that other services may have restrictions on
allowed characters. Generally allowed characters are: letters,
numbers, and spaces representable in UTF-8, and the following
characters: + - = . _ : / @.
\item Tag keys and values are case-sensitive.
\item Do not use \verb{aws:}, \verb{AWS:}, or any upper or lowercase combination of
such as a prefix for either keys or values as it is reserved for AWS
use. You cannot edit or delete tag keys or values with this prefix.
Tags with this prefix do not count against your tags per resource
limit.
}
}

