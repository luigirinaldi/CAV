theory mult_assoc_3
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem mult_assoc_3_th:
"(bw t ((bw u ((bw p a) * (bw r b))) * (bw s c)))=(bw t ((bw p a) * (bw q ((bw r b) * (bw s c)))))" (is "?lhs = ?rhs")
if "((r + s) <= q)" and "(u >= t)" and "(s > 0)" and "(t > 0)" and "(r > 0)" and "(q > 0)" and "(p > 0)" and "(u > 0)"
for t u p s r q :: nat and b c a :: int
proof -
  show ?thesis sorry
qed

end
