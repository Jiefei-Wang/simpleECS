% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/ec2-actions.R
\name{ec2_describe_instance_types}
\alias{ec2_describe_instance_types}
\title{Describe Instance Types}
\usage{
ec2_describe_instance_types(
  DryRun = NULL,
  InstanceType = NULL,
  Filter = NULL,
  MaxResults = NULL,
  NextToken = NULL,
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

\item{InstanceType}{List. The instance types.[optional]}

\item{Filter}{Named list where the name is the filter name and the value is the
filter's value. The value can be a vector or a list object (see below)[optional]}

\item{MaxResults}{Integer. The maximum number of results to return for the request in a single page.[optional]}

\item{NextToken}{Characters. The token for the next page of results[optional]}

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
Describes the details of the instance
types that are offered in a location. The results can be filtered by the
attributes of the instance types.
}
\section{DryRun}{

Checks whether
you have the required permissions for the action, without actually
making the request, and provides an error response. If you have the
required permissions, the error response is \code{DryRunOperation}.
Otherwise, it is \code{UnauthorizedOperation}.
}

\section{InstanceType}{

The
instance types. For more information, see \href{https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/instance-types.html}{Instance types}
in the \emph{Amazon EC2 User Guide}.
}

\section{Filter}{


One or more filters. Filter names and values are case-sensitive.
\itemize{
\item \code{auto-recovery-supported} - Indicates whether auto recovery is
supported (\code{true} \| \code{false}).
\item \code{bare-metal} - Indicates whether it is a bare metal instance type
(\code{true} \| \code{false}).
\item \code{burstable-performance-supported} - Indicates whether it is a
burstable performance instance type (\code{true} \| \code{false}).
\item \code{current-generation} - Indicates whether this instance type is the
latest generation instance type of an instance family (\code{true} \|
\code{false}).
\item \verb{ebs-info.ebs-optimized-info.baseline-bandwidth-in-mbps} - The
baseline bandwidth performance for an EBS-optimized instance type,
in Mbps.
\item \code{ebs-info.ebs-optimized-info.baseline-iops} - The baseline
input/output storage operations per second for an EBS-optimized
instance type.
\item \verb{ebs-info.ebs-optimized-info.baseline-throughput-in-mbps} - The
baseline throughput performance for an EBS-optimized instance type,
in MB/s.
\item \verb{ebs-info.ebs-optimized-info.maximum-bandwidth-in-mbps} - The
maximum bandwidth performance for an EBS-optimized instance type, in
Mbps.
\item \code{ebs-info.ebs-optimized-info.maximum-iops} - The maximum
input/output storage operations per second for an EBS-optimized
instance type.
\item \verb{ebs-info.ebs-optimized-info.maximum-throughput-in-mbps} - The
maximum throughput performance for an EBS-optimized instance type,
in MB/s.
\item \code{ebs-info.ebs-optimized-support} - Indicates whether the instance
type is EBS-optimized (\code{supported} \| \code{unsupported} \| \code{default}).
\item \code{ebs-info.encryption-support} - Indicates whether EBS encryption is
supported (\code{supported} \| \code{unsupported}).
\item \code{ebs-info.nvme-support} - Indicates whether non-volatile memory
express (NVMe) is supported for EBS volumes (\code{required} \|
\code{supported} \| \code{unsupported}).
\item \code{free-tier-eligible} - Indicates whether the instance type is
eligible to use in the free tier (\code{true} \| \code{false}).
\item \code{hibernation-supported} - Indicates whether On-Demand hibernation is
supported (\code{true} \| \code{false}).
\item \code{hypervisor} - The hypervisor (\code{nitro} \| \code{xen}).
\item \code{instance-storage-info.disk.count} - The number of local disks.
\item \verb{instance-storage-info.disk.size-in-gb} - The storage size of each
instance storage disk, in GB.
\item \code{instance-storage-info.disk.type} - The storage technology for the
local instance storage disks (\code{hdd} \| \code{ssd}).
\item \code{instance-storage-info.nvme-support} - Indicates whether
non-volatile memory express (NVMe) is supported for instance store
(\code{required} \| \code{supported}) \| \code{unsupported}).
\item \verb{instance-storage-info.total-size-in-gb} - The total amount of
storage available from all local instance storage, in GB.
\item \code{instance-storage-supported} - Indicates whether the instance type
has local instance storage (\code{true} \| \code{false}).
\item \code{instance-type} - The instance type (for example \code{c5.2xlarge} or
c5\*).
\item \verb{memory-info.size-in-mib} - The memory size.
\item \code{network-info.efa-supported} - Indicates whether the instance type
supports Elastic Fabric Adapter (EFA) (\code{true} \| \code{false}).
\item \code{network-info.ena-support} - Indicates whether Elastic Network
Adapter (ENA) is supported or required (\code{required} \| \code{supported} \|
\code{unsupported}).
\item \code{network-info.ipv4-addresses-per-interface} - The maximum number of
private IPv4 addresses per network interface.
\item \code{network-info.ipv6-addresses-per-interface} - The maximum number of
private IPv6 addresses per network interface.
\item \code{network-info.ipv6-supported} - Indicates whether the instance type
supports IPv6 (\code{true} \| \code{false}).
\item \code{network-info.maximum-network-interfaces} - The maximum number of
network interfaces per instance.
\item \code{network-info.network-performance} - The network performance (for
example, \'25 Gigabit\').
\item \code{processor-info.supported-architecture} - The CPU architecture
(\code{arm64} \| \code{i386} \| \code{x86_64}).
\item \verb{processor-info.sustained-clock-speed-in-ghz} - The CPU clock speed,
in GHz.
\item \code{supported-root-device-type} - The root device type (\code{ebs} \|
\code{instance-store}).
\item \code{supported-usage-class} - The usage class (\code{on-demand} \| \code{spot}).
\item \code{supported-virtualization-type} - The virtualization type (\code{hvm} \|
\code{paravirtual}).
\item \code{vcpu-info.default-cores} - The default number of cores for the
instance type.
\item \code{vcpu-info.default-threads-per-core} - The default number of threads
per core for the instance type.
\item \code{vcpu-info.default-vcpus} - The default number of vCPUs for the
instance type.
\item \code{vcpu-info.valid-cores} - The number of cores that can be configured
for the instance type.
\item \code{vcpu-info.valid-threads-per-core} - The number of threads per core
that can be configured for the instance type. For example, \'1\' or
\'1,2\'.
}
}

\section{MaxResults}{

The maximum number of results to return for the
request in a single page. The remaining results can be seen by sending
another request with the next token value.
}

