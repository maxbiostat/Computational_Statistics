```r
Students <- c("Aldo", "Caio", "Danilo", "Eduardo",
              "FelipeA", "FelipeC", "Fredson", "Gabriela",
              "Isaque", "Tomás", "Wellington")

Methods <- c("RS", "IS", "GS", "MH")

set.seed(666)
each.method <- sample(1:length(Methods), length(Students), replace = TRUE)

res <- tibble::tibble(
  student = Students,
  method = Methods[each.method]
)

```
```r
> res
# A tibble: 11 × 2
   student    method
   <chr>      <chr> 
 1 Aldo       IS    
 2 Caio       IS    
 3 Danilo     MH    
 4 Eduardo    GS    
 5 FelipeA    GS    
 6 FelipeC    MH    
 7 Fredson    IS    
 8 Gabriela   RS    
 9 Isaque     RS    
10 Tomás      MH    
11 Wellington RS  
```

For the final assigment, we get

```r
Students <- c("Aldo", "Caio", "Danilo", "Eduardo",
              "FelipeA", "FelipeC", "Fredson", "Gabriela",
              "Isaque", "Tomás", "Wellington")

Papers <- c("Paper 1", "Paper 2", "Paper 3", "Paper 4")

set.seed(666^2)
each.paper <- sample(1:length(Papers), length(Students), replace = TRUE)

res <- tibble::tibble(
  student = Students,
  paper = Papers[each.paper]
)

```
and 
```r
   student    paper  
   <chr>      <chr>  
 1 Aldo       Paper 3
 2 Caio       Paper 3
 3 Danilo     Paper 2
 4 Eduardo    Paper 3
 5 FelipeA    Paper 3
 6 FelipeC    Paper 2
 7 Fredson    Paper 1
 8 Gabriela   Paper 1
 9 Isaque     Paper 3
10 Tomás      Paper 2
11 Wellington Paper 4
```
