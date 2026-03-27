theory hydra_opt_2816
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2816_th:
"(bw s (bw q (bw p newvar1)))=(bw s (bw p newvar1))" (is "?lhs = ?rhs")
if "(p < q)" and "(p > s)" and "(q > s)" and "(p > 0)" and "(s > 0)"
for q p s :: nat and newvar1 :: int
proof -
  show ?thesis sorry
qed

end
