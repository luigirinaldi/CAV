theory AndOrXor_2263_values_0
    imports rewrite_defs
begin
theorem AndOrXor_2263_values_0_th:
"(bw k (or (bw k var_op0) (bw k (xor (bw k var_op0) (bw k var_B)))))=(bw k (or (bw k var_op0) (bw k var_B)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_B var_op0 :: int
proof -
  show ?thesis sorry
qed

end
