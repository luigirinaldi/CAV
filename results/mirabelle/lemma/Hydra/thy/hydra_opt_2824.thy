theory hydra_opt_2824
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2824_th:
"(bw s (bw q (bw p v0)))=(bw s (bw p v0))" (is "?lhs = ?rhs")
if "(p < q)" and "(p < s)" and "(q > s)" and "(s > 0)" and "(p > 0)"
for p q s :: nat and v0 :: int
proof -
  show ?thesis sorry
qed

end
