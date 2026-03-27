theory AddSub_1098_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AddSub_1098_values_0_th:
"(bw ((k - 1) + 1) ((bw ((k - 1) + 1) (bw 1 var_a)) + (bw k var_b)))=(bw k (sel (bw 1 var_a) (bw k ((bw k var_b) + (bw k 1))) (bw k var_b)))" (is "?lhs = ?rhs")
if "(k > 0)" and "(((k - 1) + 1) > 0)" and "(1 > 0)"
for k :: nat and var_b var_a :: int
proof -
  show ?thesis sorry
qed

end
