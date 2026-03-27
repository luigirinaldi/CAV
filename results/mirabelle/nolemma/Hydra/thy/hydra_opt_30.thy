theory hydra_opt_30
    imports rewrite_defs
begin
theorem hydra_opt_30_th:
"(bw q ((bw q 1) + (bw q (xor (bw q (-1)) (bw q v0)))))=(bw q ((bw q (-1)) * (bw q v0)))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and v0 :: int
proof -
  show ?thesis sorry
qed

end
