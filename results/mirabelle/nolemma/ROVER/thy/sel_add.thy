theory sel_add
    imports rewrite_defs
begin
theorem sel_add_th:
"(bw w (sel (bw 1 s) (bw w ((bw w a) + (bw w b))) (bw w ((bw w c) + (bw w d)))))=(bw w ((bw w (sel (bw 1 s) (bw w a) (bw w c))) + (bw w (sel (bw 1 s) (bw w b) (bw w d)))))" (is "?lhs = ?rhs")
if "(1 > 0)" and "(w > 0)"
for w :: nat and a c b d s :: int
proof -
  show ?thesis sorry
qed

end
