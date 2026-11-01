package org.bouncycastle.crypto.macs;

import android.support.v4.gr0;
import android.support.v4.tw;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.digests.Cif;
import org.bouncycastle.crypto.params.Ccase;

/* renamed from: org.bouncycastle.crypto.macs.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak implements Mac {

    /* renamed from: for, reason: not valid java name */
    public static final int f29896for = 512;

    /* renamed from: if, reason: not valid java name */
    public static final int f29897if = 256;

    /* renamed from: new, reason: not valid java name */
    public static final int f29898new = 1024;

    /* renamed from: do, reason: not valid java name */
    private Cif f29899do;

    public Cbreak(int i, int i2) {
        this.f29899do = new Cif(i, i2);
    }

    public Cbreak(Cbreak cbreak) {
        this.f29899do = new Cif(cbreak.f29899do);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) {
        return this.f29899do.m33327try(bArr, i);
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return "Skein-MAC-" + (this.f29899do.m33322case() * 8) + "-" + (this.f29899do.m33324else() * 8);
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f29899do.m33324else();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalStateException, tw, IllegalArgumentException {
        Ccase ccaseM33812do;
        if (cipherParameters instanceof Ccase) {
            ccaseM33812do = (Ccase) cipherParameters;
        } else {
            if (!(cipherParameters instanceof gr0)) {
                throw new IllegalArgumentException("Invalid parameter passed to Skein MAC init - " + cipherParameters.getClass().getName());
            }
            ccaseM33812do = new Ccase.Cif().m33814for(((gr0) cipherParameters).m2770do()).m33812do();
        }
        if (ccaseM33812do.m33808if() == null) {
            throw new IllegalArgumentException("Skein MAC requires a key parameter.");
        }
        this.f29899do.m33325goto(ccaseM33812do);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        this.f29899do.m33323class();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException, tw {
        this.f29899do.m33328while(b);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        this.f29899do.m33326import(bArr, i, i2);
    }
}
