theory add_assoc_3
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem add_assoc_3_th:
"(bw t ((bw u ((bw p a) + (bw r b))) + (bw s c)))=(bw t ((bw p a) + (bw q ((bw r b) + (bw s c)))))" (is "?lhs = ?rhs")
if "(q >= t)" and "(p < u)" and "(r < u)" and "(t > 0)" and "(r > 0)" and "(q > 0)" and "(p > 0)" and "(u > 0)" and "(s > 0)"
for u q t r s p :: nat and c b a :: int
proof -
  show ?thesis sorry
qed

end
