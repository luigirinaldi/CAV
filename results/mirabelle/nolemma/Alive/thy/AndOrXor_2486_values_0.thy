theory AndOrXor_2486_values_0
    imports rewrite_defs
begin
theorem AndOrXor_2486_values_0_th:
"(bw k (xor (bw k ((bw k var_x) + (bw k C))) (bw k (not (bw k 0)))))=(bw k ((bw k ((bw k (not (bw k 0))) - (bw k C))) - (bw k var_x)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_x C :: int
proof -
  show ?thesis sorry
qed

end
