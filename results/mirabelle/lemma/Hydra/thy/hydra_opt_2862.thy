theory hydra_opt_2862
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2862_th:
"(bw t (bw r ((bw r symconst_1) + (bw r (signed t (bw t v0))))))=(bw t ((bw t v0) + (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(r > 0)" and "(t > 0)"
for r t :: nat and symconst_1 v0 :: int
proof -
  show ?thesis sorry
qed

end
