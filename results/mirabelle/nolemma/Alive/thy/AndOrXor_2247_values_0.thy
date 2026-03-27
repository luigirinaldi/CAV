theory AndOrXor_2247_values_0
    imports rewrite_defs
begin
theorem AndOrXor_2247_values_0_th:
"(bw k (or (bw k (xor (bw k var_A) (bw k (not (bw k 0))))) (bw k (xor (bw k var_B) (bw k (not (bw k 0)))))))=(bw k (xor (bw k (and (bw k var_A) (bw k var_B))) (bw k (not (bw k 0)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_B var_A :: int
proof -
  show ?thesis sorry
qed

end
