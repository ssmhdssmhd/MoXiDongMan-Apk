package com.google.zxing.oned.rss.expanded.decoders;

import android.support.v4.j41;
import android.support.v4.ld0;
import android.support.v4.w8;

/* renamed from: com.google.zxing.oned.rss.expanded.decoders.new, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cnew extends Cgoto {

    /* renamed from: case, reason: not valid java name */
    private static final int f17701case = 10;

    /* renamed from: new, reason: not valid java name */
    private static final int f17702new = 8;

    /* renamed from: try, reason: not valid java name */
    private static final int f17703try = 2;

    public Cnew(w8 w8Var) {
        super(w8Var);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.Cbreak
    /* renamed from: new */
    public String mo22044new() throws ld0, j41 {
        if (m22042for().m9078class() < 48) {
            throw j41.getNotFoundInstance();
        }
        StringBuilder sb = new StringBuilder();
        m22061case(sb, 8);
        int iM22080case = m22043if().m22080case(48, 2);
        sb.append("(393");
        sb.append(iM22080case);
        sb.append(')');
        int iM22080case2 = m22043if().m22080case(50, 10);
        if (iM22080case2 / 100 == 0) {
            sb.append('0');
        }
        if (iM22080case2 / 10 == 0) {
            sb.append('0');
        }
        sb.append(iM22080case2);
        sb.append(m22043if().m22082for(60, null).m22084if());
        return sb.toString();
    }
}
