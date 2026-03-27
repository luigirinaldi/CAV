theory hydra_opt_1247
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_1247_th:
"(bw q (not (bw q (not (bw q newvar4)))))=(bw q newvar4)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar4 :: int
proof -
  show ?thesis sorry
qed

end
