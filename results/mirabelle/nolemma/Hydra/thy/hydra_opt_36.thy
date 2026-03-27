theory hydra_opt_36
    imports rewrite_defs
begin
theorem hydra_opt_36_th:
"(bw q ((bw q symconst_1) + (bw q ((bw q symconst_1) + (bw q v0)))))=(bw q ((bw q v0) + (bw q ((bw q symconst_1) + (bw q symconst_1)))))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and symconst_1 v0 :: int
proof -
  show ?thesis sorry
qed

end
