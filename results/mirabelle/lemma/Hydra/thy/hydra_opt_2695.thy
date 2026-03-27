theory hydra_opt_2695
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2695_th:
"(bw s (signed q (bw q (signed p (bw p v0)))))=(bw s (signed p (bw p v0)))" (is "?lhs = ?rhs")
if "(p < q)" and "(p < s)" and "(q < s)" and "(p > 0)" and "(s > 0)" and "(q > 0)"
for q s p :: nat and v0 :: int
proof -
  show ?thesis sorry
qed

end
