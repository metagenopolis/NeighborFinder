# Generate a graph with a "cluster-like" structure, only needed for simulation purposes

Generate a graph with a "cluster-like" structure, only needed for
simulation purposes

## Usage

``` r
graph_step(
  data_with_annotation,
  col_module_id,
  annotation_level,
  seed = 10010,
  data_type = "shotgun",
  ...
)
```

## Arguments

- data_with_annotation:

  Dataframe. The abundance table merged with the module names. Required
  format: modules are the rows and samples are the columns. The first
  column must be the modules name (e.g. species), the second is the
  module ID (e.g. msp), and each subsequent column is a sample

- col_module_id:

  String. The name of the column with the module names in the annotation
  table

- annotation_level:

  String. The name of the column with the level to be studied. Examples:
  species, genus, level_1

- seed:

  Numeric. Seed number for data generation (new_synth_data)

- data_type:

  String. Enables the treatment of 16S data with "16S", default value is
  "shotgun"

- ...:

  Additional arguments passed on to the `generator_graph()` routine of
  [`new_synth_data()`](new_synth_data.md)

## Value

Dataframe. The dataframe is composed of 0 and 1 corresponding to the
existence of edges on the graph.

## Examples

``` r
tiny_data <- data.frame(
  species = c(
    "One bacteria",
    "One bacterium L",
    "One bacterium G",
    "Two bact",
    "Three bact A",
    "Three bact B"
  ),
  msp_name = c("msp_1", "msp_2", "msp_3", "msp_4", "msp_5", "msp_6"),
  SAMPLE1 = c(0, 1.328425e-06, 0, 1.527688e-07, 0, 0),
  SAMPLE2 = c(1.251707e-07, 0, 3.985320e-07, 0, 1.33607e-04, 0.8675e-03),
  SAMPLE3 = c(0, 0, 4.926046e-09, 5.626392e-06, 0, 0.662e-03),
  SAMPLE4 = c(0, 0, 2.98320e-05, 0, 1.275e-04, 0),
  SAMPLE5 = c(0.0976, 0.9862, 2.98320e-03, 0, 3.9754e-03, 0),
  SAMPLE6 = c(0.26417e-06, 0, 1.0077e-05, 3.983320e-08, 0, 0)
)

tiny_graph <- graph_step(
  tiny_data,
  col_module_id = "msp_name",
  annotation_level = "species",
  seed = 20242025
) %>%
  suppressWarnings()
```
