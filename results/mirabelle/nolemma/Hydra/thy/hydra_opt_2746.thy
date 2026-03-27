theory hydra_opt_2746
    imports rewrite_defs
begin
theorem hydra_opt_2746_th:
"(bw p (bw q (signed p (bw p v0))))=(bw p v0)" (is "?lhs = ?rhs")
if "(p < q)" and "(q > p)" and "(p > 0)"
for q p :: nat and v0 :: int
proof -
  show ?thesis sorry
qed

end
