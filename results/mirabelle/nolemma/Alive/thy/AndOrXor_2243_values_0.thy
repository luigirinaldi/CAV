theory AndOrXor_2243_values_0
    imports rewrite_defs
begin
theorem AndOrXor_2243_values_0_th:
"(bw k (or (bw k (and (bw k (or (bw k var_B) (bw k var_C))) (bw k var_A))) (bw k var_B)))=(bw k (or (bw k var_B) (bw k (and (bw k var_A) (bw k var_C)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_A var_B var_C :: int
proof -
  show ?thesis sorry
qed

end
