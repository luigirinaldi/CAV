theory mult_assoc_4
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem mult_assoc_4_th:
"(bw t ((bw u ((bw p a) * (bw r b))) * (bw s c)))=(bw t ((bw p a) * (bw q ((bw r b) * (bw s c)))))" (is "?lhs = ?rhs")
if "((r + s) <= q)" and "((p + r) <= u)" and "(q > 0)" and "(t > 0)" and "(u > 0)" and "(s > 0)" and "(r > 0)" and "(p > 0)"
for t q p r s u :: nat and c b a :: int
proof -
  show ?thesis sorry
qed

end
