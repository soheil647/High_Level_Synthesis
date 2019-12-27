
# Loop constraints
directive set /Convolotion/core/main CSTEPS_FROM {{. == 1}}
directive set /Convolotion/core/main/for CSTEPS_FROM {{. == 1} {.. == 1}}
directive set /Convolotion/core/main/for/for:for CSTEPS_FROM {{. == 1} {.. == 0}}
directive set /Convolotion/core/main/for/for:for/for:for:for CSTEPS_FROM {{. == 4} {.. == 0}}

# IO operation constraints

# Real operation constraints
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:acc#7 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-1:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-1:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-1:else:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:else:read_mem(in:rsc.d) CSTEPS_FROM {{.. == 3}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:else:mux CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-1:else:mul#1 CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-1:else:acc#4 CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-1:else:or CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:mux CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:mux#1 CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:mux#2 CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-2:else:acc#5 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:else:read_mem(in:rsc.d)#1 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-2:else:mul#1 CSTEPS_FROM {{.. == 3}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-2:else:acc#4 CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-2:else:or CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:mux#8 CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-3:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-3:else:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:else:read_mem(in:rsc.d)#2 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:else:mux#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-3:else:mul#1 CSTEPS_FROM {{.. == 2}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-3:else:acc#4 CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for-3:else:or CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:mux#5 CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:mux#13 CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:mux1h CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:mux#7 CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:for:mux#15 CSTEPS_FROM {{.. == 4}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:acc#1 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:for/for:for:for:acc CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:for/for:for:write_mem(out:rsc.d) CSTEPS_FROM {{.. == 0}}
directive set /Convolotion/core/main/for/for:for/for:for:acc#3 CSTEPS_FROM {{.. == 1}}
directive set /Convolotion/core/main/for/for:acc#1 CSTEPS_FROM {{.. == 1}}
