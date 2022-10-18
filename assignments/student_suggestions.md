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
