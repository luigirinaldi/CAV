theory hydra_opt_2744
    imports rewrite_defs
begin
theorem hydra_opt_2744_th:
"(bw s (bw q (bw p newvar1)))=(bw s (bw p newvar1))" (is "?lhs = ?rhs")
if "(p < q)" and "(p < s)" and "(q > s)" and "(s > 0)" and "(p > 0)"
for q p s :: nat and newvar1 :: int
proof -
  show ?thesis sorry
qed

end
