# Give results from cvglm_to_coeffs_by_object() for each filtering top percentage

Give results from cvglm_to_coeffs_by_object() for each filtering top
percentage

## Usage

``` r
res_by_filtering(res_glm, filtering_list)
```

## Arguments

- res_glm:

  Dataframe. The one resulting from cvglm_to_coeffs_by_object()

- filtering_list:

  List of numeric. The filtering top percentages to be studied. Required
  format is: 10 for the top 10%

## Value

List of dataframes. Each element of the list corresponds to a dataframe
of detected edges by filtering top percentage

## Examples

``` r
data(data)
# Simple example
normed_JPN <- norm_data(data$CRC_JPN, col_module_id = "msp_id", annotation_level = "species", prev_list = c(0.20, 0.25, 0.30))
neighbors_JPN <- cvglm_to_coeffs_by_object(list_dfs = normed_JPN, test_module = c("msp_0030", "msp_0345"), seed = 20242025)
filtered_neighbors_JPN <- res_by_filtering(neighbors_JPN, filtering_list = c(10, 15, 20))
```
