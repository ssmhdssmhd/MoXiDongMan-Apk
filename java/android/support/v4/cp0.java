package android.support.v4;

import net.ricecode.similarity.SimilarityStrategy;

/* loaded from: classes3.dex */
public class cp0 implements SimilarityStrategy {
    /* renamed from: do, reason: not valid java name */
    private String m988do(String str, String str2, int i) {
        StringBuilder sb = new StringBuilder();
        StringBuilder sb2 = new StringBuilder(str2);
        for (int i2 = 0; i2 < str.length(); i2++) {
            char cCharAt = str.charAt(i2);
            boolean z = false;
            for (int iMax = Math.max(0, i2 - i); !z && iMax < Math.min(i2 + i, str2.length()); iMax++) {
                if (sb2.charAt(iMax) == cCharAt) {
                    sb.append(cCharAt);
                    sb2.setCharAt(iMax, '*');
                    z = true;
                }
            }
        }
        return sb.toString();
    }

    /* renamed from: if, reason: not valid java name */
    private int m989if(String str, String str2) {
        int i = 0;
        for (int i2 = 0; i2 < str.length(); i2++) {
            if (str.charAt(i2) != str2.charAt(i2)) {
                i++;
            }
        }
        return i / 2;
    }

    @Override // net.ricecode.similarity.SimilarityStrategy
    public double score(String str, String str2) {
        String lowerCase;
        String lowerCase2;
        if (str.length() > str2.length()) {
            lowerCase2 = str.toLowerCase();
            lowerCase = str2.toLowerCase();
        } else {
            String lowerCase3 = str2.toLowerCase();
            lowerCase = str.toLowerCase();
            lowerCase2 = lowerCase3;
        }
        int length = (lowerCase.length() / 2) + 1;
        String strM988do = m988do(lowerCase, lowerCase2, length);
        String strM988do2 = m988do(lowerCase2, lowerCase, length);
        if (strM988do.length() == 0 || strM988do2.length() == 0 || strM988do.length() != strM988do2.length()) {
            return 0.0d;
        }
        int iM989if = m989if(strM988do, strM988do2);
        double length2 = strM988do.length();
        double length3 = lowerCase.length();
        Double.isNaN(length2);
        Double.isNaN(length3);
        double d = length2 / length3;
        double length4 = strM988do2.length();
        double length5 = lowerCase2.length();
        Double.isNaN(length4);
        Double.isNaN(length5);
        double d2 = d + (length4 / length5);
        double length6 = strM988do.length() - iM989if;
        double length7 = strM988do.length();
        Double.isNaN(length6);
        Double.isNaN(length7);
        return (d2 + (length6 / length7)) / 3.0d;
    }
}
