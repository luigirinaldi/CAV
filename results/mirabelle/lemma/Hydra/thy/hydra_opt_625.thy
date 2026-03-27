theory hydra_opt_625
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_625_th:
"(bw q (and (bw q (-1)) (bw q newvar0)))=(bw q newvar0)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar0 :: int
proof -
  show ?thesis sorry
qed

end
