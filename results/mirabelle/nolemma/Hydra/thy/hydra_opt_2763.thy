theory hydra_opt_2763
    imports rewrite_defs
begin
theorem hydra_opt_2763_th:
"(bw s (bw q ((bw q 0) + (bw q v0))))=(bw s (bw q v0))" (is "?lhs = ?rhs")
if "(q > s)" and "(s > 0)" and "(q > 0)"
for s q :: nat and v0 :: int
proof -
  show ?thesis sorry
qed

end
