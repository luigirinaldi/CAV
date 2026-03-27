theory hydra_opt_392
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_392_th:
"(bw q ((bw q 1) * (bw q newvar2)))=(bw q newvar2)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar2 :: int
proof -
  show ?thesis sorry
qed

end
