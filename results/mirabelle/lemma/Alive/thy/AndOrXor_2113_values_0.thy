theory AndOrXor_2113_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AndOrXor_2113_values_0_th:
"(bw k (or (bw k (and (bw k (xor (bw k var_A) (bw k (not (bw k 0))))) (bw k var_B))) (bw k var_A)))=(bw k (or (bw k var_A) (bw k var_B)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_B var_A :: int
proof -
  show ?thesis sorry
qed

end
