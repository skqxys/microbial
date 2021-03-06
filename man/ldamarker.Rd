% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/Functions.R
\name{ldamarker}
\alias{ldamarker}
\title{Identify biomarker by using LEfse method}
\usage{
ldamarker(physeq, group, pvalue = 0.05, normalize = TRUE, method = "relative")
}
\arguments{
\item{physeq}{A \code{phyloseq} object containing merged information of abundance,
taxonomic assignment, sample data including the measured variables and categorical information
of the samples, and / or phylogenetic tree if available.}

\item{group}{group. A character string specifying the name of a categorical variable containing  grouping information.}

\item{pvalue}{pvalue threshold for significant results from kruskal.test}

\item{normalize}{to normalize the data before analysis(TRUE/FALSE)}
}
\description{
Identify biomarker by using LEfse method
}
\examples{
\dontrun{
data("GlobalPatterns",package="phyloseq")
require(phyloseq)
samdf<-as(sample_data(physeq),"data.frame")
samdf$group<-c(rep("A",14),rep("B",12))
sample_data(physeq)<-samdf
res <- ldamarker(physeq,group="group")
}

}
\author{
Kai Guo
}
