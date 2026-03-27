theory hydra_opt_263
    imports rewrite_defs
begin
theorem hydra_opt_263_th:
"(bw q ((bw q ((bw q v0) + (bw q symconst_1))) - (bw q symconst_1)))=(bw q v0)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and v0 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
