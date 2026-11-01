package android.support.v4;

import java.util.ArrayList;

/* loaded from: classes2.dex */
public final class q0 extends xn1 {
    /* renamed from: while, reason: not valid java name */
    private static String[] m6289while(String str, int i, String str2, boolean z) {
        ArrayList arrayList = null;
        for (int i2 = 1; i2 <= i; i2++) {
            String strM9546else = xn1.m9546else(str + i2 + ':', str2, wk.f7547for, z);
            if (strM9546else == null) {
                break;
            }
            if (arrayList == null) {
                arrayList = new ArrayList(i);
            }
            arrayList.add(strM9546else);
        }
        if (arrayList == null) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    @Override // android.support.v4.xn1
    /* renamed from: import, reason: not valid java name and merged with bridge method [inline-methods] */
    public r0 mo243catch(wn1 wn1Var) {
        String strM9548for = xn1.m9548for(wn1Var);
        if (!strM9548for.contains("MEMORY") || !strM9548for.contains("\r\n")) {
            return null;
        }
        String strM9546else = xn1.m9546else("NAME1:", strM9548for, wk.f7547for, true);
        String strM9546else2 = xn1.m9546else("NAME2:", strM9548for, wk.f7547for, true);
        String[] strArrM6289while = m6289while("TEL", 3, strM9548for, true);
        String[] strArrM6289while2 = m6289while("MAIL", 3, strM9548for, true);
        String strM9546else3 = xn1.m9546else("MEMORY:", strM9548for, wk.f7547for, false);
        String strM9546else4 = xn1.m9546else("ADD:", strM9548for, wk.f7547for, true);
        return new r0(xn1.m9541break(strM9546else), null, strM9546else2, strArrM6289while, null, strArrM6289while2, null, null, strM9546else3, strM9546else4 != null ? new String[]{strM9546else4} : null, null, null, null, null, null, null);
    }
}
