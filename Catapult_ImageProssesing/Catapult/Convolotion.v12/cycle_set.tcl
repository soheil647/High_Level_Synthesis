
# Loop constraints
directive set /Convolotion/core/main CSTEPS_FROM {{. == 1}}
directive set /Convolotion/core/main/for CSTEPS_FROM {{. == 1} {.. == 1}}
directive set /Convolotion/core/main/for/for:for CSTEPS_FROM {{. == 6} {.. == 0}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for CSTEPS_FROM {{. == 1} {.. == 0}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for CSTEPS_FROM {{. == 2} {.. == 0}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for CSTEPS_FROM {{. == 1} {.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for CSTEPS_FROM {{. == 2} {.. == 0}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for CSTEPS_FROM {{. == 1} {.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for CSTEPS_FROM {{. == 2} {.. == 0}}

# IO operation constraints

# Real operation constraints
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for:for:for:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for-1:for:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for:for:for:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for-1:for:for:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for:for:for:else:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for-1:for:for:else:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for-1:for:for:else:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for:for:for:else:read_mem(in:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for:for:for:else:mux CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for:for:for:else:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for-1:for:for:else:mul#1 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for-1:for:for:else:acc#4 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for-1:for:for:else:or CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for:for:for:mux#2 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for:for:for:mux#3 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for:for:for:mux#4 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for-1:for:for:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:for/for:for-1:for:for:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:for/for:for-1:for:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:write_mem(out:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-1:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for:for:for:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for-2:for:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for:for:for:acc#9 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for-2:for:for:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for:for:for:else:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for-2:for:for:else:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for-2:for:for:else:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for:for:for:else:read_mem(in:rsc.d)#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for:for:for:else:mux#2 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for:for:for:else:mux#3 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for-2:for:for:else:mul#1 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for-2:for:for:else:acc#4 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for-2:for:for:else:or CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for:for:for:mux#8 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for:for:for:mux#9 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for:for:for:mux#10 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for-2:for:for:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:for/for:for-2:for:for:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-2:for/for:for-2:for:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:write_mem(out:rsc.d)#1 CSTEPS_FROM {{.. == 3}}
directive set /Convolotion/core/main/for/for:for/for:for-2:acc#3 CSTEPS_FROM {{.. == 3}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for:for:for:acc#10 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for-3:for:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for:for:for:acc#11 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for-3:for:for:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for-3:for:for:oelse#2:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for:for:for:else:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for-3:for:for:else:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for-3:for:for:else:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for:for:for:else:read_mem(in:rsc.d)#2 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for:for:for:else:mux#4 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for:for:for:else:mux#5 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for-3:for:for:else:mul#1 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for-3:for:for:else:acc#4 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for-3:for:for:else:or CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for:for:for:mux#14 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for:for:for:mux#15 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for:for:for:mux#16 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for-3:for:for:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:for/for:for-3:for:for:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for-3:for/for:for-3:for:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:write_mem(out:rsc.d)#2 CSTEPS_FROM {{.. == 5}}
directive set /Convolotion/core/main/for/for:for/for:for-3:acc#3 CSTEPS_FROM {{.. == 5}}
directive set /Convolotion/core/main/for/for:acc#1 CSTEPS_FROM {{.. == 1}}
