theory mul_one
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem mul_one_th:
"(bw p ((bw p a) * (bw q 1)))=(bw p a)" (is "?lhs = ?rhs")
if "(q > 0)" and "(p > 0)"
for q p :: nat and a :: int
proof -
  show ?thesis sorry
qed

end
