# Display the intersection table summarizing the results from 2 or more datasets

Display the intersection table summarizing the results from 2 or more
datasets

## Usage

``` r
intersections_table(
  res_list,
  threshold,
  annotation_table,
  col_module_id,
  annotation_level,
  object_of_interest
)
```

## Arguments

- res_list:

  List of dataframes. The results from apply_NeighborFinder() on several
  datasets

- threshold:

  Numeric. Integer corresponding to the minimum number of datasets in
  which you want neighbors to have been found

- annotation_table:

  Dataframe. The dataframe gathering the taxonomic or functional module
  correspondence information

- col_module_id:

  String. The name of the column with the module names in
  annotation_table

- annotation_level:

  String. The name of the column with the level to be studied. Examples:
  species, genus, level_1

- object_of_interest:

  String. The name of the bacteria or species of interest or a key word
  in the functional module definition

## Value

Dataframe. Table gathering the intersection of NeighborFinder results
from several datasets. The column 'datasets' indicates the datasets in
which the same neighbor has been found, the column 'intersections'
indicates the number of datasets in which the same neighbor has been
found

## Examples

``` r
data(taxo)
data(result_example)
intersections_table(res_list = list(result_example$res_CRC_JPN, result_example$res_CRC_CHN, result_example$res_CRC_EUR), threshold = 2, taxo, col_module_id = "msp_id", annotation_level = "species", "Escherichia coli")
#>      node1          module1    node2                 module2   datasets
#> 1 msp_0005 Escherichia coli msp_0103 Clostridium_AQ innocuum n_ 1, n_ 2
#> 2 msp_0005 Escherichia coli msp_0208        Blautia_A faecis n_ 1, n_ 3
#>   intersections   mean_coef
#> 1             2  0.07445512
#> 2             2 -0.12691516
```
