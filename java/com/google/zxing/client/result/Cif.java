package com.google.zxing.client.result;

import android.support.v4.r0;
import android.support.v4.wn1;
import android.support.v4.xn1;

/* renamed from: com.google.zxing.client.result.if, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cif extends Cdo {
    /* renamed from: public, reason: not valid java name */
    private static String m21790public(String str) {
        int iIndexOf = str.indexOf(44);
        if (iIndexOf < 0) {
            return str;
        }
        return str.substring(iIndexOf + 1) + ' ' + str.substring(0, iIndexOf);
    }

    @Override // android.support.v4.xn1
    /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
    public r0 mo243catch(wn1 wn1Var) {
        String[] strArrM21786while;
        String strM9548for = xn1.m9548for(wn1Var);
        if (!strM9548for.startsWith("MECARD:") || (strArrM21786while = Cdo.m21786while("N:", strM9548for, true)) == null) {
            return null;
        }
        String strM21790public = m21790public(strArrM21786while[0]);
        String strM21785import = Cdo.m21785import("SOUND:", strM9548for, true);
        String[] strArrM21786while2 = Cdo.m21786while("TEL:", strM9548for, true);
        String[] strArrM21786while3 = Cdo.m21786while("EMAIL:", strM9548for, true);
        String strM21785import2 = Cdo.m21785import("NOTE:", strM9548for, false);
        String[] strArrM21786while4 = Cdo.m21786while("ADR:", strM9548for, true);
        String strM21785import3 = Cdo.m21785import("BDAY:", strM9548for, true);
        return new r0(xn1.m9541break(strM21790public), null, strM21785import, strArrM21786while2, null, strArrM21786while3, null, null, strM21785import2, strArrM21786while4, null, Cdo.m21785import("ORG:", strM9548for, true), !xn1.m9551new(strM21785import3, 8) ? null : strM21785import3, null, Cdo.m21786while("URL:", strM9548for, true), null);
    }
}
