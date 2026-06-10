# Apply cv.glmnet() for a list of module IDs

Apply cv.glmnet() for a list of module IDs

## Usage

``` r
find_all_module_neighbors(df, test_module, seed = NULL, ...)
```

## Arguments

- df:

  Dataframe. A normalized dataframe

- test_module:

  List of string. The module IDs

- seed:

  Numeric. The seed number, ensuring reproducibility

- ...:

  Additional arguments passed on to
  [`find_module_neighbors()`](find_module_neighbors.md)

## Value

Dataframe. Returns the module ID, its detected neighbor and the
corresponding coefficient

## Examples

``` r
data(data)
data(metadata)
# Simple example
x <- norm_data(data$CRC_JPN, 0.30, annotation_level = "species")[[1]]
neighbors_JPN <- find_all_module_neighbors(df = x, test_module = c("msp_0030", "msp_0345"), seed = 20242025)
# Example with covariate
# x <- norm_data(data$CRC_CHN, 0.30, annotation_level="species")[[1]]
# neighbors_CHN<-find_all_module_neighbors(df=x, test_module=c("msp_0030","msp_0345"), seed=20242025, covar= ~ study_accession, meta_df=metadata$CRC_CHN, sample_col="secondary_sample_accession")
```
