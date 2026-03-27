theory AndOrXor_2188_values_0
    imports rewrite_defs
begin
theorem AndOrXor_2188_values_0_th:
"(bw k (or (bw k (and (bw k var_A) (bw k (xor (bw k var_D) (bw k (not (bw k 0))))))) (bw k (and (bw k (xor (bw k var_A) (bw k (not (bw k 0))))) (bw k var_D)))))=(bw k (xor (bw k var_A) (bw k var_D)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_D var_A :: int
proof -
  show ?thesis sorry
qed

end
