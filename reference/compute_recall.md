# Compute recall rate

Compute recall rate

## Usage

``` r
compute_recall(true, detected)
```

## Arguments

- true:

  List. The one of true neighbors

- detected:

  List. The one of detected neighbors

## Value

Numeric. Returns the recall rate

## Examples

``` r
compute_recall(c("a"), c("a", "b", "c"))
#> [1] 1
compute_recall(c("a", "b"), c("a", "c"))
#> [1] 0.5
```
