# testomp

Package to test the OMP error messages from **data.table**.  Provides reproducible tests 
using macOS anwyay for te **quanteda** issues at https://github.com/quanteda/quanteda/pull/1570 and https://github.com/quanteda/quanteda/pull/1581.

**data.table** issue is https://github.com/Rdatatable/data.table/issues/3300.

```r
devtools::install_github("kbenoit/testomp")
```

It only works if I restart the session, but here it is:

```r
Restarting R session...

> library("testomp")
> nowarning()
> yeswarning()
OMP: Warning #96: Cannot form a team with 12 threads, using 2 instead.
OMP: Hint Consider unsetting KMP_DEVICE_THREAD_LIMIT (KMP_ALL_THREADS), KMP_TEAMS_THREAD_LIMIT, and OMP_THREAD_LIMIT (if any are set).
> 
> sessionInfo()
R version 3.5.2 (2018-12-20)
Platform: x86_64-apple-darwin15.6.0 (64-bit)
Running under: macOS Mojave 10.14.3

Matrix products: default
BLAS: /System/Library/Frameworks/Accelerate.framework/Versions/A/Frameworks/vecLib.framework/Versions/A/libBLAS.dylib
LAPACK: /Library/Frameworks/R.framework/Versions/3.5/Resources/lib/libRlapack.dylib

locale:
[1] en_GB.UTF-8/en_GB.UTF-8/en_GB.UTF-8/C/en_GB.UTF-8/en_GB.UTF-8

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] testomp_0.1.0

loaded via a namespace (and not attached):
[1] compiler_3.5.2    tools_3.5.2       yaml_2.2.0        data.table_1.12.1
```
