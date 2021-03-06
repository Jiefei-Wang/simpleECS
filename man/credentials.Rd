% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/aws-credentials.R
\name{aws_set_credentials}
\alias{aws_set_credentials}
\alias{aws_get_credentials}
\alias{aws_get_access_key_id}
\alias{aws_get_secret_access_key}
\alias{aws_get_region}
\alias{aws_set_access_key_id}
\alias{aws_set_secret_access_key}
\alias{aws_set_region}
\alias{aws_list_regions}
\title{Set or get AWS credentials}
\usage{
aws_set_credentials(
  key_file = NULL,
  access_key_id = NULL,
  secret_access_key = NULL,
  region = NULL,
  profile = NULL
)

aws_get_credentials()

aws_get_access_key_id()

aws_get_secret_access_key()

aws_get_region()

aws_set_access_key_id(access_key_id)

aws_set_secret_access_key(secret_access_key)

aws_set_region(region)

aws_list_regions()
}
\arguments{
\item{key_file}{The csv credential file that is downloaded from AWS}

\item{access_key_id}{An AWS Access Key ID}

\item{secret_access_key}{An AWS Secret Access Key}

\item{region}{A character string containing the AWS region for the request.
If missing, "us-east-1" is assumed.}

\item{profile}{A character string specifying which profile to use from the
file. By default, the profile named in \code{AWS_PROFILE} is used, otherwise the
"default" profile is used.}
}
\value{
\code{aws_set_credentials} : A list containing credentials(with asterisk) and region.

\code{aws_get_credentials} : A list containing credentials(with asterisk) and region.

\code{aws_get_access_key_id} : The access key id

\code{aws_get_secret_access_key} : The secret access key

\code{aws_get_region} : The region

\code{aws_set_access_key_id} : NULL

\code{aws_set_secret_access_key} : NULL

\code{aws_set_region} : The old region

\code{aws_list_regions}: A vector of available regions
}
\description{
Set or get AWS credentials. This function will be called by the package
when loaded.
}
\details{
The function \code{aws_set_credentials} uses \code{aws.signature::locate_credentials}
internally to determine your credentials. There are a variety of ways to find
the credentials, the most common methods are(sorted by the search order)
\enumerate{
\item user-supplied values passed to the function
\item environment variables (\code{AWS_ACCESS_KEY_ID}, \code{AWS_SECRET_ACCESS_KEY},
\code{AWS_DEFAULT_REGION}, and \code{AWS_SESSION_TOKEN})
\item a profile in a local credentials dot file in the current working directory,
using the profile specified by \code{AWS_PROFILE}
\item a profile in a global credentials dot file in a location set by
\code{AWS_SHARED_CREDENTIALS_FILE} or defaulting typically to "\verb{~/.aws/credentials}"
(or another OS-specific location), using the profile specified by \code{AWS_PROFILE}
}
}
\examples{
## Get your credentials from the environment variables or AWS cli
aws_set_credentials()

## show your current credentials
aws_get_credentials()
}
