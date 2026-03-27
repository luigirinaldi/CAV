theory hydra_opt_2712
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2712_th:
"(bw s (signed q (bw q ((bw q 0) + (bw q newvar0)))))=(bw s (signed q (bw q newvar0)))" (is "?lhs = ?rhs")
if "(q < s)" and "(q > 0)" and "(s > 0)"
for q s :: nat and newvar0 :: int
proof -
  show ?thesis sorry
qed

end
