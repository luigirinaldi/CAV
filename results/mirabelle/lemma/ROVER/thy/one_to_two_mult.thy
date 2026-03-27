theory one_to_two_mult
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem one_to_two_mult_th:
"(bw p ((bw 1 1) * (bw p x)))=(bw p ((bw q ((bw 2 2) * (bw p x))) - (bw p x)))" (is "?lhs = ?rhs")
if "(q > (p + 2))" and "(q > p)" and "(q > 0)" and "(2 > 0)" and "(1 > 0)" and "(p > 0)"
for p q :: nat and x :: int
proof -
  show ?thesis sorry
qed

end
