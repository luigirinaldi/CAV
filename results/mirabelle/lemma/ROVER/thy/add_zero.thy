theory add_zero
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem add_zero_th:
"(bw p ((bw p a) + (bw q 0)))=(bw p a)" (is "?lhs = ?rhs")
if "(q > 0)" and "(p > 0)"
for p q :: nat and a :: int
proof -
  show ?thesis sorry
qed

end
