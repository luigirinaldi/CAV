theory sub_to_neg
    imports rewrite_defs
begin
theorem sub_to_neg_th:
"(bw r ((bw p a) - (bw q b)))=(bw r ((bw p a) + (bw r (- (bw q b)))))" (is "?lhs = ?rhs")
if "(r > 0)" and "(q > 0)" and "(p > 0)"
for r p q :: nat and b a :: int
proof -
  show ?thesis sorry
qed

end
