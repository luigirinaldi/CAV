theory mult_sum_same
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem mult_sum_same_th:
"(bw r ((bw s ((bw p a) * (bw q b))) + (bw q b)))=(bw r ((bw t ((bw p a) + (bw 1 1))) * (bw q b)))" (is "?lhs = ?rhs")
if "(t > p)" and "(t > 1)" and "(s >= (p + q))" and "(p > 0)" and "(t > 0)" and "(1 > 0)" and "(r > 0)" and "(s > 0)" and "(q > 0)"
for q p r t s :: nat and b a :: int
proof -
  show ?thesis sorry
qed

end
