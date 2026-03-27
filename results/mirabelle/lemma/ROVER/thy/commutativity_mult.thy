theory commutativity_mult
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem commutativity_mult_th:
"(bw r ((bw p a) * (bw q b)))=(bw r ((bw q b) * (bw p a)))" (is "?lhs = ?rhs")
if "(r > 0)" and "(q > 0)" and "(p > 0)"
for p q r :: nat and b a :: int
proof -
  show ?thesis sorry
qed

end
