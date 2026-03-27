theory AndOrXor_1230_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AndOrXor_1230_values_0_th:
"(bw k (and (bw k (xor (bw k var_notOp0) (bw k (not (bw k 0))))) (bw k (xor (bw k var_notOp1) (bw k (not (bw k 0)))))))=(bw k (xor (bw k (or (bw k var_notOp0) (bw k var_notOp1))) (bw k (not (bw k 0)))))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_notOp0 var_notOp1 :: int
proof -
  show ?thesis sorry
qed

end
