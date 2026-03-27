theory hydra_opt_2750
    imports rewrite_defs
begin
theorem hydra_opt_2750_th:
"(bw r (bw s (or (bw s (bw r v0)) (bw s (bw r newvar1)))))=(bw r (or (bw r v0) (bw r newvar1)))" (is "?lhs = ?rhs")
if "(r < s)" and "(s > r)" and "(s > 0)" and "(r > 0)"
for s r :: nat and newvar1 v0 :: int
proof -
  show ?thesis sorry
qed

end
