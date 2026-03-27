theory hydra_opt_2852
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2852_th:
"(bw q (bw r ((bw r symconst_1) - (bw r (bw q v0)))))=(bw q ((bw q (bw r symconst_1)) - (bw q v0)))" (is "?lhs = ?rhs")
if "(q < r)" and "(r > q)" and "(r > 0)" and "(q > 0)"
for q r :: nat and v0 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
