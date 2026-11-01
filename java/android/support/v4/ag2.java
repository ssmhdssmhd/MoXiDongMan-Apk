package android.support.v4;

/* loaded from: classes2.dex */
public final class ag2 extends xn1 {
    @Override // android.support.v4.xn1
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public zf2 mo243catch(wn1 wn1Var) {
        String strSubstring;
        String strM9546else;
        String strM9548for = xn1.m9548for(wn1Var);
        if (!strM9548for.startsWith("WIFI:") || (strM9546else = xn1.m9546else("S:", (strSubstring = strM9548for.substring(5)), ';', false)) == null || strM9546else.isEmpty()) {
            return null;
        }
        String strM9546else2 = xn1.m9546else("P:", strSubstring, ';', false);
        String strM9546else3 = xn1.m9546else("T:", strSubstring, ';', false);
        if (strM9546else3 == null) {
            strM9546else3 = "nopass";
        }
        return new zf2(strM9546else3, strM9546else, strM9546else2, Boolean.parseBoolean(xn1.m9546else("H:", strSubstring, ';', false)), xn1.m9546else("I:", strSubstring, ';', false), xn1.m9546else("A:", strSubstring, ';', false), xn1.m9546else("E:", strSubstring, ';', false), xn1.m9546else("H:", strSubstring, ';', false));
    }
}
