theory Select_1105_values_0
    imports rewrite_defs
begin
theorem Select_1105_values_0_th:
"(bw k var_Y)=(bw k var_Y)" (is "?lhs = ?rhs")
if "(k > 0)"
for k :: nat and var_Y :: int
using that by simp

end
