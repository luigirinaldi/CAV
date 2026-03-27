theory hydra_opt_2696
    imports rewrite_defs
begin
theorem hydra_opt_2696_th:
"(bw u (signed r (bw r (sel (bw 1 newvar1) (bw r symconst_1) (bw r symconst_2)))))=(bw u (sel (bw 1 newvar1) (bw u (signed r (bw r symconst_1))) (bw u (signed r (bw r symconst_2)))))" (is "?lhs = ?rhs")
if "(r < u)" and "(r > 0)" and "(1 > 0)" and "(u > 0)"
for r u :: nat and symconst_2 symconst_1 newvar1 :: int
proof -
  show ?thesis sorry
qed

end
