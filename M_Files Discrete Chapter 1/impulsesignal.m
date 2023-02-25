function [xofn, index] = impulsesignal (Sindex, Lindex, Rindex)
index = [Lindex : Rindex];
xofn = [(index-Sindex) == 0];
