package org.chromium.base;

import android.support.v4.lo0;

@lo0("base::android")
/* loaded from: classes3.dex */
public class ImportantFileWriterAndroid {

    public interface Natives {
        boolean writeFileAtomically(String str, byte[] bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public static boolean m36821do(String str, byte[] bArr) {
        return Cclass.m37016if().writeFileAtomically(str, bArr);
    }
}
