# Correspondence between the module ID (msp or functional module) and its name (bacteria or function)

Correspondence between the module ID (msp or functional module) and its
name (bacteria or function)

## Usage

``` r
module_to_node(
  module,
  annotation_table,
  col_module_id = "msp_name",
  annotation_level
)
```

## Arguments

- module:

  String. The name of the biological object (msp or functional module),
  can be a single one or a list

- annotation_table:

  Dataframe. The dataframe gathering the taxonomic or functional module
  correspondence information

- col_module_id:

  String. The name of the column with the module names in the annotation
  table

- annotation_level:

  String. The name of the column with the level to be studied. Examples:
  species, genus, level_1

## Value

Dictionary. The name of the module, can be a single one or a list

## Examples

``` r
df_taxo <- data.frame(
  msp_name = c("msp_1", "msp_2", "msp_3", "msp_4"),
  genus = c("A", "B", "C", "D"),
  species = c("A a", "B a", "C c", "D b")
)
# Correspondence for one specific msp
module_to_node(
  "msp_1",
  annotation_table = df_taxo,
  col_module_id = "msp_name",
  annotation_level = "species"
)
#> [1] "A a"
# or for several msps
module_to_node(
  c("msp_1", "msp_3", "msp_4"),
  annotation_table = df_taxo,
  col_module_id = "msp_name",
  annotation_level = "species"
)
#> [1] "A a" "C c" "D b"
# and if one msp is repeated
module_to_node(
  c("msp_1", "msp_1", "msp_2"),
  annotation_table = df_taxo,
  col_module_id = "msp_name",
  annotation_level = "genus"
)
#> [1] "A" "A" "B"
```
