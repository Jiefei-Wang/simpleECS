% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_import_snapshot}
\alias{ec2_import_snapshot}
\title{Import Snapshot}
\usage{
ec2_import_snapshot(
  ClientData = NULL,
  ClientToken = NULL,
  Description = NULL,
  DiskContainer = NULL,
  DryRun = NULL,
  Encrypted = NULL,
  KmsKeyId = NULL,
  RoleName = NULL,
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
\item{ClientData}{Object. The client-specific data.[optional]}

\item{ClientToken}{Character. Token to enable idempotency for VM import requests.[optional]}

\item{Description}{Character. The description string for the import snapshot task.[optional]}

\item{DiskContainer}{Object. Information about the disk container.[optional]}

\item{DryRun}{Logical. Checks whether you have the required permissions for the action, without actually making the request,...[optional]}

\item{Encrypted}{Logical. Specifies whether the destination snapshot of the imported image should be encrypted.[optional]}

\item{KmsKeyId}{Character.   An identifier for the symmetric AWS Key Management Service (AWS KMS) customer master key (CMK)...[optional]}

\item{RoleName}{Character. The name of the role to use when not using the default role, \'vmimport\'.[optional]}

\item{TagSpecification}{List. The tags to apply to the import snapshot task during creation.[optional]}

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
Imports a disk into an EBS
snapshot.
}
\section{ClientData}{

The client-specific
data.
}

\section{ClientToken}{

Token to enable idempotency for VM import
requests.
}

\section{Description}{

The description string for the import
snapshot task.
}

\section{DiskContainer}{

Information about the disk
container.
}

\section{DryRun}{

Checks whether you have the required
permissions for the action, without actually making the request, and
provides an error response. If you have the required permissions, the
error response is \code{DryRunOperation}. Otherwise, it is
\code{UnauthorizedOperation}.
}

\section{Encrypted}{

Specifies whether the
destination snapshot of the imported image should be encrypted. The
default CMK for EBS is used unless you specify a non-default AWS Key
Management Service (AWS KMS) CMK using \code{KmsKeyId}. For more information,
see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/EBSEncryption.html}{Amazon EBS Encryption}
in the \emph{Amazon Elastic Compute Cloud User Guide}.
}

\section{KmsKeyId}{


An identifier for the symmetric AWS Key Management Service (AWS KMS)
customer master key (CMK) to use when creating the encrypted snapshot.
This parameter is only required if you want to use a non-default CMK; if
this parameter is not specified, the default CMK for EBS is used. If a
\code{KmsKeyId} is specified, the \code{Encrypted} flag must also be set.

The CMK identifier may be provided in any of the following formats:
\itemize{
\item Key ID
\item Key alias. The alias ARN contains the \code{arn:aws:kms} namespace,
followed by the Region of the CMK, the AWS account ID of the CMK
owner, the \code{alias} namespace, and then the CMK alias. For example,
arn:aws:kms:\emph{us-east-1}:\emph{012345678910}:alias/\emph{ExampleAlias}.
\item ARN using key ID. The ID ARN contains the \code{arn:aws:kms} namespace,
followed by the Region of the CMK, the AWS account ID of the CMK
owner, the \code{key} namespace, and then the CMK ID. For example,
arn:aws:kms:\emph{us-east-1}:\emph{012345678910}:key/\emph{abcd1234-a123-456a-a12b-a123b4cd56ef}.
\item ARN using key alias. The alias ARN contains the \code{arn:aws:kms}
namespace, followed by the Region of the CMK, the AWS account ID of
the CMK owner, the \code{alias} namespace, and then the CMK alias. For
example,
arn:aws:kms:\emph{us-east-1}:\emph{012345678910}:alias/\emph{ExampleAlias}.
}

AWS parses \code{KmsKeyId} asynchronously, meaning that the action you call
may appear to complete even though you provided an invalid identifier.
This action will eventually report failure.

The specified CMK must exist in the Region that the snapshot is being
copied to.

Amazon EBS does not support asymmetric CMKs.
}

\section{RoleName}{

The name of the role to use when not using the
default role, \'vmimport\'.
}

\section{TagSpecification}{

The tags to apply to the
import snapshot task during creation.
}

