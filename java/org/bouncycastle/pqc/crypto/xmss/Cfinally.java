package org.bouncycastle.pqc.crypto.xmss;

import android.support.v4.zy;
import java.util.Objects;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.finally, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cfinally {

    /* renamed from: do, reason: not valid java name */
    private final XMSSOid f32418do;

    /* renamed from: for, reason: not valid java name */
    private final int f32419for;

    /* renamed from: if, reason: not valid java name */
    private final Cthis f32420if;

    /* renamed from: new, reason: not valid java name */
    private final int f32421new;

    public Cfinally(int i, Digest digest) {
        if (i < 2) {
            throw new IllegalArgumentException("height must be >= 2");
        }
        Objects.requireNonNull(digest, "digest == null");
        Cthis cthis = new Cthis(new Ccatch(digest));
        this.f32420if = cthis;
        this.f32419for = i;
        this.f32421new = m35879do();
        this.f32418do = zy.m10326if(m35883if().getAlgorithmName(), m35882for(), m35881else(), cthis.m36042try().m35844for(), i);
    }

    /* renamed from: do, reason: not valid java name */
    private int m35879do() {
        int i = 2;
        while (true) {
            int i2 = this.f32419for;
            if (i > i2) {
                throw new IllegalStateException("should never happen...");
            }
            if ((i2 - i) % 2 == 0) {
                return i;
            }
            i++;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public Cthis m35880case() {
        return this.f32420if;
    }

    /* renamed from: else, reason: not valid java name */
    public int m35881else() {
        return this.f32420if.m36042try().m35843else();
    }

    /* renamed from: for, reason: not valid java name */
    public int m35882for() {
        return this.f32420if.m36042try().m35845if();
    }

    /* renamed from: if, reason: not valid java name */
    public Digest m35883if() {
        return this.f32420if.m36042try().m35842do();
    }

    /* renamed from: new, reason: not valid java name */
    public int m35884new() {
        return this.f32419for;
    }

    /* renamed from: try, reason: not valid java name */
    public int m35885try() {
        return this.f32421new;
    }
}
