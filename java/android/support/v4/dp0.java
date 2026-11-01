package android.support.v4;

import net.ricecode.similarity.SimilarityStrategy;

/* loaded from: classes3.dex */
public class dp0 extends cp0 implements SimilarityStrategy {

    /* renamed from: do, reason: not valid java name */
    public final double f1100do;

    /* renamed from: if, reason: not valid java name */
    private double f1101if;

    public dp0(double d) {
        this.f1100do = 0.1d;
        this.f1101if = d > 0.25d ? 0.25d : d;
    }

    /* renamed from: for, reason: not valid java name */
    private int m1476for(String str, String str2) {
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
        int i = 0;
        for (int i2 = 0; i2 < lowerCase.length() && lowerCase.charAt(i2) == lowerCase2.charAt(i2); i2++) {
            i++;
        }
        if (i > 4) {
            return 4;
        }
        return i;
    }

    @Override // android.support.v4.cp0, net.ricecode.similarity.SimilarityStrategy
    public double score(String str, String str2) {
        double dScore = super.score(str, str2);
        int iM1476for = m1476for(str, str2);
        double d = this.f1101if;
        double d2 = iM1476for;
        Double.isNaN(d2);
        return dScore + (d * d2 * (1.0d - dScore));
    }

    public dp0() {
        this.f1100do = 0.1d;
        this.f1101if = 0.1d;
    }
}
