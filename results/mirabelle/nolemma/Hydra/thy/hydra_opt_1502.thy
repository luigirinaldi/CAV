theory hydra_opt_1502
    imports rewrite_defs
begin
theorem hydra_opt_1502_th:
"(bw q (sel (bw 1 newvar0) (bw q symconst_1) (bw q symconst_1)))=(bw q symconst_1)" (is "?lhs = ?rhs")
if "(q > 0)" and "(1 > 0)"
for q :: nat and symconst_1 newvar0 :: int
proof -
  show ?thesis sorry
qed

end
