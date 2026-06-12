# List the modules corresponding to a given object of interest

List the modules corresponding to a given object of interest

## Usage

``` r
identify_module(
  object_of_interest,
  annotation_table,
  col_module_id,
  annotation_level = "species"
)
```

## Arguments

- object_of_interest:

  String. The name of the bacteria or species of interest or a key word
  in the functional module definition

- annotation_table:

  Dataframe. The dataframe gathering the taxonomic or functional module
  correspondence information

- col_module_id:

  String. The name of the column with the module names in the annotation
  table

- annotation_level:

  String. The name of the column with the level to be studied. Examples:
  species, genus, level_1. Default value is set to the species level

## Value

List of string. The module names of the corresponding object of interest

## Examples

``` r
df_taxo <- data.frame(
  msp_name = c("msp_1", "msp_2", "msp_3", "msp_4"),
  genus = c("One", "One", "One", "Two"),
  species = c("One bacteria", "One bacterium L", "One bacterium G", "Two bact")
)
identify_module(
  object_of_interest = "bacterium",
  annotation_table = df_taxo,
  col_module_id = "msp_name",
  annotation_level = "species"
)
#> [1] "msp_2" "msp_3"
identify_module(
  object_of_interest = "One",
  annotation_table = df_taxo,
  col_module_id = "msp_name",
  annotation_level = "species"
)
#> [1] "msp_1" "msp_2" "msp_3"
```
