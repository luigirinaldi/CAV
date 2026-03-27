theory hydra_opt_2712
    imports rewrite_defs
begin
theorem hydra_opt_2712_th:
"(bw s (signed q (bw q ((bw q 0) + (bw q newvar0)))))=(bw s (signed q (bw q newvar0)))" (is "?lhs = ?rhs")
if "(q < s)" and "(s > 0)" and "(q > 0)"
for s q :: nat and newvar0 :: int
proof -
  show ?thesis sorry
qed

end
