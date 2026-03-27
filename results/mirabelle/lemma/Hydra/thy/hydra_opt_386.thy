theory hydra_opt_386
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_386_th:
"(bw q ((bw q newvar5) * (bw q ((bw q 1) << (bw q newvar2)))))=(bw q ((bw q newvar5) << (bw q newvar2)))" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and newvar2 newvar5 :: int
proof -
  show ?thesis sorry
qed

end
