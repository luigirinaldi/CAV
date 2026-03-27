theory hydra_opt_2784
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2784_th:
"(bw s (bw q (and (bw q (bw s (-1))) (bw q v3))))=(bw s (bw q v3))" (is "?lhs = ?rhs")
if "(q > s)" and "(s > 0)" and "(q > 0)"
for s q :: nat and v3 :: int
proof -
  show ?thesis sorry
qed

end
