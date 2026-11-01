package org.bouncycastle.crypto.macs;

import android.support.v4.bc1;
import android.support.v4.f91;
import android.support.v4.gr0;
import android.support.v4.ib1;
import android.support.v4.tw;
import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Mac;

/* renamed from: org.bouncycastle.crypto.macs.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto implements Mac {

    /* renamed from: switch, reason: not valid java name */
    private static final int f29933switch = 16;

    /* renamed from: break, reason: not valid java name */
    private int f29934break;

    /* renamed from: case, reason: not valid java name */
    private int f29935case;

    /* renamed from: catch, reason: not valid java name */
    private int f29936catch;

    /* renamed from: class, reason: not valid java name */
    private int f29937class;

    /* renamed from: const, reason: not valid java name */
    private int f29938const;

    /* renamed from: do, reason: not valid java name */
    private final BlockCipher f29939do;

    /* renamed from: else, reason: not valid java name */
    private int f29940else;

    /* renamed from: final, reason: not valid java name */
    private int f29941final;

    /* renamed from: for, reason: not valid java name */
    private int f29942for;

    /* renamed from: goto, reason: not valid java name */
    private int f29943goto;

    /* renamed from: if, reason: not valid java name */
    private final byte[] f29944if;

    /* renamed from: import, reason: not valid java name */
    private int f29945import;

    /* renamed from: native, reason: not valid java name */
    private int f29946native;

    /* renamed from: new, reason: not valid java name */
    private int f29947new;

    /* renamed from: public, reason: not valid java name */
    private int f29948public;

    /* renamed from: return, reason: not valid java name */
    private int f29949return;

    /* renamed from: static, reason: not valid java name */
    private int f29950static;

    /* renamed from: super, reason: not valid java name */
    private int f29951super;

    /* renamed from: this, reason: not valid java name */
    private int f29952this;

    /* renamed from: throw, reason: not valid java name */
    private final byte[] f29953throw;

    /* renamed from: try, reason: not valid java name */
    private int f29954try;

    /* renamed from: while, reason: not valid java name */
    private int f29955while;

    public Cgoto() {
        this.f29944if = new byte[1];
        this.f29953throw = new byte[16];
        this.f29955while = 0;
        this.f29939do = null;
    }

    public Cgoto(BlockCipher blockCipher) {
        this.f29944if = new byte[1];
        this.f29953throw = new byte[16];
        this.f29955while = 0;
        if (blockCipher.getBlockSize() != 16) {
            throw new IllegalArgumentException("Poly1305 requires a 128 bit block cipher.");
        }
        this.f29939do = blockCipher;
    }

    /* renamed from: do, reason: not valid java name */
    private static final long m33692do(int i, int i2) {
        return (i & 4294967295L) * i2;
    }

    /* renamed from: for, reason: not valid java name */
    private void m33693for(byte[] bArr, byte[] bArr2) throws IllegalStateException, tw, IllegalArgumentException {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("Poly1305 key must be 256 bits.");
        }
        int i = 16;
        if (this.f29939do != null && (bArr2 == null || bArr2.length != 16)) {
            throw new IllegalArgumentException("Poly1305 requires a 128 bit IV.");
        }
        int iM3357final = ib1.m3357final(bArr, 0);
        int iM3357final2 = ib1.m3357final(bArr, 4);
        int iM3357final3 = ib1.m3357final(bArr, 8);
        int iM3357final4 = ib1.m3357final(bArr, 12);
        this.f29942for = 67108863 & iM3357final;
        int i2 = ((iM3357final >>> 26) | (iM3357final2 << 6)) & 67108611;
        this.f29947new = i2;
        int i3 = ((iM3357final2 >>> 20) | (iM3357final3 << 12)) & 67092735;
        this.f29954try = i3;
        int i4 = ((iM3357final3 >>> 14) | (iM3357final4 << 18)) & 66076671;
        this.f29935case = i4;
        int i5 = (iM3357final4 >>> 8) & 1048575;
        this.f29940else = i5;
        this.f29943goto = i2 * 5;
        this.f29952this = i3 * 5;
        this.f29934break = i4 * 5;
        this.f29936catch = i5 * 5;
        BlockCipher blockCipher = this.f29939do;
        if (blockCipher != null) {
            byte[] bArr3 = new byte[16];
            blockCipher.init(true, new gr0(bArr, 16, 16));
            this.f29939do.processBlock(bArr2, 0, bArr3, 0);
            bArr = bArr3;
            i = 0;
        }
        this.f29937class = ib1.m3357final(bArr, i + 0);
        this.f29938const = ib1.m3357final(bArr, i + 4);
        this.f29941final = ib1.m3357final(bArr, i + 8);
        this.f29951super = ib1.m3357final(bArr, i + 12);
    }

    /* renamed from: if, reason: not valid java name */
    private void m33694if() {
        int i = this.f29955while;
        if (i < 16) {
            this.f29953throw[i] = 1;
            for (int i2 = i + 1; i2 < 16; i2++) {
                this.f29953throw[i2] = 0;
            }
        }
        long jM3357final = ib1.m3357final(this.f29953throw, 0) & 4294967295L;
        long jM3357final2 = ib1.m3357final(this.f29953throw, 4) & 4294967295L;
        long jM3357final3 = ib1.m3357final(this.f29953throw, 8) & 4294967295L;
        long jM3357final4 = 4294967295L & ib1.m3357final(this.f29953throw, 12);
        int i3 = (int) (this.f29945import + (jM3357final & 67108863));
        this.f29945import = i3;
        this.f29946native = (int) (this.f29946native + ((((jM3357final2 << 32) | jM3357final) >>> 26) & 67108863));
        this.f29948public = (int) (this.f29948public + (((jM3357final2 | (jM3357final3 << 32)) >>> 20) & 67108863));
        this.f29949return = (int) (this.f29949return + ((((jM3357final4 << 32) | jM3357final3) >>> 14) & 67108863));
        int i4 = (int) (this.f29950static + (jM3357final4 >>> 8));
        this.f29950static = i4;
        if (this.f29955while == 16) {
            this.f29950static = i4 + 16777216;
        }
        long jM33692do = m33692do(i3, this.f29942for) + m33692do(this.f29946native, this.f29936catch) + m33692do(this.f29948public, this.f29934break) + m33692do(this.f29949return, this.f29952this) + m33692do(this.f29950static, this.f29943goto);
        long jM33692do2 = m33692do(this.f29945import, this.f29947new) + m33692do(this.f29946native, this.f29942for) + m33692do(this.f29948public, this.f29936catch) + m33692do(this.f29949return, this.f29934break) + m33692do(this.f29950static, this.f29952this);
        long jM33692do3 = m33692do(this.f29945import, this.f29954try) + m33692do(this.f29946native, this.f29947new) + m33692do(this.f29948public, this.f29942for) + m33692do(this.f29949return, this.f29936catch) + m33692do(this.f29950static, this.f29934break);
        long jM33692do4 = m33692do(this.f29945import, this.f29935case) + m33692do(this.f29946native, this.f29954try) + m33692do(this.f29948public, this.f29947new) + m33692do(this.f29949return, this.f29942for) + m33692do(this.f29950static, this.f29936catch);
        long jM33692do5 = m33692do(this.f29945import, this.f29940else) + m33692do(this.f29946native, this.f29935case) + m33692do(this.f29948public, this.f29954try) + m33692do(this.f29949return, this.f29947new) + m33692do(this.f29950static, this.f29942for);
        int i5 = ((int) jM33692do) & 67108863;
        this.f29945import = i5;
        long j = jM33692do2 + (jM33692do >>> 26);
        int i6 = ((int) j) & 67108863;
        this.f29946native = i6;
        long j2 = jM33692do3 + (j >>> 26);
        this.f29948public = ((int) j2) & 67108863;
        long j3 = jM33692do4 + (j2 >>> 26);
        this.f29949return = ((int) j3) & 67108863;
        long j4 = jM33692do5 + (j3 >>> 26);
        this.f29950static = ((int) j4) & 67108863;
        int i7 = i5 + (((int) (j4 >>> 26)) * 5);
        this.f29945import = i7;
        this.f29946native = i6 + (i7 >>> 26);
        this.f29945import = i7 & 67108863;
    }

    @Override // org.bouncycastle.crypto.Mac
    public int doFinal(byte[] bArr, int i) throws IllegalStateException, tw {
        if (i + 16 > bArr.length) {
            throw new f91("Output buffer is too short.");
        }
        if (this.f29955while > 0) {
            m33694if();
        }
        int i2 = this.f29946native;
        int i3 = this.f29945import;
        int i4 = i2 + (i3 >>> 26);
        this.f29946native = i4;
        int i5 = i3 & 67108863;
        this.f29945import = i5;
        int i6 = this.f29948public + (i4 >>> 26);
        this.f29948public = i6;
        int i7 = i4 & 67108863;
        this.f29946native = i7;
        int i8 = this.f29949return + (i6 >>> 26);
        this.f29949return = i8;
        int i9 = i6 & 67108863;
        this.f29948public = i9;
        int i10 = this.f29950static + (i8 >>> 26);
        this.f29950static = i10;
        int i11 = i8 & 67108863;
        this.f29949return = i11;
        int i12 = i5 + ((i10 >>> 26) * 5);
        this.f29945import = i12;
        int i13 = i10 & 67108863;
        this.f29950static = i13;
        int i14 = i7 + (i12 >>> 26);
        this.f29946native = i14;
        int i15 = i12 & 67108863;
        this.f29945import = i15;
        int i16 = i15 + 5;
        int i17 = (i16 >>> 26) + i14;
        int i18 = (i17 >>> 26) + i9;
        int i19 = (i18 >>> 26) + i11;
        int i20 = 67108863 & i19;
        int i21 = ((i19 >>> 26) + i13) - 67108864;
        int i22 = (i21 >>> 31) - 1;
        int i23 = i22 ^ (-1);
        this.f29945import = (i15 & i23) | (i16 & 67108863 & i22);
        this.f29946native = (i14 & i23) | (i17 & 67108863 & i22);
        this.f29948public = (i9 & i23) | (i18 & 67108863 & i22);
        this.f29949return = (i20 & i22) | (i11 & i23);
        this.f29950static = (i13 & i23) | (i21 & i22);
        long j = ((r1 | (r0 << 26)) & 4294967295L) + (this.f29937class & 4294967295L);
        long j2 = (((r3 >>> 12) | (r2 << 14)) & 4294967295L) + (this.f29941final & 4294967295L);
        ib1.m3347break((int) j, bArr, i);
        long j3 = (((r0 >>> 6) | (r3 << 20)) & 4294967295L) + (this.f29938const & 4294967295L) + (j >>> 32);
        ib1.m3347break((int) j3, bArr, i + 4);
        long j4 = j2 + (j3 >>> 32);
        ib1.m3347break((int) j4, bArr, i + 8);
        ib1.m3347break((int) ((((r2 >>> 18) | (r4 << 8)) & 4294967295L) + (4294967295L & this.f29951super) + (j4 >>> 32)), bArr, i + 12);
        reset();
        return 16;
    }

    @Override // org.bouncycastle.crypto.Mac
    public String getAlgorithmName() {
        if (this.f29939do == null) {
            return "Poly1305";
        }
        return "Poly1305-" + this.f29939do.getAlgorithmName();
    }

    @Override // org.bouncycastle.crypto.Mac
    public int getMacSize() {
        return 16;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void init(CipherParameters cipherParameters) throws IllegalStateException, tw, IllegalArgumentException {
        byte[] bArrM514do;
        if (this.f29939do == null) {
            bArrM514do = null;
        } else {
            if (!(cipherParameters instanceof bc1)) {
                throw new IllegalArgumentException("Poly1305 requires an IV when used with a block cipher.");
            }
            bc1 bc1Var = (bc1) cipherParameters;
            bArrM514do = bc1Var.m514do();
            cipherParameters = bc1Var.m515if();
        }
        if (!(cipherParameters instanceof gr0)) {
            throw new IllegalArgumentException("Poly1305 requires a key.");
        }
        m33693for(((gr0) cipherParameters).m2770do(), bArrM514do);
        reset();
    }

    @Override // org.bouncycastle.crypto.Mac
    public void reset() {
        this.f29955while = 0;
        this.f29950static = 0;
        this.f29949return = 0;
        this.f29948public = 0;
        this.f29946native = 0;
        this.f29945import = 0;
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte b) throws IllegalStateException, tw {
        byte[] bArr = this.f29944if;
        bArr[0] = b;
        update(bArr, 0, 1);
    }

    @Override // org.bouncycastle.crypto.Mac
    public void update(byte[] bArr, int i, int i2) throws IllegalStateException, tw {
        int i3 = 0;
        while (i2 > i3) {
            if (this.f29955while == 16) {
                m33694if();
                this.f29955while = 0;
            }
            int iMin = Math.min(i2 - i3, 16 - this.f29955while);
            System.arraycopy(bArr, i3 + i, this.f29953throw, this.f29955while, iMin);
            i3 += iMin;
            this.f29955while += iMin;
        }
    }
}
