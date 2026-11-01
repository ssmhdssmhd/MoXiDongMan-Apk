package org.bouncycastle.pqc.crypto.xmss;

import java.util.Objects;
import org.bouncycastle.crypto.Digest;

/* renamed from: org.bouncycastle.pqc.crypto.xmss.catch, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ccatch {

    /* renamed from: case, reason: not valid java name */
    private final int f32395case;

    /* renamed from: do, reason: not valid java name */
    private final XMSSOid f32396do;

    /* renamed from: else, reason: not valid java name */
    private final int f32397else;

    /* renamed from: for, reason: not valid java name */
    private final int f32398for;

    /* renamed from: if, reason: not valid java name */
    private final Digest f32399if;

    /* renamed from: new, reason: not valid java name */
    private final int f32400new;

    /* renamed from: try, reason: not valid java name */
    private final int f32401try;

    public Ccatch(Digest digest) {
        Objects.requireNonNull(digest, "digest == null");
        this.f32399if = digest;
        int iM36064break = Cvolatile.m36064break(digest);
        this.f32398for = iM36064break;
        this.f32400new = 16;
        double d = iM36064break * 8;
        double dM36083while = Cvolatile.m36083while(16);
        Double.isNaN(d);
        Double.isNaN(dM36083while);
        int iCeil = (int) Math.ceil(d / dM36083while);
        this.f32395case = iCeil;
        int iFloor = ((int) Math.floor(Cvolatile.m36083while((16 - 1) * iCeil) / Cvolatile.m36083while(16))) + 1;
        this.f32397else = iFloor;
        int i = iCeil + iFloor;
        this.f32401try = i;
        Cbreak cbreakM35835if = Cbreak.m35835if(digest.getAlgorithmName(), iM36064break, 16, i);
        this.f32396do = cbreakM35835if;
        if (cbreakM35835if != null) {
            return;
        }
        throw new IllegalArgumentException("cannot find OID for digest algorithm: " + digest.getAlgorithmName());
    }

    /* renamed from: case, reason: not valid java name */
    public XMSSOid m35841case() {
        return this.f32396do;
    }

    /* renamed from: do, reason: not valid java name */
    public Digest m35842do() {
        return this.f32399if;
    }

    /* renamed from: else, reason: not valid java name */
    public int m35843else() {
        return this.f32400new;
    }

    /* renamed from: for, reason: not valid java name */
    public int m35844for() {
        return this.f32401try;
    }

    /* renamed from: if, reason: not valid java name */
    public int m35845if() {
        return this.f32398for;
    }

    /* renamed from: new, reason: not valid java name */
    public int m35846new() {
        return this.f32395case;
    }

    /* renamed from: try, reason: not valid java name */
    public int m35847try() {
        return this.f32397else;
    }
}
