
# Loop constraints
directive set /Adding/core/main CSTEPS_FROM {{. == 2}}
directive set /Adding/core/main/out CSTEPS_FROM {{. == 2} {.. == 1}}

# IO operation constraints
directive set /Adding/core/main/A:io_read(A:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/B:io_read(B:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/C:io_read(C:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/D:io_read(D:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/E:io_read(E:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/io_write(Temp:rsc.d) CSTEPS_FROM {{.. == 1}}

# Real operation constraints
directive set /Adding/core/main/out/in:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out/in:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out/in-5:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out/in:acc#11 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out/in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out/out:mul#1 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out/out:mul CSTEPS_FROM {{.. == 2}}
directive set /Adding/core/main/out/out:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out/out:acc CSTEPS_FROM {{.. == 1}}
