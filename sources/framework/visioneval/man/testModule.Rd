% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/module.R
\name{testModule}
\alias{testModule}
\title{Test module}
\usage{
testModule(ModuleName, ParamDir = "defs",
  RunParamFile = "run_parameters.json", GeoFile = "geo.csv",
  ModelParamFile = "model_parameters.json", LoadDatastore = FALSE,
  SaveDatastore = TRUE, DoRun = TRUE)
}
\arguments{
\item{ModuleName}{A string identifying the module name.}

\item{ParamDir}{A string identifying the location of the directory where
the run parameters, model parameters, and geography definition files are
located. The default value is defs. This directory should be located in the
tests directory.}

\item{RunParamFile}{A string identifying the name of the run parameters
file. The default value is run_parameters.json.}

\item{GeoFile}{A string identifying the name of the file which contains
geography definitions.}

\item{ModelParamFile}{A string identifying the name of the file which
contains model parameters. The default value is model_parameters.json.}

\item{LoadDatastore}{A logical value identifying whether to load an existing
datastore. If TRUE, it loads the datastore whose name is identified in the
run_parameters.json file. If FALSE it initializes a new datastore.}

\item{SaveDatastore}{A logical value identifying whether the module outputs
will be written to the datastore. If TRUE the module outputs are written to
the datastore. If FALSE the outputs are not written to the datastore.}

\item{DoRun}{A logical value identifying whether the module should be run. If
FALSE, the function will initialize a datastore, check specifications, and
load inputs but will not run the module but will return the list of module
specifications. That setting is useful for module development in order to
create the all the data needed to assist with module programming. It is
used in conjunction with the getFromDatastore function to create the
dataset that will be provided by the framework. The default value for this
parameter is TRUE. In that case, the module will be run and the results
will checked for consistency with the Set specifications.}
}
\value{
If DoRun is FALSE, the return value is a list containing the module
  specifications. If DoRun is TRUE, there is no return value. The function
  writes out messages to the console and to the log as the testing proceeds.
  These messages include the time when each test starts and when it ends.
  When a key test fails, requiring a fix before other tests can be run,
  execution stops and an error message is written to the console. Detailed
  error messages are also written to the log.
}
\description{
\code{testModule} sets up a test environment and tests a module.
}
\details{
This function is used to set up a test environment and test a module to check
that it can run successfully in the VisionEval model system. The function
sets up the test environment by switching to the tests directory and
initializing a model state list, a log file, and a datastore. The user may
use an existing datastore rather than initialize a new datastore. The use
case for loading an existing datastore is where a package contains several
modules that run in sequence. The first module would initialize a datastore
and then subsequent modules use the datastore that is modified by testing the
previous module. When run this way, it is also necessary to set the
SaveDatastore argument equal to TRUE so that the module outputs will be
saved to the datastore. The function performs several tests including
checking whether the module specifications are written properly, whether
the the test inputs are correct and complete and can be loaded into the
datastore, whether the datastore contains all the module inputs identified in
the Get specifications, whether the module will run, and whether all of the
outputs meet the module's Set specifications. The latter check is carried out
in large part by the checkModuleOutputs function that is called.
#'
}
