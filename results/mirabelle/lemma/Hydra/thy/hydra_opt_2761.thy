theory hydra_opt_2761
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2761_th:
"(bw t (bw r (and (bw r symconst_1) (bw r (bw t v0)))))=(bw t (and (bw t v0) (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(r > 0)" and "(t > 0)"
for r t :: nat and v0 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
