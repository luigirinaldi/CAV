theory AndOrXor_2063_values_0
    imports rewrite_defs
begin
theorem AndOrXor_2063_values_0_th:
"(bw k (or (bw k (xor (bw k var_x) (bw k C1))) (bw k C)))=(bw k (xor (bw k (or (bw k var_x) (bw k C))) (bw k (and (bw k C1) (bw k (not (bw k C)))))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and C1 C var_x :: int
proof -
  show ?thesis sorry
qed

end
