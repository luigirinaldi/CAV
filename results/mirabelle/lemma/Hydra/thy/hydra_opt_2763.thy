theory hydra_opt_2763
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_2763_th:
"(bw s (bw q ((bw q 0) + (bw q v0))))=(bw s (bw q v0))" (is "?lhs = ?rhs")
if "(q > s)" and "(q > 0)" and "(s > 0)"
for q s :: nat and v0 :: int
proof -
  show ?thesis sorry
qed

end
