# Apply NeighborFinder simplest version on raw data

Apply NeighborFinder simplest version on raw data

## Usage

``` r
apply_NF_simple(
  data_with_annotation,
  object_of_interest,
  col_module_id,
  annotation_level,
  prev_level = 0.3,
  filtering_top = 20,
  seed = NULL,
  ...
)
```

## Arguments

- data_with_annotation:

  Dataframe. The abundance table merged with the module names. Required
  format: modules are the rows and samples are the columns. The first
  column must be the modules name (e.g. species), the second is the
  module ID (e.g. msp), and each subsequent column is a sample

- object_of_interest:

  String. The name of the bacteria or species of interest or a key word
  in the functional module definition

- col_module_id:

  String. The name of the column with the module names in
  annotation_table

- annotation_level:

  String. The name of the column with the level to be studied. Examples:
  species, genus, level_1

- prev_level:

  Numeric. The prevalence to be studied. Required format is decimal:
  0.20 for 20% of prevalence

- filtering_top:

  Numeric. The filtering top percentage to be studied. Required format
  is: 10 for top 10%

- seed:

  Numeric. The seed number, ensuring reproducibility

- ...:

  Additional arguments passed on to
  [`cvglm_to_coeffs_by_object()`](cvglm_to_coeffs_by_object.md)

## Value

Dataframe. Returns results after using NeighborFinder(): for each module
ID from 'object_of_interest', the names of their neighbors and the
corresponding coefficients calculated by cv.glmnet()

## Examples

``` r
data(data)
res_CRC_JPN <- apply_NF_simple(data$CRC_JPN[, 1:100], object_of_interest = "Escherichia coli", col_module_id = "msp_id", annotation_level = "species", seed = 20242025)
```
