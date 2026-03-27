theory hydra_opt_1502
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_1502_th:
"(bw q (sel (bw 1 newvar0) (bw q symconst_1) (bw q symconst_1)))=(bw q symconst_1)" (is "?lhs = ?rhs")
if "(1 > 0)" and "(q > 0)"
for q :: nat and newvar0 symconst_1 :: int
proof -
  show ?thesis sorry
qed

end
