theory mult_assoc_2
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem mult_assoc_2_th:
"(bw t ((bw u ((bw p a) * (bw r b))) * (bw s c)))=(bw t ((bw p a) * (bw q ((bw r b) * (bw s c)))))" (is "?lhs = ?rhs")
if "(q >= t)" and "((p + r) <= u)" and "(s > 0)" and "(q > 0)" and "(u > 0)" and "(r > 0)" and "(t > 0)" and "(p > 0)"
for t s p u q r :: nat and b c a :: int
proof -
  show ?thesis sorry
qed

end
