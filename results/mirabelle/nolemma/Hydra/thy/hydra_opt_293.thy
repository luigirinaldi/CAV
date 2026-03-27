theory hydra_opt_293
    imports rewrite_defs
begin
theorem hydra_opt_293_th:
"(bw r ((bw r ((bw r v0) + (bw r symconst_1))) - (bw r symconst_2)))=(bw r ((bw r v0) + (bw r ((bw r symconst_1) - (bw r symconst_2)))))" (is "?lhs = ?rhs")
if "(r > 0)"
for r :: nat and symconst_2 symconst_1 v0 :: int
proof -
  show ?thesis sorry
qed

end
