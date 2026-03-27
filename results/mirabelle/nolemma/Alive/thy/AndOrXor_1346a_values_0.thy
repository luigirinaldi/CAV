theory AndOrXor_1346a_values_0
    imports rewrite_defs
begin
theorem AndOrXor_1346a_values_0_th:
"(bw (k + k) (and (bw (k + k) (signed k (bw k var_x))) (bw (k + k) (signed k (bw k var_y)))))=(bw (k + k) (signed k (bw k (and (bw k var_x) (bw k var_y)))))" (is "?lhs = ?rhs")
if "((k + k) > 0)" and "(k > 0)"
for k :: nat and var_y var_x :: int
proof -
  show ?thesis sorry
qed

end
