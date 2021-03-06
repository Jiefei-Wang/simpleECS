% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_describe_launch_template_versions}
\alias{ec2_describe_launch_template_versions}
\title{Describe Launch Template Versions}
\usage{
ec2_describe_launch_template_versions(
  DryRun = NULL,
  LaunchTemplateId = NULL,
  LaunchTemplateName = NULL,
  LaunchTemplateVersion = NULL,
  MinVersion = NULL,
  MaxVersion = NULL,
  NextToken = NULL,
  MaxResults = NULL,
  Filter = NULL,
  simplify = TRUE,
  others = list(),
  print_on_error = aws_get_print_on_error(),
  retry_time = aws_get_retry_time(),
  network_timeout = aws_get_network_timeout(),
  region = aws_get_region()
)
}
\arguments{
\item{DryRun}{Logical. Checks whether you have the required permissions for the action, without actually making the request,...[optional]}

\item{LaunchTemplateId}{Character. The ID of the launch template.[optional]}

\item{LaunchTemplateName}{Character. The name of the launch template.[optional]}

\item{LaunchTemplateVersion}{List.   One or more versions of the launch template.[optional]}

\item{MinVersion}{Character. The version number after which to describe launch template versions.[optional]}

\item{MaxVersion}{Character. The version number up to which to describe launch template versions.[optional]}

\item{NextToken}{Characters. The token for the next page of results[optional]}

\item{MaxResults}{Integer. The maximum number of results to return in a single call.[optional]}

\item{Filter}{Named list where the name is the filter name and the value is the
filter's value. The value can be a vector or a list object (see below)[optional]}

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
Describes one or more versions of a specified
launch template. You can describe all versions, individual versions, or
a range of versions. You can also describe all the latest versions or
all the default versions of all the launch templates in your
account.
}
\section{DryRun}{

Checks whether you have the
required permissions for the action, without actually making the
request, and provides an error response. If you have the required
permissions, the error response is \code{DryRunOperation}. Otherwise, it is
\code{UnauthorizedOperation}.
}

\section{LaunchTemplateId}{

The ID of the launch
template. To describe one or more versions of a specified launch
template, you must specify either the launch template ID or the launch
template name in the request. To describe all the latest or default
launch template versions in your account, you must omit this
parameter.
}

\section{LaunchTemplateName}{

The name of the launch template. To
describe one or more versions of a specified launch template, you must
specify either the launch template ID or the launch template name in the
request. To describe all the latest or default launch template versions
in your account, you must omit this parameter.
}

\section{LaunchTemplateVersion}{


One or more versions of the launch template. Valid values depend on
whether you are describing a specified launch template (by ID or name)
or all launch templates in your account.

To describe one or more versions of a specified launch template, valid
values are \verb{$Latest}, \verb{$Default}, and numbers.

To describe all launch templates in your account that are defined as the
latest version, the valid value is \verb{$Latest}. To describe all launch
templates in your account that are defined as the default version, the
valid value is \verb{$Default}. You can specify \verb{$Latest} and \verb{$Default} in
the same call. You cannot specify numbers.
}

\section{MinVersion}{

The version number after which to describe launch
template versions.
}

\section{MaxVersion}{

The version number up to which to
describe launch template versions.
}

\section{MaxResults}{

The maximum number
of results to return in a single call. To retrieve the remaining
results, make another call with the returned \code{NextToken} value. This
value can be between 1 and 200.
}

\section{Filter}{


One or more filters.
\itemize{
\item \code{create-time} - The time the launch template version was created.
\item \code{ebs-optimized} - A boolean that indicates whether the instance is
optimized for Amazon EBS I/O.
\item \code{iam-instance-profile} - The ARN of the IAM instance profile.
\item \code{image-id} - The ID of the AMI.
\item \code{instance-type} - The instance type.
\item \code{is-default-version} - A boolean that indicates whether the launch
template version is the default version.
\item \code{kernel-id} - The kernel ID.
\item \code{ram-disk-id} - The RAM disk ID.
}
}

