package org.bouncycastle.crypto.macs;

import android.support.v4.Cnew;
import android.support.v4.bc1;
import android.support.v4.gr0;
import android.support.v4.tn0;
import android.support.v4.tw;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.modes.Cthrow;

/* renamed from: org.bouncycastle.crypto.macs.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase implements Mac {

    /* renamed from: do, reason: not valid java name */
    private final Cthrow f29900do;

    /* renamed from: if, reason: not valid java name */
    private final int f29901if;

    public Ccase(Cthrow cthrow) {
        this.f29900do = cthrow;
        this.f29901if = cthrow.getUnderlyingCipher().getBlockSize() * 8;
    }

    public Ccase(Cthrow cthrow, int i) {
        this.f29900do = cthrow;
        this.f29901if = i;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
        try {
            return this.f29900do.doFinal(bArr, i);
        } catch (tn0 e) {
            throw new IllegalStateException(e.toString());
        }
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        return this.f29900do.getUnderlyingCipher().getAlgorithmName() + "-KGMAC";
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return this.f29901if / 8;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalArgumentException {
        if (!(cipherParameters instanceof bc1)) {
            throw new IllegalArgumentException("KGMAC requires ParametersWithIV");
        }
        bc1 bc1Var = (bc1) cipherParameters;
        byte[] bArrM514do = bc1Var.m514do();
        this.f29900do.init(true, new Cnew((gr0) bc1Var.m515if(), this.f29901if, bArrM514do));
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        this.f29900do.reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException {
        this.f29900do.processAADByte(b);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        this.f29900do.processAADBytes(bArr, i, i2);
    }
}
