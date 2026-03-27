theory hydra_opt_2816
    imports rewrite_defs
begin
theorem hydra_opt_2816_th:
"(bw s (bw q (bw p newvar1)))=(bw s (bw p newvar1))" (is "?lhs = ?rhs")
if "(p < q)" and "(p > s)" and "(q > s)" and "(s > 0)" and "(p > 0)"
for s p q :: nat and newvar1 :: int
proof -
  show ?thesis sorry
qed

end
