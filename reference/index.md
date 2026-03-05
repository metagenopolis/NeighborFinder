# Package index

## All functions

- [`apply_NF_simple()`](apply_NF_simple.md) : Apply NeighborFinder
  simplest version on raw data
- [`apply_NeighborFinder()`](apply_NeighborFinder.md) : Apply
  NeighborFinder on raw data
- [`choose_params_values()`](choose_params_values.md) : Render a table
  to give an indication of the values to choose for the prevalence level
  and the top filtering percentage
- [`compute_precision()`](compute_precision.md) : Compute precision rate
- [`compute_recall()`](compute_recall.md) : Compute recall rate
- [`cvglm_to_coeffs_by_object()`](cvglm_to_coeffs_by_object.md) : Apply
  cv.glmnet() for a list of module IDs and for each prevalence level
- [`data`](data.md) : data
- [`final_step()`](final_step.md) : Gather lists of neighbors of true
  ones from the graph and detected ones from cv.glmnet()
- [`find_all_module_neighbors()`](find_all_module_neighbors.md) : Apply
  cv.glmnet() for a list of module IDs
- [`find_module_neighbors()`](find_module_neighbors.md) : Apply
  cv.glmnet() for a given mmodule ID
- [`get_count_table()`](get_count_table.md) : Conversion to count table
  function with prevalence filter (Extracted from OneNet package)
- [`graph_step()`](graph_step.md) : Generate a graph with a
  "cluster-like" structure, only needed for simulation purposes
- [`graphs`](graphs.md) : graphs
- [`identify_module()`](identify_module.md) : List the modules
  corresponding to a given object of interest
- [`intersections_network()`](intersections_network.md) : Display the
  intersection network from 2 or more datasets
- [`intersections_table()`](intersections_table.md) : Display the
  intersection table summarizing the results from 2 or more datasets
- [`mclr()`](mclr.md) : Modified central log ratio (mclr) transformation
  extracted from the SPRING package
- [`metadata`](metadata.md) : metadata
- [`module_to_node()`](module_to_node.md) : Correspondence between the
  module ID (msp or functional module) and its name (bacteria or
  function)
- [`new_synth_data()`](new_synth_data.md) : Simulate data from some
  empirical count dataset with a "cluster-like" structure
- [`norm_data()`](norm_data.md) : Normalize data and filters it by
  prevalence level
- [`prev_for_selected_nodes()`](prev_for_selected_nodes.md) : Extract
  edges in graph involving any module in object_of_interest set
- [`res_by_filtering()`](res_by_filtering.md) : Give results from
  cvglm_to_coeffs_by_object() for each filtering top percentage
- [`simulate_by_prevalence()`](simulate_by_prevalence.md) : List the
  simulated count tables by level of prevalence
- [`simulate_from_ecdf()`](simulate_from_ecdf.md) : Simulate data
  (extracted from OneNet package) Generates synthetic count data based
  on empirical cumulative distribution (ecdf) of real count data
- [`taxo`](taxo.md) : taxo
- [`test_filter()`](test_filter.md) : Render a table gathering precision
  and recall rates before and after filtering on coefficient values
- [`truth_by_prevalence()`](truth_by_prevalence.md) : Give true
  neighbors by level of prevalence
- [`visualize_network()`](visualize_network.md) : Display network after
  applying NeighborFinder
