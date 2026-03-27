theory hydra_opt_57
    imports rewrite_defs
begin
theorem hydra_opt_57_th:
"(bw q ((bw q newvar0) + (bw q ((bw q v10) - (bw q newvar0)))))=(bw q v10)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar0 v10 :: int
proof -
  show ?thesis sorry
qed

end
