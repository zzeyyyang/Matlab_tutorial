function S = simple_stats(N)
S = [mean(N,2) median(N,2) min(N,[],2) max(N,[],2)];%解法1
S = [mean(N');median(N');min(N');max(N')]';%解法2
end