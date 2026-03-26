theory sum_same
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem sum_same_th:
"(bw q ((bw p a) + (bw p a)))=(bw q ((bw 2 2) * (bw p a)))" (is "?lhs = ?rhs")
if "(q > 0)" and "(2 > 0)" and "(p > 0)"
for q p :: nat and a :: int
proof -
  show ?thesis sorry
qed

end
