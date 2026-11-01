package com.google.zxing.oned.rss.expanded.decoders;

import android.support.v4.j41;
import android.support.v4.w8;
import org.mozilla.javascript.v8dtoa.FastDtoa;

/* renamed from: com.google.zxing.oned.rss.expanded.decoders.try, reason: invalid class name */
/* loaded from: classes2.dex */
final class Ctry extends Cthis {

    /* renamed from: case, reason: not valid java name */
    private static final int f17710case = 8;

    /* renamed from: else, reason: not valid java name */
    private static final int f17711else = 20;

    /* renamed from: goto, reason: not valid java name */
    private static final int f17712goto = 16;

    /* renamed from: new, reason: not valid java name */
    private final String f17713new;

    /* renamed from: try, reason: not valid java name */
    private final String f17714try;

    public Ctry(w8 w8Var, String str, String str2) {
        super(w8Var);
        this.f17713new = str2;
        this.f17714try = str;
    }

    /* renamed from: catch, reason: not valid java name */
    private void m22093catch(StringBuilder sb, int i) {
        int iM22080case = m22043if().m22080case(i, 16);
        if (iM22080case == 38400) {
            return;
        }
        sb.append('(');
        sb.append(this.f17713new);
        sb.append(')');
        int i2 = iM22080case % 32;
        int i3 = iM22080case / 32;
        int i4 = (i3 % 12) + 1;
        int i5 = i3 / 12;
        if (i5 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i5);
        if (i4 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i4);
        if (i2 / 10 == 0) {
            sb.append('0');
        }
        sb.append(i2);
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.Cthis
    /* renamed from: goto */
    public void mo22056goto(StringBuilder sb, int i) {
        sb.append('(');
        sb.append(this.f17714try);
        sb.append(i / FastDtoa.kTen5);
        sb.append(')');
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.Cbreak
    /* renamed from: new */
    public String mo22044new() throws j41 {
        if (m22042for().m9078class() != 84) {
            throw j41.getNotFoundInstance();
        }
        StringBuilder sb = new StringBuilder();
        m22061case(sb, 8);
        m22086break(sb, 48, 20);
        m22093catch(sb, 68);
        return sb.toString();
    }

    @Override // com.google.zxing.oned.rss.expanded.decoders.Cthis
    /* renamed from: this */
    public int mo22057this(int i) {
        return i % FastDtoa.kTen5;
    }
}
