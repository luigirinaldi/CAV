theory hydra_opt_2626
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2626_th:
"(bw s (bw q (bw p v0)))=(bw s (bw p v0))" (is "?lhs = ?rhs")
if "(p < q)" and "(p < s)" and "(q < s)" and "(p > 0)" and "(s > 0)"
for s q p :: nat and v0 :: int
proof -
  show ?thesis sorry
qed

end
