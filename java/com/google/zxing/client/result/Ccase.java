package com.google.zxing.client.result;

import android.support.v4.s60;
import android.support.v4.wn1;
import android.support.v4.xn1;
import java.util.regex.Pattern;

/* renamed from: com.google.zxing.client.result.case, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Ccase extends Cdo {

    /* renamed from: case, reason: not valid java name */
    private static final Pattern f17434case = Pattern.compile("[a-zA-Z0-9@.!#$%&'*+\\-/=?^_`{|}~]+");

    /* renamed from: native, reason: not valid java name */
    public static boolean m21783native(String str) {
        return str != null && f17434case.matcher(str).matches() && str.indexOf(64) >= 0;
    }

    @Override // android.support.v4.xn1
    /* renamed from: public, reason: not valid java name and merged with bridge method [inline-methods] */
    public s60 mo243catch(wn1 wn1Var) {
        String[] strArrM21786while;
        String strM9548for = xn1.m9548for(wn1Var);
        if (!strM9548for.startsWith("MATMSG:") || (strArrM21786while = Cdo.m21786while("TO:", strM9548for, true)) == null) {
            return null;
        }
        for (String str : strArrM21786while) {
            if (!m21783native(str)) {
                return null;
            }
        }
        return new s60(strArrM21786while, null, null, Cdo.m21785import("SUB:", strM9548for, false), Cdo.m21785import("BODY:", strM9548for, false));
    }
}
