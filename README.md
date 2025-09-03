
<!-- README.md is generated from README.Rmd. Please edit that file -->

# NeighborFinder

<!-- badges: start -->

<!-- badges: end -->

NeighborFinder is an R package enabling the identification of the local
neighborhood of a species of interest, based on microbiome data.

Using cross-validated multiple linear regression with ℓ1 penalty and
microbiome-specific filters, our approach infers interpretable
species-centered interactions, with F1 score ≥ 0.95 on simulated
datasets ranging from 250 to 1000 samples.

From several abundance tables of metagenomic data, NeighborFinder
suggests a shortlist of companion species based on the integration of
results. A visualization via a network is proposed.

NeighborFinder is tailored to microbiome data. It was specifically
developed for shotgun metagenomic data and includes a default
normalization step for such datasets, but can accommodate metabarcoding
data (and other count-based inputs) by skipping it.

<p align="center">

<img src="./vignettes/LOGO_NeighborFinder_black.jpg" width="700" height="200" alt="logo">
</p>

## Installation

You can install NeighborFinder from the [forgemia
gitlab](metagenopolis/NeighborFinder) with:

``` r
instal.packages("remotes")
library(remotes)
remotes::install_gitlab(
  repo = "metagenopolis/NeighborFinder",
  host = "forge.inrae.fr",
  auth_token = "nFp2JVVouQzas-MyBwS2"
)
```

Note that this R package depends on versions \>= 3.5.0 and was recently
tested on R 4.4.1.

## Input

The main input of `apply_neighborfinder()` is an abundance table with
species as rows and samples as columns. For more details, see section
“Input dataframe format” in the [Tech
report](./vignettes/NeighborFinder_technical_report.Rmd). For an
illustrated example, please refer to the
[vignette](./vignettes/NeighborFinder_vignette.Rmd).

## Output

The output is an edge table in tibble format, i.e. a table with 3
columns: node1, node2, and coef. This table gathers the potential
neighbors of a species of interest found with `apply_neighborfinder()`.
With this output, a network can be created with `visualize_network()`.

## Tutorial

The [vignette](./vignettes/NeighborFinder_vignette.Rmd) provides an
overview of the various use cases of NeighborFinder through examples
based on real data extracted from this
[repository](https://doi.org/10.57745/7IVO3E).
