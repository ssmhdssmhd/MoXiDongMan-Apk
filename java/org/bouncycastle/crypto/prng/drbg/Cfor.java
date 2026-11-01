package org.bouncycastle.crypto.prng.drbg;

import android.support.v4.gr0;
import android.support.v4.q3;
import android.support.v4.tw;
import org.bouncycastle.crypto.Mac;
import org.bouncycastle.crypto.prng.EntropySource;

/* renamed from: org.bouncycastle.crypto.prng.drbg.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements SP80090DRBG {

    /* renamed from: else, reason: not valid java name */
    private static final long f30276else = 140737488355328L;

    /* renamed from: goto, reason: not valid java name */
    private static final int f30277goto = 262144;

    /* renamed from: case, reason: not valid java name */
    private int f30278case;

    /* renamed from: do, reason: not valid java name */
    private byte[] f30279do;

    /* renamed from: for, reason: not valid java name */
    private long f30280for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f30281if;

    /* renamed from: new, reason: not valid java name */
    private EntropySource f30282new;

    /* renamed from: try, reason: not valid java name */
    private Mac f30283try;

    public Cfor(Mac mac, int i, EntropySource entropySource, byte[] bArr, byte[] bArr2) throws IllegalStateException, tw, IllegalArgumentException {
        if (i > Ctry.m33892if(mac)) {
            throw new IllegalArgumentException("Requested security strength is not supported by the derivation function");
        }
        if (entropySource.entropySize() < i) {
            throw new IllegalArgumentException("Not enough entropy for security strength required");
        }
        this.f30278case = i;
        this.f30282new = entropySource;
        this.f30283try = mac;
        byte[] bArrM6370extends = q3.m6370extends(m33878do(), bArr2, bArr);
        byte[] bArr3 = new byte[mac.getMacSize()];
        this.f30279do = bArr3;
        byte[] bArr4 = new byte[bArr3.length];
        this.f30281if = bArr4;
        q3.c(bArr4, (byte) 1);
        m33880if(bArrM6370extends);
        this.f30280for = 1L;
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m33878do() {
        byte[] entropy = this.f30282new.getEntropy();
        if (entropy.length >= (this.f30278case + 7) / 8) {
            return entropy;
        }
        throw new IllegalStateException("Insufficient entropy provided by entropy source");
    }

    /* renamed from: for, reason: not valid java name */
    private void m33879for(byte[] bArr, byte b) throws IllegalStateException, tw, IllegalArgumentException {
        this.f30283try.init(new gr0(this.f30279do));
        Mac mac = this.f30283try;
        byte[] bArr2 = this.f30281if;
        mac.update(bArr2, 0, bArr2.length);
        this.f30283try.update(b);
        if (bArr != null) {
            this.f30283try.update(bArr, 0, bArr.length);
        }
        this.f30283try.doFinal(this.f30279do, 0);
        this.f30283try.init(new gr0(this.f30279do));
        Mac mac2 = this.f30283try;
        byte[] bArr3 = this.f30281if;
        mac2.update(bArr3, 0, bArr3.length);
        this.f30283try.doFinal(this.f30281if, 0);
    }

    /* renamed from: if, reason: not valid java name */
    private void m33880if(byte[] bArr) throws IllegalStateException, tw, IllegalArgumentException {
        m33879for(bArr, (byte) 0);
        if (bArr != null) {
            m33879for(bArr, (byte) 1);
        }
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public int generate(byte[] bArr, byte[] bArr2, boolean z) throws IllegalStateException, tw, IllegalArgumentException {
        int length = bArr.length * 8;
        if (length > 262144) {
            throw new IllegalArgumentException("Number of bits per request limited to 262144");
        }
        if (this.f30280for > f30276else) {
            return -1;
        }
        if (z) {
            reseed(bArr2);
            bArr2 = null;
        }
        if (bArr2 != null) {
            m33880if(bArr2);
        }
        int length2 = bArr.length;
        byte[] bArr3 = new byte[length2];
        int length3 = bArr.length / this.f30281if.length;
        this.f30283try.init(new gr0(this.f30279do));
        for (int i = 0; i < length3; i++) {
            Mac mac = this.f30283try;
            byte[] bArr4 = this.f30281if;
            mac.update(bArr4, 0, bArr4.length);
            this.f30283try.doFinal(this.f30281if, 0);
            byte[] bArr5 = this.f30281if;
            System.arraycopy(bArr5, 0, bArr3, bArr5.length * i, bArr5.length);
        }
        byte[] bArr6 = this.f30281if;
        if (bArr6.length * length3 < length2) {
            this.f30283try.update(bArr6, 0, bArr6.length);
            this.f30283try.doFinal(this.f30281if, 0);
            byte[] bArr7 = this.f30281if;
            System.arraycopy(bArr7, 0, bArr3, bArr7.length * length3, length2 - (length3 * bArr7.length));
        }
        m33880if(bArr2);
        this.f30280for++;
        System.arraycopy(bArr3, 0, bArr, 0, bArr.length);
        return length;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public int getBlockSize() {
        return this.f30281if.length * 8;
    }

    @Override // org.bouncycastle.crypto.prng.drbg.SP80090DRBG
    public void reseed(byte[] bArr) throws IllegalStateException, tw, IllegalArgumentException {
        m33880if(q3.m6367default(m33878do(), bArr));
        this.f30280for = 1L;
    }
}
