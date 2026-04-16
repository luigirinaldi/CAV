theory mul_two
    imports rewrite_defs
begin
theorem mul_two_th:
"(bw r ((bw p a) * (bw 2 2)))=(bw r ((bw p a) << (bw 1 1)))" (is "?lhs = ?rhs")
if "(p > 0)" and "(1 > 0)" and "(2 > 0)" and "(r > 0)"
for r p :: nat and a :: int
proof -
    have "?lhs = (bw r ((bw p a) * 2))" by (simp add: bw_def)
    moreover have "... = (bw r ((bw p a) * (2 ^ nat (1))))" by (simp add: bw_def)
    moreover have "... = (bw r ((bw p a) * (2 ^ nat ((bw 1 1)))))" by (simp add: bw_def)
    moreover have "... = (bw r ((bw p a) << (bw 1 1)))" by (simp add: shl_def)
ultimately show ?thesis by argo
qed

end
