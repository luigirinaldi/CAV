theory AndOrXor_1207_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AndOrXor_1207_values_0_th:
"(bw (((k - 1) - 0) + 1) (and (bw (((k - 1) - 0) + 1) ((bw m (and (bw m var_x) (bw m C1))) >> (bw 1 0))) (bw k C2)))=(bw (((k - 1) - 0) + 1) (and (bw (((k - 1) - 0) + 1) ((bw m var_x) >> (bw 1 0))) (bw (((k - 1) - 0) + 1) (and (bw (((k - 1) - 0) + 1) ((bw m C1) >> (bw 1 0))) (bw k C2)))))" (is "?lhs = ?rhs")
if "(m > k)" and "(k > 0)" and "(1 > 0)" and "(m > 0)" and "((((k - 1) - 0) + 1) > 0)"
for k m :: nat and var_x C1 C2 :: int
proof -
  show ?thesis sorry
qed

end
