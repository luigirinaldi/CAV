theory hydra_opt_2806
    imports rewrite_defs
begin
theorem hydra_opt_2806_th:
"(bw u (bw r (sel (bw 1 newvar2) (bw r symconst_1) (bw r symconst_2))))=(bw u (sel (bw 1 newvar2) (bw u (bw r symconst_1)) (bw u (bw r symconst_2))))" (is "?lhs = ?rhs")
if "(r > u)" and "(1 > 0)" and "(u > 0)" and "(r > 0)"
for u r :: nat and symconst_2 symconst_1 newvar2 :: int
proof -
  show ?thesis sorry
qed

end
