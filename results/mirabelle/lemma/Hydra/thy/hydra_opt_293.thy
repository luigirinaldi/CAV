theory hydra_opt_293
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_293_th:
"(bw r ((bw r ((bw r v0) + (bw r symconst_1))) - (bw r symconst_2)))=(bw r ((bw r v0) + (bw r ((bw r symconst_1) - (bw r symconst_2)))))" (is "?lhs = ?rhs")
if "(r > 0)"
for r :: nat and symconst_1 symconst_2 v0 :: int
proof -
  show ?thesis sorry
qed

end
