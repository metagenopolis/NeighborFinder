# Simulate data from some empirical count dataset with a "cluster-like" structure

Simulate data from some empirical count dataset with a "cluster-like"
structure

## Usage

``` r
new_synth_data(
  real_data,
  graph_type = "cluster",
  must_connect = TRUE,
  graph = NULL,
  n = 300,
  seed = 10010,
  r = 50,
  dens = 4,
  k = 3,
  verbatim = TRUE,
  signed = FALSE
)
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

  Matrix. Empirical count table

- graph_type:

  String. Structure type for the conditional dependency structure. Here
  only "cluster" was kept, see EMtree package for more options

- must_connect:

  Boolean. TRUE to force the output graph to be connected

- graph:

  Boolean. Optional graph to be used, must have rownames and colnames
  and reference all features from real_data

- n:

  Numeric. Number of samples to simulate

- seed:

  Numeric. Seed number for data generation (rmvnorm)

- r:

  Numeric. For cluster structure, controls the within/between ratio
  connection probability

- dens:

  Numeric. Graph density (for cluster graphs) or edges probability (for
  erdös-renyi graphs)

- k:

  Numeric. For cluster structure, number of groups

- verbatim:

  Boolean. Controls verbosity

- signed:

  Boolean. TRUE for simulating both positive and negative partial
  correlations. Default is to FALSE, which implies only negative partial
  correlations

## Value

List. Containing the simulated discrete counts, the corresponding true
partial correlation matrix from the latent Gaussian layer of the model
and the original graph structure that was used

## Examples

``` r
tiny_data <- data.frame(
  species = c("One bacteria", "One bacterium L", "One bacterium G", "Two bact", "Three bact A", "Three bact B"),
  msp_name = c("msp_1", "msp_2", "msp_3", "msp_4", "msp_5", "msp_6"),
  SAMPLE1 = c(0, 1.328425e-06, 0, 1.527688e-07, 0, 0),
  SAMPLE2 = c(1.251707e-07, 0, 3.985320e-07, 0, 1.33607e-04, 0.8675e-03),
  SAMPLE3 = c(0, 0, 4.926046e-09, 5.626392e-06, 0, 0.662e-03),
  SAMPLE4 = c(0, 0, 2.98320e-05, 0, 1.275e-04, 0),
  SAMPLE5 = c(0.0976, 0.9862, 2.98320e-03, 0, 3.9754e-03, 0),
  SAMPLE6 = c(0.26417e-06, 0, 1.0077e-05, 3.983320e-08, 0, 0)
)

count_table <- get_count_table(abund.table = tiny_data %>% dplyr::select(-species), sample.id = colnames(tiny_data), prev.min = 0.1)
#> Preprocessing step output for species prevalence>10% : 
#>    -from 6 to 6 species
#>    -from 50% to 50% zero values.
tiny_graph <- graph_step(tiny_data, col_module_id = "msp_name", annotation_level = "species", seed = 20242025) %>% suppressWarnings()
sim_data <- new_synth_data(count_table$data, n = 50, graph = as.matrix(tiny_graph %>% dplyr::select(-species)), verbatim = FALSE, seed = 20242025) %>% suppressWarnings()
```
