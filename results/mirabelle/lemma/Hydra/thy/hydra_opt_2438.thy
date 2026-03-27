theory hydra_opt_2438
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2438_th:
"(bw t (bw r (and (bw r symconst_1) (bw r (bw t v0)))))=(bw t (and (bw t v0) (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(r < t)" and "(t > r)" and "(t > 0)" and "(r > 0)"
for r t :: nat and v0 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
