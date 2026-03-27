theory AndOrXor_2367_values_0
    imports rewrite_defs
begin
theorem AndOrXor_2367_values_0_th:
"(bw k (or (bw k (or (bw k var_A) (bw k C1))) (bw k var_op1)))=(bw k (or (bw k (or (bw k var_A) (bw k var_op1))) (bw k C1)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and C1 var_op1 var_A :: int
proof -
  show ?thesis sorry
qed

end
