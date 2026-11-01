package android.support.v4;

/* loaded from: classes2.dex */
public final class tq1 extends xn1 {
    @Override // android.support.v4.xn1
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public sq1 mo243catch(wn1 wn1Var) {
        String strSubstring;
        String strM9548for = xn1.m9548for(wn1Var);
        if (!strM9548for.startsWith("smsto:") && !strM9548for.startsWith("SMSTO:") && !strM9548for.startsWith("mmsto:") && !strM9548for.startsWith("MMSTO:")) {
            return null;
        }
        String strSubstring2 = strM9548for.substring(6);
        int iIndexOf = strSubstring2.indexOf(58);
        if (iIndexOf >= 0) {
            strSubstring = strSubstring2.substring(iIndexOf + 1);
            strSubstring2 = strSubstring2.substring(0, iIndexOf);
        } else {
            strSubstring = null;
        }
        return new sq1(strSubstring2, (String) null, (String) null, strSubstring);
    }
}
