theory left_shift_add_1
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem left_shift_add_1_th:
"(bw r ((bw s ((bw p a) + (bw q b))) << (bw t c)))=(bw r ((bw u ((bw p a) << (bw t c))) + (bw u ((bw q b) << (bw t c)))))" (is "?lhs = ?rhs")
if "(u >= r)" and "(s >= r)" and "(p > 0)" and "(u > 0)" and "(t > 0)" and "(r > 0)" and "(q > 0)" and "(s > 0)"
for q p r s t u :: nat and b c a :: int
proof -
  show ?thesis sorry
qed

end
