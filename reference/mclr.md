# Modified central log ratio (mclr) transformation extracted from the SPRING package

Modified central log ratio (mclr) transformation extracted from the
SPRING package

## Usage

``` r
mclr(dat, base = exp(1), tol = 1e-16, eps = NULL, atleast = 1)
```

## Arguments

- dat:

  raw count data or compositional data (n by p) does not matter.

- base:

  exp(1) for natural log

- tol:

  tolerance for checking zeros

- eps:

  epsilon in eq (2) of the paper "Yoon, Gaynanova, Müller (2019),
  Frontiers in Genetics". positive shifts to all non-zero compositions.
  Refer to the paper for more details. eps = absolute value of minimum
  of log ratio counts plus c.

- atleast:

  default value is 1. Constant c which ensures all nonzero values to be
  strictly positive. default is 1.

## Value

`mclr` returns a data matrix of the same dimension with input data
matrix.

## Details

This function implements the mclr normalization introduced in Yoon G,
Gaynanova I and Müller CL (2019) Microbial Networks in SPRING -
Semi-parametric Rank-Based Correlation and Partial Correlation
Estimation for Quantitative Microbiome Data. Front. Genet. 10:516.
[doi:10.3389/fgene.2019.00516](https://doi.org/10.3389/fgene.2019.00516)
