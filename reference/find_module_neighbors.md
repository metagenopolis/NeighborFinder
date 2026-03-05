# Apply cv.glmnet() for a given mmodule ID

Apply cv.glmnet() for a given mmodule ID

## Usage

``` r
find_module_neighbors(
  df,
  module,
  seed = NULL,
  covar = NULL,
  meta_df = NULL,
  sample_col = NULL
)
```

## Arguments

- df:

  Dataframe. A normalized dataframe

- module:

  String. The module ID name

- seed:

  Numeric. The seed number, ensuring reproducibility

- covar:

  String or formula. Formula or the name of the column of the covariate
  in the metadata table. Note that "study_accession" is equivalent to
  ~study_accession

- meta_df:

  Dataframe. The dataframe giving metadata information

- sample_col:

  String. The name of the column in metadata indicating the sample
  names, it should be consistent with the colnames of 'df'

## Value

Dataframe. Returns the module ID, its detected neighbor and the
corresponding coefficient

## Examples

``` r
data(data)
data(metadata)
# Simple example
x <- norm_data(data$CRC_JPN, 0.30)[[1]]
neighbors_JPN <- find_module_neighbors(df = x, module = "msp_0030", seed = 20242025)
# Example with covariate
x <- norm_data(data$CRC_CHN, 0.30)[[1]]
neighbors_CHN <- find_module_neighbors(df = x, module = "msp_0030", seed = 20242025, covar = ~study_accession, meta_df = metadata$CRC_CHN, sample_col = "secondary_sample_accession")
```
