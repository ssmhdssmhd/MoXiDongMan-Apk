package com.google.zxing.oned.rss.expanded.decoders;

import android.support.v4.w8;
import org.mozilla.javascript.v8dtoa.FastDtoa;

/* renamed from: com.google.zxing.oned.rss.expanded.decoders.this, reason: invalid class name */
/* loaded from: classes2.dex */
abstract class Cthis extends Cgoto {
    public Cthis(w8 w8Var) {
        super(w8Var);
    }

    /* renamed from: break, reason: not valid java name */
    public final void m22086break(StringBuilder sb, int i, int i2) {
        int iM22080case = m22043if().m22080case(i, i2);
        mo22056goto(sb, iM22080case);
        int iMo22057this = mo22057this(iM22080case);
        int i3 = FastDtoa.kTen5;
        for (int i4 = 0; i4 < 5; i4++) {
            if (iMo22057this / i3 == 0) {
                sb.append('0');
            }
            i3 /= 10;
        }
        sb.append(iMo22057this);
    }

    /* renamed from: goto */
    public abstract void mo22056goto(StringBuilder sb, int i);

    /* renamed from: this */
    public abstract int mo22057this(int i);
}
