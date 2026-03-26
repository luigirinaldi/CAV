theory mult_sum_same
    imports rewrite_defs
begin
theorem mult_sum_same_th:
"(bw r ((bw s ((bw p a) * (bw q b))) + (bw q b)))=(bw r ((bw t ((bw p a) + (bw 1 1))) * (bw q b)))" (is "?lhs = ?rhs")
if "(t > p)" and "(t > 1)" and "(s >= (p + q))" and "(q > 0)" and "(1 > 0)" and "(r > 0)" and "(p > 0)" and "(t > 0)" and "(s > 0)"
for p r s t q :: nat and a b :: int
proof -
  show ?thesis sorry
qed

end
