theory merge_left_shift
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem merge_left_shift_th:
"(bw r ((bw u ((bw p a) << (bw q b))) << (bw s c)))=(bw r ((bw p a) << (bw t ((bw q b) + (bw s c)))))" (is "?lhs = ?rhs")
if "(u >= r)" and "(t > s)" and "(t > q)" and "(p > 0)" and "(u > 0)" and "(s > 0)" and "(t > 0)" and "(q > 0)" and "(r > 0)"
for t q p r s u :: nat and c a b :: int
proof -
  show ?thesis sorry
qed

end
