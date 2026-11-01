package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.yy;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.public, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cpublic {

    /* renamed from: do, reason: not valid java name */
    private final XMSSOid f32460do;

    /* renamed from: for, reason: not valid java name */
    private final int f32461for;

    /* renamed from: if, reason: not valid java name */
    private final Cfinally f32462if;

    /* renamed from: new, reason: not valid java name */
    private final int f32463new;

    public Cpublic(int i, int i2, Digest digest) {
        this.f32461for = i;
        this.f32463new = i2;
        this.f32462if = new Cfinally(m35951this(i, i2), digest);
        this.f32460do = yy.m9992if(m35953do().getAlgorithmName(), m35957if(), m35954else(), m35959try(), m35955for(), i2);
    }

    /* renamed from: this, reason: not valid java name */
    private static int m35951this(int i, int i2) throws IllegalArgumentException {
        if (i < 2) {
            throw new IllegalArgumentException("totalHeight must be > 1");
        }
        if (i % i2 != 0) {
            throw new IllegalArgumentException("layers must divide totalHeight without remainder");
        }
        int i3 = i / i2;
        if (i3 != 1) {
            return i3;
        }
        throw new IllegalArgumentException("height / layers must be greater than 1");
    }

    /* renamed from: case, reason: not valid java name */
    public Cthis m35952case() {
        return this.f32462if.m35880case();
    }

    /* renamed from: do, reason: not valid java name */
    public Digest m35953do() {
        return this.f32462if.m35883if();
    }

    /* renamed from: else, reason: not valid java name */
    public int m35954else() {
        return this.f32462if.m35881else();
    }

    /* renamed from: for, reason: not valid java name */
    public int m35955for() {
        return this.f32461for;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cfinally m35956goto() {
        return this.f32462if;
    }

    /* renamed from: if, reason: not valid java name */
    public int m35957if() {
        return this.f32462if.m35882for();
    }

    /* renamed from: new, reason: not valid java name */
    public int m35958new() {
        return this.f32463new;
    }

    /* renamed from: try, reason: not valid java name */
    public int m35959try() {
        return this.f32462if.m35880case().m36042try().m35844for();
    }
}
