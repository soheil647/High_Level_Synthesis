
# Loop constraints
directive set /Convolotion/core/main CSTEPS_FROM {{. == 1}}
directive set /Convolotion/core/main/for CSTEPS_FROM {{. == 1} {.. == 1}}
directive set /Convolotion/core/main/for/for:for CSTEPS_FROM {{. == 1} {.. == 0}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for CSTEPS_FROM {{. == 2} {.. == 0}}
directive set /Convolotion/core/main/for/for:for/for:for:for-2:for CSTEPS_FROM {{. == 2} {.. == 0}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for CSTEPS_FROM {{. == 2} {.. == 0}}

# IO operation constraints

# Real operation constraints
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for-1:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for:for:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for-1:for:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for-1:for:oelse#2:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for-1:for:else:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for:for:else:read_mem(in:rsc.d) CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for:for:else:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for:for:else:mux CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for-1:for:else:mul#1 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for-1:for:else:acc#4 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for-1:for:else:or CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for:for:mux CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for:for:mux#1 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for:for:mux#2 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for-1:for:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-1:for/for:for:for-1:for:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-2:for/for:for:for:for:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-2:for/for:for:for-2:for:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-2:for/for:for:for:for:else:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-2:for/for:for:for:for:else:read_mem(in:rsc.d)#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-2:for/for:for:for-2:for:else:mul#1 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-2:for/for:for:for-2:for:else:acc#4 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-2:for/for:for:for-2:for:else:or CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-2:for/for:for:for:for:mux#5 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-2:for/for:for:for:for:mux#6 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-2:for/for:for:for:for:mux#7 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-2:for/for:for:for-2:for:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-2:for/for:for:for-2:for:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for-3:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for:for:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for-3:for:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for-3:for:oelse#2:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for-3:for:else:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for:for:else:read_mem(in:rsc.d)#2 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for:for:else:acc#8 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for:for:else:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for-3:for:else:mul#1 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for-3:for:else:acc#4 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for-3:for:else:or CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for:for:mux#13 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for:for:mux#14 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for:for:mux#15 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for-3:for:acc#6 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for-3:for/for:for:for-3:for:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:write_mem(out:rsc.d) CSTEPS_FROM {{.. == 0}}
directive set /Convolotion/core/main/for/for:for/for:for:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:acc#1 CSTEPS_FROM {{.. == 1}}
