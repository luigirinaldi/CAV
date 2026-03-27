theory hydra_opt_2895
    imports rewrite_defs
begin
theorem hydra_opt_2895_th:
"(bw s (bw q (bw p newvar0)))=(bw s (bw p newvar0))" (is "?lhs = ?rhs")
if "(p > q)" and "(p > s)" and "(q > s)" and "(s > 0)" and "(p > 0)"
for q s p :: nat and newvar0 :: int
proof -
  show ?thesis sorry
qed

end
