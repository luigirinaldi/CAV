theory hydra_opt_2731
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2731_th:
"(bw r (bw s (and (bw s (bw r v0)) (bw s (bw r v2)))))=(bw r (and (bw r v0) (bw r v2)))" (is "?lhs = ?rhs")
if "(r < s)" and "(s > r)" and "(s > 0)" and "(r > 0)"
for r s :: nat and v0 v2 :: int
proof -
  show ?thesis sorry
qed

end
