\name{create_artificial_data}
\alias{create_artificial_data}
\title{
    Create an Artificial eQTL Data Set
}
\description{
    Create artificial genotype, gene expression, 
    covariate, and gene/SNP location data sets.
}
\usage{
create_artificial_data(
    nsample,
    ngene = 5000,
    nsnp = 500e+03,
    ncvrt = 10,
    minMAF = 0.2,
    saveDir = ".",
    returnData = FALSE,
    savefmat = FALSE,
    savetxt = FALSE,
    verbose = TRUE)
}
\arguments{
    \item{nsample}{
        Number of samples.
    }
    \item{ngene}{
        Number of genes.
    }
    \item{nsnp}{
        Number of SNPs.
    }
    \item{ncvrt}{
        Number of covariates.
    }
    \item{minMAF}{
        Minimum minor allele frequency of generated SNPs.
    }
    \item{saveDir}{
        Directory for the output.
    }
    \item{returnData}{
        Set to \code{TRUE} to return generated data in an R list.
    }
    \item{savefmat}{
        Save generated data in
        \code{\link[filematrix:filematrix-package]{filematrix}} format.
        This format is used by \code{\link{multithreadACME}}.
    }
    \item{savetxt}{
        Save generated data in text format. 
        This format is used by Matrix eQTL 
        \code{\link[MatrixEQTL:MatrixEQTL-package]{MatrixEQTL}}.
    }
    \item{verbose}{
        Set to \code{TRUE} to indicate progress.
    }
}
\value{
    The function generates the following text files and/or filematrices:
    \item{cvrt}{Covariates}
    \item{gene}{Gene expression}
    \item{snps}{SNPs (genotype)}
    \item{gene_loc}{Gene locations}
    \item{snps_loc}{SNP locations}
    \item{etas}{SNP effect on the genes}
}
\references{
	The manuscript is available at: 
    \url{http://onlinelibrary.wiley.com/doi/10.1111/biom.12810/full}
}
\author{
	Andrey A Shabalin \email{andrey.shabalin@gmail.com}, John Palowitch
}
\seealso{
    For package overview and code examples see the package vignette via:\cr
    \code{browseVignettes("ACMEeqtl")}
	
	For fast testing of all local gene-SNP pairs (local eQTL) 
	see \code{\link{multithreadACME}}.
}
\examples{
z = create_artificial_data(
		nsample = 10,
		ngene = 51,
		nsnp = 501,
		ncvrt = 1,
		minMAF = 0.2,
		returnData = TRUE,
		savefmat = FALSE,
		savetxt = FALSE,
		verbose = TRUE)
    
names(z)
}
