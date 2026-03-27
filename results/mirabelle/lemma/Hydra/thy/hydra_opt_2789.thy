theory hydra_opt_2789
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2789_th:
"(bw t (bw r (or (bw r symconst_1) (bw r (bw t newvar2)))))=(bw t (or (bw t newvar2) (bw t (bw r symconst_1))))" (is "?lhs = ?rhs")
if "(t < r)" and "(r > t)" and "(r > 0)" and "(t > 0)"
for r t :: nat and newvar2 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
