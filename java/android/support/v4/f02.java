package android.support.v4;

import org.bouncycastle.crypto.ExtendedDigest;
import org.bouncycastle.crypto.digests.Cif;
import org.bouncycastle.crypto.params.Ccase;
import org.bouncycastle.util.Memoable;

/* loaded from: classes3.dex */
public class f02 implements ExtendedDigest, Memoable {

    /* renamed from: for, reason: not valid java name */
    public static final int f1648for = 512;

    /* renamed from: if, reason: not valid java name */
    public static final int f1649if = 256;

    /* renamed from: new, reason: not valid java name */
    public static final int f1650new = 1024;

    /* renamed from: do, reason: not valid java name */
    private Cif f1651do;

    public f02(int i, int i2) throws IllegalStateException, tw {
        this.f1651do = new Cif(i, i2);
        m2085do(null);
    }

    public f02(f02 f02Var) {
        this.f1651do = new Cif(f02Var.f1651do);
    }

    @Override // org.bouncycastle.util.Memoable
    public Memoable copy() {
        return new f02(this);
    }

    /* renamed from: do, reason: not valid java name */
    public void m2085do(Ccase ccase) throws IllegalStateException, tw {
        this.f1651do.m33325goto(ccase);
    }

    @Override // org.bouncycastle.crypto.Digest
    public int doFinal(byte[] bArr, int i) {
        return this.f1651do.m33327try(bArr, i);
    }

    @Override // org.bouncycastle.crypto.Digest
    public String getAlgorithmName() {
        return "Skein-" + (this.f1651do.m33322case() * 8) + "-" + (this.f1651do.m33324else() * 8);
    }

    @Override // org.bouncycastle.crypto.ExtendedDigest
    public int getByteLength() {
        return this.f1651do.m33322case();
    }

    @Override // org.bouncycastle.crypto.Digest
    public int getDigestSize() {
        return this.f1651do.m33324else();
    }

    @Override // org.bouncycastle.crypto.Digest
    public void reset() {
        this.f1651do.m33323class();
    }

    @Override // org.bouncycastle.util.Memoable
    public void reset(Memoable memoable) {
        this.f1651do.reset(((f02) memoable).f1651do);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte b) throws IllegalStateException, tw {
        this.f1651do.m33328while(b);
    }

    @Override // org.bouncycastle.crypto.Digest
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        this.f1651do.m33326import(bArr, i, i2);
    }
}
