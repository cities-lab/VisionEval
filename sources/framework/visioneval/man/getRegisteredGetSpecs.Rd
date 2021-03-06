% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/module.R
\name{getRegisteredGetSpecs}
\alias{getRegisteredGetSpecs}
\title{Returns Get specifications for registered datasets.}
\usage{
getRegisteredGetSpecs(Names_, Tables_, Groups_, NameRegistryDir = NULL)
}
\arguments{
\item{Names_}{A character vector of the dataset names to get specifications
for.}

\item{Tables_}{A character vector of the tables that the datasets are a part
of.}

\item{Groups_}{A character vector of the groups that the tables are a part of.}

\item{NameRegistryDir}{a string identifying the path to the directory
where the name registry file is located.}
}
\value{
A data frame containing the Get specifications for the identified
datasets.
}
\description{
\code{getRegisteredGetSpecs} returns a data frame of Get specifications for
datasets in the VisionEval name registry.
}
\details{
The VisionEval name registry (VENameRegistry.json) keeps track of the
dataset names created by all registered modules by reading in datasets
specified in the module Inp specifications or by returning calculated
datasets as specified in the module Set specifications. This function
reads in the name registry and returns Get specifications for identified
datasets.
}
