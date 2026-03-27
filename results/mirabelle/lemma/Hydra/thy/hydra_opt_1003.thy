theory hydra_opt_1003
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_1003_th:
"(bw r (or (bw r (and (bw r symconst_2) (bw r v0))) (bw r (and (bw r v0) (bw r symconst_1)))))=(bw r (and (bw r v0) (bw r (or (bw r symconst_2) (bw r symconst_1)))))" (is "?lhs = ?rhs")
if "(r > 0)"
for r :: nat and symconst_2 symconst_1 v0 :: int
proof -
  show ?thesis sorry
qed

end
