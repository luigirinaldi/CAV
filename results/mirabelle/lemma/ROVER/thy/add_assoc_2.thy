theory add_assoc_2
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem add_assoc_2_th:
"(bw t ((bw u ((bw p a) + (bw r b))) + (bw s c)))=(bw t ((bw p a) + (bw q ((bw r b) + (bw s c)))))" (is "?lhs = ?rhs")
if "(r < q)" and "(s < q)" and "(u >= t)" and "(u > 0)" and "(s > 0)" and "(r > 0)" and "(t > 0)" and "(p > 0)" and "(q > 0)"
for q r s t p u :: nat and c b a :: int
proof -
  show ?thesis sorry
qed

end
