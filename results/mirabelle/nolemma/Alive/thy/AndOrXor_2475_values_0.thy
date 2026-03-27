theory AndOrXor_2475_values_0
    imports rewrite_defs
begin
theorem AndOrXor_2475_values_0_th:
"(bw k (xor (bw k ((bw k C) - (bw k var_x))) (bw k (not (bw k 0)))))=(bw k ((bw k var_x) + (bw k ((bw k (not (bw k 0))) - (bw k C)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and C var_x :: int
proof -
  show ?thesis sorry
qed

end
