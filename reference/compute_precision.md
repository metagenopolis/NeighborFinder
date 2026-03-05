# Compute precision rate

Compute precision rate

## Usage

``` r
compute_precision(true, detected)
```

## Arguments

- true:

  List. The one of true neighbors

- detected:

  List. The one of detected neighbors

## Value

Numeric. Returns the precision rate

## Examples

``` r
compute_precision(c("a"), c("a", "b", "c"))
#> [1] 0.3333333
compute_precision(c("a", "b"), c("a", "c"))
#> [1] 0.5
```
