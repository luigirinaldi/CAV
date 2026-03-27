theory AndOrXor_1346b_values_0
    imports rewrite_defs
begin
theorem AndOrXor_1346b_values_0_th:
"(bw (k + k) (and (bw (k + k) (bw k var_x)) (bw (k + k) (bw k var_y))))=(bw (k + k) (bw k (and (bw k var_x) (bw k var_y))))" (is "?lhs = ?rhs")
if "((k + k) > 0)" and "(k > 0)"
for k :: nat and var_x var_y :: int
proof -
  show ?thesis sorry
qed

end
