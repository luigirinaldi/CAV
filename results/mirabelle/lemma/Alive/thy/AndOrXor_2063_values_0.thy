theory AndOrXor_2063_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AndOrXor_2063_values_0_th:
"(bw k (or (bw k (xor (bw k var_x) (bw k C1))) (bw k C)))=(bw k (xor (bw k (or (bw k var_x) (bw k C))) (bw k (and (bw k C1) (bw k (not (bw k C)))))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_x C1 C :: int
proof -
  show ?thesis sorry
qed

end
