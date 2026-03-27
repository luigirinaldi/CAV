theory hydra_opt_2873
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2873_th:
"(bw t (bw r (xor (bw r symconst_1) (bw r (bw t v0)))))=(bw t (xor (bw t v0) (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(t > 0)" and "(r > 0)"
for t r :: nat and v0 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
