theory hydra_opt_256
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem hydra_opt_256_th:
"(bw q ((bw q v1) - (bw q ((bw q v1) - (bw q v0)))))=(bw q v0)" (is "?lhs = ?rhs")
if "(q > 0)"
for q :: nat and v1 v0 :: int
proof -
  show ?thesis sorry
qed

end
