package com.google.zxing.oned.rss.expanded.decoders;

import android.support.v4.w8;
import org.mozilla.javascript.v8dtoa.FastDtoa;

/* renamed from: com.google.zxing.oned.rss.expanded.decoders.if, reason: invalid class name */
/* loaded from: classes2.dex */
final class Cif extends Ccase {
    public Cif(w8 w8Var) {
        super(w8Var);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.Cthis
    /* renamed from: goto */
    public void mo22056goto(StringBuilder sb, int i) {
        if (i < 10000) {
            sb.append("(3202)");
        } else {
            sb.append("(3203)");
        }
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.Cthis
    /* renamed from: this */
    public int mo22057this(int i) {
        return i < 10000 ? i : i - FastDtoa.kTen4;
    }
}
