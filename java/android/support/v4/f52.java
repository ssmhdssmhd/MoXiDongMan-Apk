package android.support.v4;

/* loaded from: classes2.dex */
public final class f52 extends xn1 {
    @Override // android.support.v4.xn1
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public e52 mo243catch(wn1 wn1Var) {
        String str;
        String strM9548for = xn1.m9548for(wn1Var);
        if (!strM9548for.startsWith("tel:") && !strM9548for.startsWith("TEL:")) {
            return null;
        }
        if (strM9548for.startsWith("TEL:")) {
            str = "tel:" + strM9548for.substring(4);
        } else {
            str = strM9548for;
        }
        int iIndexOf = strM9548for.indexOf(63, 4);
        return new e52(iIndexOf < 0 ? strM9548for.substring(4) : strM9548for.substring(4, iIndexOf), str, null);
    }
}
