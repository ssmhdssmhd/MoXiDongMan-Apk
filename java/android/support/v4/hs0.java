package android.support.v4;

import net.ricecode.similarity.SimilarityStrategy;

/* loaded from: classes3.dex */
public class hs0 implements SimilarityStrategy {
    /* renamed from: do, reason: not valid java name */
    public int m3122do(String str, String str2) {
        String lowerCase = str.toLowerCase();
        String lowerCase2 = str2.toLowerCase();
        int[] iArr = new int[lowerCase2.length() + 1];
        for (int i = 0; i <= lowerCase.length(); i++) {
            int i2 = i;
            for (int i3 = 0; i3 <= lowerCase2.length(); i3++) {
                if (i == 0) {
                    iArr[i3] = i3;
                } else if (i3 > 0) {
                    int i4 = i3 - 1;
                    int iMin = iArr[i4];
                    if (lowerCase.charAt(i - 1) != lowerCase2.charAt(i4)) {
                        iMin = Math.min(Math.min(iMin, i2), iArr[i3]) + 1;
                    }
                    iArr[i4] = i2;
                    i2 = iMin;
                }
            }
            if (i > 0) {
                iArr[lowerCase2.length()] = i2;
            }
        }
        return iArr[lowerCase2.length()];
    }

    @Override // net.ricecode.similarity.SimilarityStrategy
    public double score(String str, String str2) {
        int iMax = Math.max(str.length(), str2.length());
        if (iMax == 0) {
            return 1.0d;
        }
        double dM3122do = iMax - m3122do(str, str2);
        double d = iMax;
        Double.isNaN(dM3122do);
        Double.isNaN(d);
        return dM3122do / d;
    }
}
