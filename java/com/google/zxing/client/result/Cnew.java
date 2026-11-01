package com.google.zxing.client.result;

import android.support.v4.wn1;
import android.support.v4.xa2;
import android.support.v4.ya2;

/* renamed from: com.google.zxing.client.result.new, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cnew extends Cdo {
    @Override // android.support.v4.xn1
    /* renamed from: native, reason: not valid java name and merged with bridge method [inline-methods] */
    public xa2 mo243catch(wn1 wn1Var) {
        String strM9245else = wn1Var.m9245else();
        if (!strM9245else.startsWith("MEBKM:")) {
            return null;
        }
        String strM21785import = Cdo.m21785import("TITLE:", strM9245else, true);
        String[] strArrM21786while = Cdo.m21786while("URL:", strM9245else, true);
        if (strArrM21786while == null) {
            return null;
        }
        String str = strArrM21786while[0];
        if (ya2.m9800while(str)) {
            return new xa2(str, strM21785import);
        }
        return null;
    }
}
