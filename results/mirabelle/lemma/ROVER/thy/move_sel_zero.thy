theory move_sel_zero
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem move_sel_zero_th:
"(bw r ((bw p (sel (bw 1 b) (bw p 0) (bw p a))) * (bw q c)))=(bw r ((bw p a) * (bw q (sel (bw 1 b) (bw q 0) (bw q c)))))" (is "?lhs = ?rhs")
if "(p >= 1)" and "(q >= 1)" and "(p > 0)" and "(r > 0)" and "(1 > 0)" and "(q > 0)"
for q r p :: nat and b a c :: int
proof -
  show ?thesis sorry
qed

end
