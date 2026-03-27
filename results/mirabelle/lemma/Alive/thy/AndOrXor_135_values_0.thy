theory AndOrXor_135_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AndOrXor_135_values_0_th:
"(bw k (and (bw k (xor (bw k var_X) (bw k C1))) (bw k C2)))=(bw k (xor (bw k (and (bw k var_X) (bw k C2))) (bw k (and (bw k C1) (bw k C2)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_X C1 C2 :: int
proof -
  show ?thesis sorry
qed

end
