package android.support.v4;

/* loaded from: classes2.dex */
public final class uq1 extends xn1 {
    @Override // android.support.v4.xn1
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public s60 mo243catch(wn1 wn1Var) {
        String strSubstring;
        String str;
        String strM9548for = xn1.m9548for(wn1Var);
        if (!strM9548for.startsWith("smtp:") && !strM9548for.startsWith("SMTP:")) {
            return null;
        }
        String strSubstring2 = strM9548for.substring(5);
        int iIndexOf = strSubstring2.indexOf(58);
        if (iIndexOf >= 0) {
            String strSubstring3 = strSubstring2.substring(iIndexOf + 1);
            strSubstring2 = strSubstring2.substring(0, iIndexOf);
            int iIndexOf2 = strSubstring3.indexOf(58);
            if (iIndexOf2 >= 0) {
                String strSubstring4 = strSubstring3.substring(iIndexOf2 + 1);
                strSubstring = strSubstring3.substring(0, iIndexOf2);
                str = strSubstring4;
            } else {
                str = null;
                strSubstring = strSubstring3;
            }
        } else {
            strSubstring = null;
            str = null;
        }
        return new s60(new String[]{strSubstring2}, null, null, strSubstring, str);
    }
}
