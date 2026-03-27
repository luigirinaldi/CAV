theory hydra_opt_250
    imports rewrite_defs
begin
theorem hydra_opt_250_th:
"(bw q ((bw q 0) - (bw q ((bw q v0) - (bw q symconst_2)))))=(bw q ((bw q symconst_2) - (bw q v0)))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and symconst_2 v0 :: int
proof -
  show ?thesis sorry
qed

end
