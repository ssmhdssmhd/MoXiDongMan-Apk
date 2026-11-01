package org.bouncycastle.pqc.crypto.mceliece;

import android.support.v4.bq1;
import android.support.v4.qy0;
import android.support.v4.wp1;
import android.support.v4.xp1;
import android.support.v4.yp1;
import android.support.v4.zp1;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.pqc.crypto.mceliece.else, reason: invalid class name */
/* loaded from: classes3.dex */
class Celse {
    /* renamed from: do, reason: not valid java name */
    public static Digest m35624do(String str) {
        if (str.equals(qy0.f5539case)) {
            return new wp1();
        }
        if (str.equals(qy0.f5542else)) {
            return new xp1();
        }
        if (str.equals("SHA-256")) {
            return new yp1();
        }
        if (str.equals(qy0.f5544this)) {
            return new zp1();
        }
        if (str.equals("SHA-512")) {
            return new bq1();
        }
        throw new IllegalArgumentException("unrecognised digest algorithm: " + str);
    }
}
