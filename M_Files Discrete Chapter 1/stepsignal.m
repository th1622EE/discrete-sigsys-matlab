function [xofn, index] = stepsignal (Sindex, Lindex, Rindex)
index = [Lindex: Rindex];
xofn = [(index - Sindex) >= 0];
