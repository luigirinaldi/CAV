theory hydra_opt_391
    imports rewrite_defs
begin
theorem hydra_opt_391_th:
"(bw q ((bw q (-1)) * (bw q ((bw q newvar0) - (bw q symconst_1)))))=(bw q ((bw q symconst_1) - (bw q newvar0)))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and symconst_1 newvar0 :: int
proof -
  show ?thesis sorry
qed

end
