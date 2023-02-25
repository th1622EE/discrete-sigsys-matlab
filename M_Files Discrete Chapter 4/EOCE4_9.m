num = [0 0 1];
den = [1 -.9 .7];
[r p k] = residuez (num, den)
mag_r = abs (r)
phase_r = angle (r)
mag_p = abs (p) % magnitude of the poles
phase_p = angle (p) % phase angles of the poles

