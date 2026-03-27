theory hydra_opt_37
    imports rewrite_defs
begin
theorem hydra_opt_37_th:
"(bw q ((bw q 0) + (bw q v0)))=(bw q v0)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and v0 :: int
proof -
  show ?thesis sorry
qed

end
