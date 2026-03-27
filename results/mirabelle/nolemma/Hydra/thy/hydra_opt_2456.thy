theory hydra_opt_2456
    imports rewrite_defs
begin
theorem hydra_opt_2456_th:
"(bw u (bw r (sel (bw 1 v0) (bw r symconst_1) (bw r symconst_2))))=(bw u (sel (bw 1 v0) (bw u (bw r symconst_1)) (bw u (bw r symconst_2))))" (is "?lhs = ?rhs")
if "(r < u)" and "(1 > 0)" and "(u > 0)" and "(r > 0)"
for r u :: nat and symconst_1 v0 symconst_2 :: int
proof -
  show ?thesis sorry
qed

end
