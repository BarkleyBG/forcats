% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/lvls.R
\name{lvls}
\alias{lvls}
\alias{lvls_reorder}
\alias{lvls_revalue}
\alias{lvls_expand}
\title{Low-level functions for manipulating levels}
\usage{
lvls_reorder(f, idx, ordered = NA)

lvls_revalue(f, new_levels)

lvls_expand(f, new_levels)
}
\arguments{
\item{f}{A factor}

\item{idx}{A integer index, with one integer for each existing level}

\item{ordered}{A logical which determines the "ordered" status of the
output factor. \code{NA} preserves the existing status of the factor.}

\item{new_levels}{A character vector of new levels}
}
\description{
\code{lvls_reorder} leaves values as is, but changes the order.
\code{lvls_revalue} changes the values of existing levels; there must
be one new level for each old level.
\code{lvls_extend} extends the set of levels; the new level must
include the old levels.
}
\details{
These functions are less helpful than the higher-level \code{fct_} functions,
but are safer than the very low-level manipulation of levels directly,
because they are more specific, and hence can more carefully check their
arguments.
}
\examples{
f <- factor(c("a", "b", "c"))
lvls_reorder(f, 3:1)
lvls_revalue(f, c("apple", "banana", "carrot"))
lvls_expand(f, c("a", "b", "c", "d"))
}
