package org.bouncycastle.crypto.macs;

import android.support.v4.bc1;
import android.support.v4.gr0;
import android.support.v4.tn0;
import android.support.v4.tw;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.modes.Ccatch;

/* renamed from: org.bouncycastle.crypto.macs.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements Mac {

    /* renamed from: do, reason: not valid java name */
    private final Ccatch f29962do;

    /* renamed from: if, reason: not valid java name */
    private final int f29963if;

    public Cnew(Ccatch ccatch) {
        this.f29962do = ccatch;
        this.f29963if = 128;
    }

    public Cnew(Ccatch ccatch, int i) {
        this.f29962do = ccatch;
        this.f29963if = i;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
        try {
            return this.f29962do.doFinal(bArr, i);
        } catch (tn0 e) {
            throw new IllegalStateException(e.toString());
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.f29962do.getUnderlyingCipher().getAlgorithmName() + "-GMAC";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f29963if / 8;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalStateException, tw, IllegalArgumentException {
        if (!(cipherParameters instanceof bc1)) {
            throw new IllegalArgumentException("GMAC requires ParametersWithIV");
        }
        bc1 bc1Var = (bc1) cipherParameters;
        byte[] bArrM514do = bc1Var.m514do();
        this.f29962do.init(true, new android.support.v4.Cnew((gr0) bc1Var.m515if(), this.f29963if, bArrM514do));
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        this.f29962do.reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException {
        this.f29962do.processAADByte(b);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        this.f29962do.processAADBytes(bArr, i, i2);
    }
}
