theory left_shift_mult
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem left_shift_mult_th:
"(bw r ((bw t ((bw p a) * (bw q b))) << (bw u c)))=(bw r ((bw v ((bw p a) << (bw u c))) * (bw q b)))" (is "?lhs = ?rhs")
if "(t >= r)" and "(v >= r)" and "(q > 0)" and "(u > 0)" and "(r > 0)" and "(p > 0)" and "(v > 0)" and "(t > 0)"
for t u p r q v :: nat and c a b :: int
proof -
  show ?thesis sorry
qed

end
