
# Loop constraints
directive set /Adding/core/main CSTEPS_FROM {{. == 13}}
directive set /Adding/core/main/out-1:in CSTEPS_FROM {{. == 1} {.. == 1}}
directive set /Adding/core/main/out-2:in CSTEPS_FROM {{. == 1} {.. == 2}}
directive set /Adding/core/main/out-3:in CSTEPS_FROM {{. == 1} {.. == 3}}
directive set /Adding/core/main/out-4:in CSTEPS_FROM {{. == 1} {.. == 4}}
directive set /Adding/core/main/out-5:in CSTEPS_FROM {{. == 1} {.. == 5}}
directive set /Adding/core/main/out-6:in CSTEPS_FROM {{. == 1} {.. == 6}}
directive set /Adding/core/main/out-7:in CSTEPS_FROM {{. == 1} {.. == 7}}
directive set /Adding/core/main/out-8:in CSTEPS_FROM {{. == 1} {.. == 8}}
directive set /Adding/core/main/out-9:in CSTEPS_FROM {{. == 1} {.. == 9}}
directive set /Adding/core/main/out-10:in CSTEPS_FROM {{. == 1} {.. == 10}}
directive set /Adding/core/main/out-11:in CSTEPS_FROM {{. == 1} {.. == 11}}

# IO operation constraints
directive set /Adding/core/main/A:io_read(A:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/B:io_read(B:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/C:io_read(C:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/D:io_read(D:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/E:io_read(E:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out:io_write(Temp:rsc.d) CSTEPS_FROM {{.. == 12}}

# Real operation constraints
directive set /Adding/core/main/out-1:in/in:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-1:in/in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-1:in/out-1:in:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-1:in/out-1:in:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-1:in/out-1:in:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-1:in/out-1:in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-1:mul#1 CSTEPS_FROM {{.. == 2}}
directive set /Adding/core/main/out-1:mul CSTEPS_FROM {{.. == 2}}
directive set /Adding/core/main/out-2:in/in:acc#11 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-2:in/in:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-2:in/out-2:in:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-2:in/out-2:in:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-2:in/out-2:in:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-2:in/out-2:in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-2:mul CSTEPS_FROM {{.. == 3}}
directive set /Adding/core/main/out-3:in/in:acc#13 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-3:in/in:acc#12 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-3:in/out-3:in:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-3:in/out-3:in:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-3:in/out-3:in:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-3:in/out-3:in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-3:mul CSTEPS_FROM {{.. == 4}}
directive set /Adding/core/main/out-4:in/in:acc#15 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-4:in/in:acc#14 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-4:in/out-4:in:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-4:in/out-4:in:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-4:in/out-4:in:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-4:in/out-4:in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-4:mul CSTEPS_FROM {{.. == 5}}
directive set /Adding/core/main/out-5:in/in:acc#17 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-5:in/in:acc#16 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-5:in/out-5:in:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-5:in/out-5:in:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-5:in/out-5:in:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-5:in/out-5:in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-5:mul CSTEPS_FROM {{.. == 6}}
directive set /Adding/core/main/out-6:in/in:acc#19 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-6:in/in:acc#18 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-6:in/out-6:in:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-6:in/out-6:in:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-6:in/out-6:in:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-6:in/out-6:in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-6:mul CSTEPS_FROM {{.. == 7}}
directive set /Adding/core/main/out-7:in/in:acc#21 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-7:in/in:acc#20 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-7:in/out-7:in:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-7:in/out-7:in:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-7:in/out-7:in:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-7:in/out-7:in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-7:mul CSTEPS_FROM {{.. == 8}}
directive set /Adding/core/main/out-8:in/in:acc#23 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-8:in/in:acc#22 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-8:in/out-8:in:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-8:in/out-8:in:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-8:in/out-8:in:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-8:in/out-8:in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-8:mul CSTEPS_FROM {{.. == 9}}
directive set /Adding/core/main/out-9:in/in:acc#25 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-9:in/in:acc#24 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-9:in/out-9:in:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-9:in/out-9:in:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-9:in/out-9:in:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-9:in/out-9:in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-9:mul CSTEPS_FROM {{.. == 10}}
directive set /Adding/core/main/out-10:in/in:acc#27 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-10:in/in:acc#26 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-10:in/out-10:in:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-10:in/out-10:in:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-10:in/out-10:in:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-10:in/out-10:in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-10:mul CSTEPS_FROM {{.. == 11}}
directive set /Adding/core/main/out-11:in/in:acc#29 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-11:in/in:acc#28 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-11:in/out-11:in:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-11:in/out-11:in:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-11:in/out-11:in:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-11:in/out-11:in:acc CSTEPS_FROM {{.. == 1}}
directive set /Adding/core/main/out-11:mul CSTEPS_FROM {{.. == 12}}
