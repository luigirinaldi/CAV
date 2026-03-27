theory AndOrXor_1280_values_0
    imports rewrite_defs
begin
theorem AndOrXor_1280_values_0_th:
"(bw k (and (bw k (or (bw k (xor (bw k var_A) (bw k (not (bw k 0))))) (bw k var_B))) (bw k var_A)))=(bw k (and (bw k var_A) (bw k var_B)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_A var_B :: int
proof -
  show ?thesis sorry
qed

end
