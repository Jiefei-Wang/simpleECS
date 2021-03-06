% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_create_flow_logs}
\alias{ec2_create_flow_logs}
\title{Create Flow Logs}
\usage{
ec2_create_flow_logs(
  ResourceId,
  ResourceType,
  TrafficType,
  DryRun = NULL,
  ClientToken = NULL,
  DeliverLogsPermissionArn = NULL,
  LogGroupName = NULL,
  LogDestinationType = NULL,
  LogDestination = NULL,
  LogFormat = NULL,
  TagSpecification = NULL,
  MaxAggregationInterval = NULL,
  simplify = TRUE,
  others = list(),
  print_on_error = aws_get_print_on_error(),
  retry_time = aws_get_retry_time(),
  network_timeout = aws_get_network_timeout(),
  region = aws_get_region()
)
}
\arguments{
\item{ResourceId}{List.   The ID of the subnet, network interface, or VPC for which you want to create a flow log.}

\item{ResourceType}{Character. The type of resource for which to create the flow log.}

\item{TrafficType}{Character. The type of traffic to log.}

\item{DryRun}{Logical. Checks whether you have the required permissions for the action, without actually making the request,...[optional]}

\item{ClientToken}{Character. Unique, case-sensitive identifier that you provide to ensure the idempotency of the request.[optional]}

\item{DeliverLogsPermissionArn}{Character.   The ARN for the IAM role that permits Amazon EC2 to publish flow logs to a CloudWatch Logs log...[optional]}

\item{LogGroupName}{Character.   The name of a new or existing CloudWatch Logs log group where Amazon EC2 publishes your flow logs....[optional]}

\item{LogDestinationType}{Character.   Specifies the type of destination to which the flow log data is to be published.[optional]}

\item{LogDestination}{Character.   Specifies the destination to which the flow log data is to be published.[optional]}

\item{LogFormat}{Character.   The fields to include in the flow log record, in the order in which they should appear.[optional]}

\item{TagSpecification}{List. The tags to apply to the flow logs.[optional]}

\item{MaxAggregationInterval}{Integer.   The maximum interval of time during which a flow of packets is captured and aggregated into a flow...[optional]}

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
Create Flow Logs
}
\section{ResourceId}{


The ID of the subnet, network interface, or VPC for which you want to
create a flow log.

Constraints: Maximum of 1000 resources
}

\section{ResourceType}{

The type of resource for which to create the flow
log. For example, if you specified a VPC ID for the \code{ResourceId}
property, specify \code{VPC} for this property.
}

\section{TrafficType}{

The type
of traffic to log. You can log traffic that the resource accepts or
rejects, or all traffic.
}

\section{DryRun}{

Checks whether you have the
required permissions for the action, without actually making the
request, and provides an error response. If you have the required
permissions, the error response is \code{DryRunOperation}. Otherwise, it is
\code{UnauthorizedOperation}.
}

\section{ClientToken}{

Unique, case-sensitive
identifier that you provide to ensure the idempotency of the request.
For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/Run_Instance_Idempotency.html}{How to Ensure Idempotency}.
}

\section{DeliverLogsPermissionArn}{


The ARN for the IAM role that permits Amazon EC2 to publish flow logs to
a CloudWatch Logs log group in your account.

If you specify \code{LogDestinationType} as \code{s3}, do not specify
\code{DeliverLogsPermissionArn} or \code{LogGroupName}.
}

\section{LogGroupName}{


The name of a new or existing CloudWatch Logs log group where Amazon EC2
publishes your flow logs.

If you specify \code{LogDestinationType} as \code{s3}, do not specify
\code{DeliverLogsPermissionArn} or \code{LogGroupName}.
}

\section{LogDestinationType}{


Specifies the type of destination to which the flow log data is to be
published. Flow log data can be published to CloudWatch Logs or Amazon
S3. To publish flow log data to CloudWatch Logs, specify
\code{cloud-watch-logs}. To publish flow log data to Amazon S3, specify \code{s3}.

If you specify \code{LogDestinationType} as \code{s3}, do not specify
\code{DeliverLogsPermissionArn} or \code{LogGroupName}.

Default: \code{cloud-watch-logs}
}

\section{LogDestination}{


Specifies the destination to which the flow log data is to be published.
Flow log data can be published to a CloudWatch Logs log group or an
Amazon S3 bucket. The value specified for this parameter depends on the
value specified for \code{LogDestinationType}.

If \code{LogDestinationType} is not specified or \code{cloud-watch-logs}, specify
the Amazon Resource Name (ARN) of the CloudWatch Logs log group. For
example, to publish to a log group called \code{my-logs}, specify
\code{arn:aws:logs:us-east-1:123456789012:log-group:my-logs}. Alternatively,
use \code{LogGroupName} instead.

If LogDestinationType is \code{s3}, specify the ARN of the Amazon S3 bucket.
You can also specify a subfolder in the bucket. To specify a subfolder
in the bucket, use the following ARN format:
\verb{bucket_ARN/subfolder_name/}. For example, to specify a subfolder named
\code{my-logs} in a bucket named \code{my-bucket}, use the following ARN:
\verb{arn:aws:s3:::my-bucket/my-logs/}. You cannot use \code{AWSLogs} as a
subfolder name. This is a reserved term.
}

\section{LogFormat}{


The fields to include in the flow log record, in the order in which they
should appear. For a list of available fields, see \href{https://docs.aws.amazon.com/vpc/latest/userguide/flow-logs.html#flow-log-records}{Flow Log Records}.
If you omit this parameter, the flow log is created using the default
format. If you specify this parameter, you must specify at least one
field.

Specify the fields using the \verb{$\{field-id\}} format, separated by spaces.
For the AWS CLI, use single quotation marks (\' \') to surround the
parameter value.
}

\section{TagSpecification}{

The tags to apply to the flow
logs.
}

\section{MaxAggregationInterval}{


The maximum interval of time during which a flow of packets is captured
and aggregated into a flow log record. You can specify 60 seconds (1
minute) or 600 seconds (10 minutes).

When a network interface is attached to a \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html#ec2-nitro-instances}{Nitro-based instance},
the aggregation interval is always 60 seconds or less, regardless of the
value that you specify.

Default: 600
}

