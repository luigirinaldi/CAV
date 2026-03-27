theory hydra_opt_1116
    imports rewrite_defs
begin
theorem hydra_opt_1116_th:
"(bw q (or (bw q symconst_1) (bw q (or (bw q symconst_2) (bw q v0)))))=(bw q (or (bw q v0) (bw q (or (bw q symconst_1) (bw q symconst_2)))))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and v0 symconst_2 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
