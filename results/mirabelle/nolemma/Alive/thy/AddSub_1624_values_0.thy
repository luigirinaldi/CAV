theory AddSub_1624_values_0
    imports rewrite_defs
begin
theorem AddSub_1624_values_0_th:
"(bw k ((bw k (or (bw k var_A) (bw k var_B))) - (bw k (xor (bw k var_A) (bw k var_B)))))=(bw k (and (bw k var_A) (bw k var_B)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_B var_A :: int
proof -
  show ?thesis sorry
qed

end
