theory AddSub_1574_values_0
    imports rewrite_defs arith_lemmas bitwise_lemmas mixed_lemmas signed_lemmas
begin
theorem AddSub_1574_values_0_th:
"(bw k ((bw k C) - (bw k ((bw k var_X) + (bw k C2)))))=(bw k ((bw k ((bw k C) - (bw k C2))) - (bw k var_X)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and C2 var_X C :: int
proof -
  show ?thesis sorry
qed

end
