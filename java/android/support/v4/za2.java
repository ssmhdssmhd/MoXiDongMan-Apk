package android.support.v4;

/* loaded from: classes2.dex */
public final class za2 extends xn1 {
    @Override // android.support.v4.xn1
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public xa2 mo243catch(wn1 wn1Var) {
        int iIndexOf;
        String strM9548for = xn1.m9548for(wn1Var);
        if ((strM9548for.startsWith("urlto:") || strM9548for.startsWith("URLTO:")) && (iIndexOf = strM9548for.indexOf(58, 6)) >= 0) {
            return new xa2(strM9548for.substring(iIndexOf + 1), iIndexOf > 6 ? strM9548for.substring(6, iIndexOf) : null);
        }
        return null;
    }
}
