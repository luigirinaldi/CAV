theory hydra_opt_2751
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2751_th:
"(bw r (bw s ((bw s (bw r v4)) - (bw s (bw r v1)))))=(bw r ((bw r v4) - (bw r v1)))" (is "?lhs = ?rhs")
if "(r < s)" and "(s > r)" and "(s > 0)" and "(r > 0)"
for r s :: nat and v1 v4 :: int
proof -
  show ?thesis sorry
qed

end
