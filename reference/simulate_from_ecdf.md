# Simulate data Generates synthetic count data based on empirical cumulative distribution (ecdf) of real count data

Simulate data Generates synthetic count data based on empirical
cumulative distribution (ecdf) of real count data

## Usage

``` r
simulate_from_ecdf(real_data, Sigma, n, seed = 10010, verbatim = FALSE)
```

## Source

This function is adapted from the same name function in OneNet package
(version 0.3.1), which is licensed under the MIT License. Original
copyright (c) 2021-2024 INRAE.

        The MIT License text for the original package is as follows:
        ---
        Permission is hereby granted, free of charge, to any person obtaining a copy
        of this software and associated documentation files (the "Software"), to deal
        in the Software without restriction, including without limitation the rights
        to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
        copies of the Software, and to permit persons to whom the Software is
        furnished to do so, subject to the following conditions:

        The above copyright notice and this permission notice shall be included in all
        copies or substantial portions of the Software.

        THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
        IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
        FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
        AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
        LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
        OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
        SOFTWARE.
        ---

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
