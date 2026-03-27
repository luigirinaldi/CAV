theory abs_diff_shared_sub
    imports rewrite_defs
begin
theorem abs_diff_shared_sub_th:
"(bw w (sel (bw 1 s) (bw w ((bw w a) - (bw w b))) (bw w ((bw w b) - (bw w a)))))=(bw w ((bw w (sel (bw 1 s) (bw w a) (bw w b))) - (bw w (sel (bw 1 s) (bw w b) (bw w a)))))" (is "?lhs = ?rhs")
if "(w > 0)" and "(1 > 0)"
for w :: nat and b a s :: int
proof -
  show ?thesis sorry
qed

end
