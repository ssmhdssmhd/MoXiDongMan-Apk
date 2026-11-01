package org.bouncycastle.crypto.engines;

import android.support.v4.bc1;
import android.support.v4.cc1;
import android.support.v4.dc1;
import android.support.v4.fc1;
import android.support.v4.gr0;
import android.support.v4.mf0;
import android.support.v4.q3;
import android.support.v4.tn0;
import android.support.v4.tw;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Wrapper;
import org.bouncycastle.crypto.macs.Ctry;

/* renamed from: org.bouncycastle.crypto.engines.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto implements Wrapper {

    /* renamed from: do, reason: not valid java name */
    private mf0 f29707do = new mf0();

    /* renamed from: if, reason: not valid java name */
    private Ctry f29708if = new Ctry();

    @Override // org.bouncycastle.crypto.Wrapper
    public String getAlgorithmName() {
        return "GOST28147Wrap";
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public void init(boolean z, CipherParameters cipherParameters) throws IllegalArgumentException {
        if (cipherParameters instanceof cc1) {
            cipherParameters = ((cc1) cipherParameters).m846do();
        }
        fc1 fc1Var = (fc1) cipherParameters;
        this.f29707do.init(z, fc1Var.m2244do());
        this.f29708if.init(new bc1((gr0) (fc1Var.m2244do() instanceof dc1 ? ((dc1) fc1Var.m2244do()).m1262do() : fc1Var.m2244do()), fc1Var.m2245if()));
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] unwrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw, tn0 {
        int macSize = i2 - this.f29708if.getMacSize();
        byte[] bArr2 = new byte[macSize];
        this.f29707do.processBlock(bArr, i, bArr2, 0);
        this.f29707do.processBlock(bArr, i + 8, bArr2, 8);
        this.f29707do.processBlock(bArr, i + 16, bArr2, 16);
        this.f29707do.processBlock(bArr, i + 24, bArr2, 24);
        byte[] bArr3 = new byte[this.f29708if.getMacSize()];
        this.f29708if.update(bArr2, 0, macSize);
        this.f29708if.doFinal(bArr3, 0);
        byte[] bArr4 = new byte[this.f29708if.getMacSize()];
        System.arraycopy(bArr, (i + i2) - 4, bArr4, 0, this.f29708if.getMacSize());
        if (q3.m6360abstract(bArr3, bArr4)) {
            return bArr2;
        }
        throw new IllegalStateException("mac mismatch");
    }

    @Override // org.bouncycastle.crypto.Wrapper
    public byte[] wrap(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        this.f29708if.update(bArr, i, i2);
        byte[] bArr2 = new byte[this.f29708if.getMacSize() + i2];
        this.f29707do.processBlock(bArr, i, bArr2, 0);
        this.f29707do.processBlock(bArr, i + 8, bArr2, 8);
        this.f29707do.processBlock(bArr, i + 16, bArr2, 16);
        this.f29707do.processBlock(bArr, i + 24, bArr2, 24);
        this.f29708if.doFinal(bArr2, i2);
        return bArr2;
    }
}
