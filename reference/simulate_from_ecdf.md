# Simulate data (extracted from OneNet package) Generates synthetic count data based on empirical cumulative distribution (ecdf) of real count data

Simulate data (extracted from OneNet package) Generates synthetic count
data based on empirical cumulative distribution (ecdf) of real count
data

## Usage

``` r
simulate_from_ecdf(real_data, Sigma, n, seed = 10010, verbatim = FALSE)
```

## Arguments

- real_data:

  Matrix. Contains real count data of size n by p

- Sigma:

  Matrix. Covariance structure of size p by p

- n:

  Numeric. Number of samples

- seed:

  Numeric. Seed number for data generation

- verbatim:

  Boolean. If TRUE: iteration and index calculation for each step are
  printed out

## Value

Matrix. The vector from the upper triangular part of A.mat
