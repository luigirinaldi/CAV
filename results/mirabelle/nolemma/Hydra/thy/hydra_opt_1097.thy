theory hydra_opt_1097
    imports rewrite_defs
begin
theorem hydra_opt_1097_th:
"(bw q (or (bw q 0) (bw q newvar0)))=(bw q newvar0)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar0 :: int
proof -
  show ?thesis sorry
qed

end
