package org.bouncycastle.pqc.crypto.sphincs;

import android.support.v4.ar1;
import android.support.v4.br1;
import android.support.v4.cc1;
import android.support.v4.ib1;
import android.support.v4.tw;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.pqc.crypto.MessageSigner;
import org.bouncycastle.pqc.crypto.sphincs.Cgoto;

/* renamed from: org.bouncycastle.pqc.crypto.sphincs.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase implements MessageSigner {

    /* renamed from: do, reason: not valid java name */
    private final Cdo f32335do;

    /* renamed from: if, reason: not valid java name */
    private byte[] f32336if;

    public Ccase(Digest digest, Digest digest2) {
        if (digest.getDigestSize() != 32) {
            throw new IllegalArgumentException("n-digest needs to produce 32 bytes of output");
        }
        if (digest2.getDigestSize() != 64) {
            throw new IllegalArgumentException("2n-digest needs to produce 64 bytes of output");
        }
        this.f32335do = new Cdo(digest, digest2);
    }

    /* renamed from: do, reason: not valid java name */
    public static void m35775do(Cdo cdo, byte[] bArr, byte[] bArr2, int i, Cgoto.Cdo cdo2, byte[] bArr3, byte[] bArr4, int i2) {
        Cgoto.Cdo cdo3 = new Cgoto.Cdo(cdo2);
        byte[] bArr5 = new byte[2048];
        byte[] bArr6 = new byte[1024];
        byte[] bArr7 = new byte[68608];
        cdo3.f32343for = 0L;
        while (true) {
            long j = cdo3.f32343for;
            if (j >= 32) {
                break;
            }
            Celse.m35786do(cdo, bArr6, (int) (j * 32), bArr3, cdo3);
            cdo3.f32343for++;
        }
        Cthis cthis = new Cthis();
        cdo3.f32343for = 0L;
        while (true) {
            long j2 = cdo3.f32343for;
            if (j2 >= 32) {
                break;
            }
            cthis.m35801new(cdo, bArr7, (int) (67 * j2 * 32), bArr6, (int) (j2 * 32), bArr4, 0);
            cdo3.f32343for++;
        }
        cdo3.f32343for = 0L;
        while (true) {
            long j3 = cdo3.f32343for;
            if (j3 >= 32) {
                break;
            }
            Cgoto.m35793if(cdo, bArr5, (int) ((j3 * 32) + 1024), bArr7, (int) (j3 * 67 * 32), bArr4, 0);
            cdo3.f32343for++;
        }
        int i3 = 0;
        for (int i4 = 32; i4 > 0; i4 >>>= 1) {
            for (int i5 = 0; i5 < i4; i5 += 2) {
                cdo.m35782for(bArr5, ((i4 >>> 1) * 32) + ((i5 >>> 1) * 32), bArr5, (i4 * 32) + (i5 * 32), bArr4, (i3 + 7) * 2 * 32);
            }
            i3++;
        }
        int i6 = (int) cdo2.f32343for;
        for (int i7 = 0; i7 < i2; i7++) {
            System.arraycopy(bArr5, ((32 >>> i7) * 32) + (((i6 >>> i7) ^ 1) * 32), bArr2, i + (i7 * 32), 32);
        }
        System.arraycopy(bArr5, 32, bArr, 0, 32);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m35776for(Cdo cdo, byte[] bArr, byte[] bArr2, int i, byte[] bArr3, int i2, byte[] bArr4, int i3) {
        byte[] bArr5 = new byte[64];
        if ((i & 1) != 0) {
            for (int i4 = 0; i4 < 32; i4++) {
                bArr5[i4 + 32] = bArr2[i4];
            }
            for (int i5 = 0; i5 < 32; i5++) {
                bArr5[i5] = bArr3[i2 + i5];
            }
        } else {
            for (int i6 = 0; i6 < 32; i6++) {
                bArr5[i6] = bArr2[i6];
            }
            for (int i7 = 0; i7 < 32; i7++) {
                bArr5[i7 + 32] = bArr3[i2 + i7];
            }
        }
        int i8 = i2 + 32;
        int i9 = 0;
        int i10 = i;
        while (i9 < i3 - 1) {
            int i11 = i10 >>> 1;
            if ((i11 & 1) != 0) {
                cdo.m35782for(bArr5, 32, bArr5, 0, bArr4, (i9 + 7) * 2 * 32);
                for (int i12 = 0; i12 < 32; i12++) {
                    bArr5[i12] = bArr3[i8 + i12];
                }
            } else {
                cdo.m35782for(bArr5, 0, bArr5, 0, bArr4, (i9 + 7) * 2 * 32);
                for (int i13 = 0; i13 < 32; i13++) {
                    bArr5[i13 + 32] = bArr3[i8 + i13];
                }
            }
            i8 += 32;
            i9++;
            i10 = i11;
        }
        cdo.m35782for(bArr, 0, bArr5, 0, bArr4, ((i3 + 7) - 1) * 2 * 32);
    }

    /* renamed from: try, reason: not valid java name */
    private void m35777try(byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 != i2; i3++) {
            bArr[i + i3] = 0;
        }
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public byte[] generateSignature(byte[] bArr) {
        return m35778if(this.f32335do, bArr, this.f32336if);
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m35778if(Cdo cdo, byte[] bArr, byte[] bArr2) throws tw, IllegalArgumentException {
        byte[] bArr3 = new byte[Cnew.f32353catch];
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[64];
        long[] jArr = new long[8];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[32];
        byte[] bArr8 = new byte[1024];
        byte[] bArr9 = new byte[Cnew.f32351break];
        for (int i = 0; i < 1088; i++) {
            bArr9[i] = bArr2[i];
        }
        System.arraycopy(bArr9, Cnew.f32360this, bArr3, 40968, 32);
        Digest digestM35781do = cdo.m35781do();
        byte[] bArr10 = new byte[digestM35781do.getDigestSize()];
        digestM35781do.update(bArr3, 40968, 32);
        digestM35781do.update(bArr, 0, bArr.length);
        digestM35781do.doFinal(bArr10, 0);
        m35777try(bArr3, 40968, 32);
        for (int i2 = 0; i2 != 8; i2++) {
            jArr[i2] = ib1.m3362import(bArr10, i2 * 8);
        }
        long j = jArr[0] & 1152921504606846975L;
        System.arraycopy(bArr10, 16, bArr4, 0, 32);
        System.arraycopy(bArr4, 0, bArr3, 39912, 32);
        Cgoto.Cdo cdo2 = new Cgoto.Cdo();
        cdo2.f32342do = 11;
        cdo2.f32344if = 0L;
        cdo2.f32343for = 0L;
        System.arraycopy(bArr9, 32, bArr3, 39944, 1024);
        Cgoto.m35792for(cdo, bArr3, 40968, 5, bArr9, cdo2, bArr3, 39944);
        Digest digestM35781do2 = cdo.m35781do();
        digestM35781do2.update(bArr3, 39912, Cnew.f32351break);
        digestM35781do2.update(bArr, 0, bArr.length);
        digestM35781do2.doFinal(bArr5, 0);
        Cgoto.Cdo cdo3 = new Cgoto.Cdo();
        cdo3.f32342do = 12;
        cdo3.f32343for = (int) (j & 31);
        cdo3.f32344if = j >>> 5;
        for (int i3 = 0; i3 < 32; i3++) {
            bArr3[i3] = bArr4[i3];
        }
        byte[] bArr11 = bArr8;
        System.arraycopy(bArr9, 32, bArr11, 0, 1024);
        for (int i4 = 0; i4 < 8; i4++) {
            bArr3[32 + i4] = (byte) ((j >>> (i4 * 8)) & 255);
        }
        Celse.m35786do(cdo, bArr7, 0, bArr9, cdo3);
        new Cif();
        byte[] bArr12 = bArr9;
        int iM35796if = 40 + Cif.m35796if(cdo, bArr3, 40, bArr6, bArr7, bArr11, bArr5);
        Cthis cthis = new Cthis();
        int i5 = iM35796if;
        int i6 = 0;
        for (int i7 = 12; i6 < i7; i7 = 12) {
            cdo3.f32342do = i6;
            byte[] bArr13 = bArr12;
            Celse.m35786do(cdo, bArr7, 0, bArr13, cdo3);
            int i8 = i5;
            int i9 = i5;
            byte[] bArr14 = bArr11;
            cthis.m35802try(cdo, bArr3, i8, bArr6, bArr7, bArr14);
            int i10 = i9 + Cthis.f32362case;
            m35775do(cdo, bArr6, bArr3, i10, cdo3, bArr13, bArr14, 5);
            i5 = i10 + 160;
            long j2 = cdo3.f32344if;
            cdo3.f32343for = (int) (j2 & 31);
            cdo3.f32344if = j2 >>> 5;
            i6++;
            bArr12 = bArr13;
            bArr11 = bArr11;
        }
        m35777try(bArr12, 0, Cnew.f32351break);
        return bArr3;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public void init(boolean z, CipherParameters cipherParameters) {
        if (!z) {
            this.f32336if = ((br1) cipherParameters).m616for();
        } else if (cipherParameters instanceof cc1) {
            this.f32336if = ((ar1) ((cc1) cipherParameters).m846do()).m317for();
        } else {
            this.f32336if = ((ar1) cipherParameters).m317for();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m35779new(Cdo cdo, byte[] bArr, byte[] bArr2, byte[] bArr3) {
        int length = bArr2.length;
        byte[] bArr4 = new byte[Cthis.f32362case];
        byte[] bArr5 = new byte[32];
        byte[] bArr6 = new byte[32];
        byte[] bArr7 = new byte[Cnew.f32353catch];
        byte[] bArr8 = new byte[Cnew.f32360this];
        if (length != 41000) {
            throw new IllegalArgumentException("signature wrong size");
        }
        byte[] bArr9 = new byte[64];
        for (int i = 0; i < 1056; i++) {
            bArr8[i] = bArr3[i];
        }
        byte[] bArr10 = new byte[32];
        for (int i2 = 0; i2 < 32; i2++) {
            bArr10[i2] = bArr2[i2];
        }
        System.arraycopy(bArr2, 0, bArr7, 0, Cnew.f32353catch);
        Digest digestM35781do = cdo.m35781do();
        digestM35781do.update(bArr10, 0, 32);
        digestM35781do.update(bArr8, 0, Cnew.f32360this);
        digestM35781do.update(bArr, 0, bArr.length);
        digestM35781do.doFinal(bArr9, 0);
        long j = 0;
        for (int i3 = 0; i3 < 8; i3++) {
            j ^= (bArr7[32 + i3] & 255) << (i3 * 8);
        }
        new Cif();
        Cif.m35795for(cdo, bArr6, bArr7, 40, bArr8, bArr9);
        Cthis cthis = new Cthis();
        int i4 = 0;
        int i5 = 13352;
        while (i4 < 12) {
            byte[] bArr11 = bArr8;
            cthis.m35800case(cdo, bArr4, bArr7, i5, bArr6, bArr8);
            int i6 = i5 + Cthis.f32362case;
            Cgoto.m35793if(cdo, bArr5, 0, bArr4, 0, bArr11, 0);
            byte[] bArr12 = bArr7;
            m35776for(cdo, bArr6, bArr5, (int) (31 & j), bArr12, i6, bArr11, 5);
            j >>= 5;
            i5 = i6 + 160;
            i4++;
            bArr7 = bArr12;
            bArr8 = bArr11;
        }
        byte[] bArr13 = bArr8;
        boolean z = true;
        for (int i7 = 0; i7 < 32; i7++) {
            if (bArr6[i7] != bArr13[i7 + 1024]) {
                z = false;
            }
        }
        return z;
    }

    @Override // org.bouncycastle.pqc.crypto.MessageSigner
    public boolean verifySignature(byte[] bArr, byte[] bArr2) {
        return m35779new(this.f32335do, bArr, bArr2, this.f32336if);
    }
}
