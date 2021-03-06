% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_create_fpga_image}
\alias{ec2_create_fpga_image}
\title{Create Fpga Image}
\usage{
ec2_create_fpga_image(
  InputStorageLocation,
  DryRun = NULL,
  LogsStorageLocation = NULL,
  Description = NULL,
  Name = NULL,
  ClientToken = NULL,
  TagSpecification = NULL,
  simplify = TRUE,
  others = list(),
  print_on_error = aws_get_print_on_error(),
  retry_time = aws_get_retry_time(),
  network_timeout = aws_get_network_timeout(),
  region = aws_get_region()
)
}
\arguments{
\item{InputStorageLocation}{Object. The location of the encrypted design checkpoint in Amazon S3. The input must be a tarball.}

\item{DryRun}{Logical. Checks whether you have the required permissions for the action, without actually making the request,...[optional]}

\item{LogsStorageLocation}{Object. The location in Amazon S3 for the output logs.[optional]}

\item{Description}{Character. A description for the AFI.[optional]}

\item{Name}{Character. A name for the AFI.[optional]}

\item{ClientToken}{Character. Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.[optional]}

\item{TagSpecification}{List. The tags to apply to the FPGA image during creation.[optional]}

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
Create Fpga Image
}
\section{InputStorageLocation}{

The location of the encrypted design checkpoint in
Amazon S3. The input must be a tarball.
}

\section{DryRun}{

Checks
whether you have the required permissions for the action, without
actually making the request, and provides an error response. If you have
the required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.
}

\section{LogsStorageLocation}{

The
location in Amazon S3 for the output logs.
}

\section{Description}{

A
description for the AFI.
}

\section{Name}{

A name for the
AFI.
}

\section{ClientToken}{

Unique, case-sensitive identifier that you
provide to ensure the idempotency of the request. For more information,
see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html}{Ensuring Idempotency}.
}

\section{TagSpecification}{

The
tags to apply to the FPGA image during creation.
}

