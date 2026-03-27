theory hydra_opt_1295
    imports rewrite_defs
begin
theorem hydra_opt_1295_th:
"(bw q (xor (bw q (-1)) (bw q (and (bw q (-1)) (bw q newvar2)))))=(bw q ((bw q (-1)) - (bw q newvar2)))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar2 :: int
proof -
  show ?thesis sorry
qed

end
