theory hydra_opt_2793
    imports rewrite_defs
begin
theorem hydra_opt_2793_th:
"(bw r (bw s ((bw s (bw r v0)) + (bw s (bw r v3)))))=(bw r ((bw r v0) + (bw r v3)))" (is "?lhs = ?rhs")
if "(r < s)" and "(s > r)" and "(r > 0)" and "(s > 0)"
for s r :: nat and v3 v0 :: int
proof -
  show ?thesis sorry
qed

end
