package com.google.zxing.client.result;

import android.support.v4.r0;
import android.support.v4.wn1;
import android.support.v4.xn1;
import java.util.ArrayList;

/* renamed from: com.google.zxing.client.result.for, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cfor extends Cdo {
    /* renamed from: native, reason: not valid java name */
    private static String m21787native(String str, String str2) {
        if (str == null) {
            return str2;
        }
        if (str2 == null) {
            return str;
        }
        return str + ' ' + str2;
    }

    /* renamed from: public, reason: not valid java name */
    private static String[] m21788public(String str, String str2, String str3) {
        ArrayList arrayList = new ArrayList(3);
        if (str != null) {
            arrayList.add(str);
        }
        if (str2 != null) {
            arrayList.add(str2);
        }
        if (str3 != null) {
            arrayList.add(str3);
        }
        int size = arrayList.size();
        if (size == 0) {
            return null;
        }
        return (String[]) arrayList.toArray(new String[size]);
    }

    @Override // android.support.v4.xn1
    /* renamed from: return, reason: not valid java name and merged with bridge method [inline-methods] */
    public r0 mo243catch(wn1 wn1Var) {
        String strM9548for = xn1.m9548for(wn1Var);
        if (!strM9548for.startsWith("BIZCARD:")) {
            return null;
        }
        String strM21787native = m21787native(Cdo.m21785import("N:", strM9548for, true), Cdo.m21785import("X:", strM9548for, true));
        String strM21785import = Cdo.m21785import("T:", strM9548for, true);
        String strM21785import2 = Cdo.m21785import("C:", strM9548for, true);
        return new r0(xn1.m9541break(strM21787native), null, null, m21788public(Cdo.m21785import("B:", strM9548for, true), Cdo.m21785import("M:", strM9548for, true), Cdo.m21785import("F:", strM9548for, true)), null, xn1.m9541break(Cdo.m21785import("E:", strM9548for, true)), null, null, null, Cdo.m21786while("A:", strM9548for, true), null, strM21785import2, null, strM21785import, null, null);
    }
}
