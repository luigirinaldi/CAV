theory hydra_opt_2743
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2743_th:
"(bw p (bw q (bw p newvar0)))=(bw p newvar0)" (is "?lhs = ?rhs")
if "(p < q)" and "(q > p)" and "(p > 0)"
for q p :: nat and newvar0 :: int
proof -
  show ?thesis sorry
qed

end
