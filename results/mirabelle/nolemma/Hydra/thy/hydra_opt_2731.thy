theory hydra_opt_2731
    imports rewrite_defs
begin
theorem hydra_opt_2731_th:
"(bw r (bw s (and (bw s (bw r v0)) (bw s (bw r v2)))))=(bw r (and (bw r v0) (bw r v2)))" (is "?lhs = ?rhs")
if "(r < s)" and "(s > r)" and "(r > 0)" and "(s > 0)"
for s r :: nat and v2 v0 :: int
proof -
  show ?thesis sorry
qed

end
