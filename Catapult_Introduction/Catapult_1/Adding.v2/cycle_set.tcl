
# Loop constraints
directive set /Adding/core/main CSTEPS_FROM {{. == 3}}

# IO operation constraints
directive set /Adding/core/main/A:io_read(A:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/B:io_read(B:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/C:io_read(C:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/D:io_read(D:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/E:io_read(E:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/io_write(Temp:rsc.d) CSTEPS_FROM {{.. == 2}}

# Real operation constraints
directive set /Adding/core/main/in:mux CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:mux#3 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:mux#4 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:and CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:and#1 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out:mul#1 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out:mul CSTEPS_FROM {{.. == 2}}
directive set /Adding/core/main/out:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:and#3 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:mux#11 CSTEPS_FROM {{.. == 2}}
directive set /Adding/core/main/in:mux#14 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:mux#12 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/in:mux#13 CSTEPS_FROM {{.. == 1}}
