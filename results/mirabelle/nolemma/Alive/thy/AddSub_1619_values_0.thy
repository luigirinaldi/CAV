theory AddSub_1619_values_0
    imports rewrite_defs
begin
theorem AddSub_1619_values_0_th:
"(bw k ((bw k ((bw k var_X) - (bw k var_Y))) - (bw k var_X)))=(bw k ((bw k 0) - (bw k var_Y)))" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_X var_Y :: int
proof -
  show ?thesis sorry
qed

end
