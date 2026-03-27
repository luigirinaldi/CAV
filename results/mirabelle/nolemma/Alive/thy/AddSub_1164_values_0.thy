theory AddSub_1164_values_0
    imports rewrite_defs
begin
theorem AddSub_1164_values_0_th:
"(bw k ((bw k ((bw k 0) - (bw k var_a))) + (bw k var_b)))=(bw k ((bw k var_b) - (bw k var_a)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_b var_a :: int
proof -
  show ?thesis sorry
qed

end
