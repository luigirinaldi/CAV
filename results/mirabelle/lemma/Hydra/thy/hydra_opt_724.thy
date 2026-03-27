theory hydra_opt_724
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_724_th:
"(bw q (and (bw q symconst_1) (bw q (or (bw q symconst_1) (bw q newvar0)))))=(bw q symconst_1)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and symconst_1 newvar0 :: int
proof -
  show ?thesis sorry
qed

end
