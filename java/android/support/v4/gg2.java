package android.support.v4;

import java.lang.reflect.Array;
import org.bouncycastle.crypto.Digest;

/* loaded from: classes3.dex */
public class gg2 {

    /* renamed from: case, reason: not valid java name */
    private hf0 f2117case;

    /* renamed from: do, reason: not valid java name */
    private Digest f2118do;

    /* renamed from: else, reason: not valid java name */
    private int f2119else;

    /* renamed from: for, reason: not valid java name */
    private int f2120for;

    /* renamed from: goto, reason: not valid java name */
    private int f2121goto;

    /* renamed from: if, reason: not valid java name */
    private int f2122if;

    /* renamed from: new, reason: not valid java name */
    private byte[][] f2123new;

    /* renamed from: try, reason: not valid java name */
    private int f2124try;

    public gg2(byte[] bArr, Digest digest, int i) {
        this.f2124try = i;
        this.f2118do = digest;
        this.f2117case = new hf0(digest);
        int digestSize = this.f2118do.getDigestSize();
        this.f2122if = digestSize;
        double d = digestSize << 3;
        double d2 = i;
        Double.isNaN(d);
        Double.isNaN(d2);
        int iCeil = (int) Math.ceil(d / d2);
        this.f2119else = iCeil;
        int iM2665do = m2665do((iCeil << i) + 1);
        this.f2121goto = iM2665do;
        int i2 = this.f2119else;
        double d3 = iM2665do;
        Double.isNaN(d3);
        Double.isNaN(d2);
        int iCeil2 = i2 + ((int) Math.ceil(d3 / d2));
        this.f2120for = iCeil2;
        this.f2123new = (byte[][]) Array.newInstance((Class<?>) byte.class, iCeil2, this.f2122if);
        int i3 = this.f2122if;
        byte[] bArr2 = new byte[i3];
        System.arraycopy(bArr, 0, bArr2, 0, i3);
        for (int i4 = 0; i4 < this.f2120for; i4++) {
            this.f2123new[i4] = this.f2117case.m3009for(bArr2);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public int m2665do(int i) {
        int i2 = 1;
        int i3 = 2;
        while (i3 < i) {
            i3 <<= 1;
            i2++;
        }
        return i2;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[] m2666for() {
        int i = this.f2120for;
        int i2 = this.f2122if;
        int i3 = i * i2;
        byte[] bArr = new byte[i3];
        byte[] bArr2 = new byte[i2];
        int i4 = 1 << this.f2124try;
        for (int i5 = 0; i5 < this.f2120for; i5++) {
            Digest digest = this.f2118do;
            byte[][] bArr3 = this.f2123new;
            digest.update(bArr3[i5], 0, bArr3[i5].length);
            byte[] bArr4 = new byte[this.f2118do.getDigestSize()];
            this.f2118do.doFinal(bArr4, 0);
            for (int i6 = 2; i6 < i4; i6++) {
                this.f2118do.update(bArr4, 0, bArr4.length);
                bArr4 = new byte[this.f2118do.getDigestSize()];
                this.f2118do.doFinal(bArr4, 0);
            }
            int i7 = this.f2122if;
            System.arraycopy(bArr4, 0, bArr, i7 * i5, i7);
        }
        this.f2118do.update(bArr, 0, i3);
        byte[] bArr5 = new byte[this.f2118do.getDigestSize()];
        this.f2118do.doFinal(bArr5, 0);
        return bArr5;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[][] m2667if() {
        return this.f2123new;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m2668new(byte[] bArr) {
        int i;
        int i2 = this.f2120for;
        int i3 = this.f2122if;
        byte[] bArr2 = new byte[i2 * i3];
        byte[] bArr3 = new byte[i3];
        this.f2118do.update(bArr, 0, bArr.length);
        int digestSize = this.f2118do.getDigestSize();
        byte[] bArr4 = new byte[digestSize];
        this.f2118do.doFinal(bArr4, 0);
        int i4 = this.f2124try;
        int i5 = 8;
        if (8 % i4 == 0) {
            int i6 = 8 / i4;
            int i7 = (1 << i4) - 1;
            byte[] bArr5 = new byte[this.f2122if];
            int i8 = 0;
            int i9 = 0;
            for (int i10 = 0; i10 < digestSize; i10++) {
                for (int i11 = 0; i11 < i6; i11++) {
                    int i12 = bArr4[i10] & i7;
                    i8 += i12;
                    System.arraycopy(this.f2123new[i9], 0, bArr5, 0, this.f2122if);
                    while (i12 > 0) {
                        this.f2118do.update(bArr5, 0, bArr5.length);
                        bArr5 = new byte[this.f2118do.getDigestSize()];
                        this.f2118do.doFinal(bArr5, 0);
                        i12--;
                    }
                    int i13 = this.f2122if;
                    System.arraycopy(bArr5, 0, bArr2, i9 * i13, i13);
                    bArr4[i10] = (byte) (bArr4[i10] >>> this.f2124try);
                    i9++;
                }
            }
            int i14 = (this.f2119else << this.f2124try) - i8;
            int i15 = 0;
            while (i15 < this.f2121goto) {
                System.arraycopy(this.f2123new[i9], 0, bArr5, 0, this.f2122if);
                for (int i16 = i14 & i7; i16 > 0; i16--) {
                    this.f2118do.update(bArr5, 0, bArr5.length);
                    bArr5 = new byte[this.f2118do.getDigestSize()];
                    this.f2118do.doFinal(bArr5, 0);
                }
                int i17 = this.f2122if;
                System.arraycopy(bArr5, 0, bArr2, i9 * i17, i17);
                int i18 = this.f2124try;
                i14 >>>= i18;
                i9++;
                i15 += i18;
            }
        } else if (i4 < 8) {
            int i19 = this.f2122if;
            int i20 = i19 / i4;
            int i21 = (1 << i4) - 1;
            byte[] bArr6 = new byte[i19];
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            int i25 = 0;
            while (i22 < i20) {
                long j = 0;
                for (int i26 = 0; i26 < this.f2124try; i26++) {
                    j ^= (bArr4[i23] & 255) << (i26 << 3);
                    i23++;
                }
                int i27 = 0;
                while (true) {
                    int i28 = i20;
                    if (i27 < i5) {
                        int i29 = (int) (j & i21);
                        i25 += i29;
                        System.arraycopy(this.f2123new[i24], 0, bArr6, 0, this.f2122if);
                        while (i29 > 0) {
                            this.f2118do.update(bArr6, 0, bArr6.length);
                            bArr6 = new byte[this.f2118do.getDigestSize()];
                            this.f2118do.doFinal(bArr6, 0);
                            i29--;
                        }
                        int i30 = this.f2122if;
                        System.arraycopy(bArr6, 0, bArr2, i24 * i30, i30);
                        j >>>= this.f2124try;
                        i24++;
                        i27++;
                        i20 = i28;
                        i5 = 8;
                    }
                }
                i22++;
                i5 = 8;
            }
            int i31 = this.f2122if % this.f2124try;
            int i32 = 0;
            long j2 = 0;
            while (i32 < i31) {
                j2 ^= (bArr4[i23] & 255) << (i32 << 3);
                i23++;
                i32++;
                i31 = i31;
            }
            int i33 = i31 << 3;
            int i34 = 0;
            while (i34 < i33) {
                int i35 = (int) (i21 & j2);
                i25 += i35;
                System.arraycopy(this.f2123new[i24], 0, bArr6, 0, this.f2122if);
                while (i35 > 0) {
                    this.f2118do.update(bArr6, 0, bArr6.length);
                    bArr6 = new byte[this.f2118do.getDigestSize()];
                    this.f2118do.doFinal(bArr6, 0);
                    i35--;
                }
                int i36 = this.f2122if;
                System.arraycopy(bArr6, 0, bArr2, i24 * i36, i36);
                int i37 = this.f2124try;
                j2 >>>= i37;
                i24++;
                i34 += i37;
            }
            int i38 = (this.f2119else << this.f2124try) - i25;
            int i39 = 0;
            while (i39 < this.f2121goto) {
                System.arraycopy(this.f2123new[i24], 0, bArr6, 0, this.f2122if);
                for (int i40 = i38 & i21; i40 > 0; i40--) {
                    this.f2118do.update(bArr6, 0, bArr6.length);
                    bArr6 = new byte[this.f2118do.getDigestSize()];
                    this.f2118do.doFinal(bArr6, 0);
                }
                int i41 = this.f2122if;
                System.arraycopy(bArr6, 0, bArr2, i24 * i41, i41);
                int i42 = this.f2124try;
                i38 >>>= i42;
                i24++;
                i39 += i42;
            }
        } else if (i4 < 57) {
            int i43 = this.f2122if;
            int i44 = (i43 << 3) - i4;
            int i45 = (1 << i4) - 1;
            byte[] bArr7 = new byte[i43];
            int i46 = 0;
            int i47 = 0;
            int i48 = 0;
            while (i47 <= i44) {
                int i49 = i47 % 8;
                i47 += this.f2124try;
                int i50 = 0;
                long j3 = 0;
                for (int i51 = i47 >>> 3; i51 < ((i47 + 7) >>> 3); i51++) {
                    j3 ^= (bArr4[i51] & 255) << (i50 << 3);
                    i50++;
                }
                long j4 = (j3 >>> i49) & i45;
                i46 = (int) (i46 + j4);
                System.arraycopy(this.f2123new[i48], 0, bArr7, 0, this.f2122if);
                while (j4 > 0) {
                    this.f2118do.update(bArr7, 0, bArr7.length);
                    bArr7 = new byte[this.f2118do.getDigestSize()];
                    this.f2118do.doFinal(bArr7, 0);
                    j4--;
                }
                int i52 = this.f2122if;
                System.arraycopy(bArr7, 0, bArr2, i48 * i52, i52);
                i48++;
            }
            int i53 = i47 >>> 3;
            if (i53 < this.f2122if) {
                int i54 = i47 % 8;
                int i55 = 0;
                long j5 = 0;
                while (true) {
                    i = this.f2122if;
                    if (i53 >= i) {
                        break;
                    }
                    j5 ^= (bArr4[i53] & 255) << (i55 << 3);
                    i55++;
                    i53++;
                }
                long j6 = (j5 >>> i54) & i45;
                i46 = (int) (i46 + j6);
                System.arraycopy(this.f2123new[i48], 0, bArr7, 0, i);
                while (j6 > 0) {
                    this.f2118do.update(bArr7, 0, bArr7.length);
                    bArr7 = new byte[this.f2118do.getDigestSize()];
                    this.f2118do.doFinal(bArr7, 0);
                    j6--;
                }
                int i56 = this.f2122if;
                System.arraycopy(bArr7, 0, bArr2, i48 * i56, i56);
                i48++;
            }
            int i57 = (this.f2119else << this.f2124try) - i46;
            int i58 = i48;
            int i59 = 0;
            while (i59 < this.f2121goto) {
                System.arraycopy(this.f2123new[i58], 0, bArr7, 0, this.f2122if);
                for (long j7 = i57 & i45; j7 > 0; j7--) {
                    this.f2118do.update(bArr7, 0, bArr7.length);
                    bArr7 = new byte[this.f2118do.getDigestSize()];
                    this.f2118do.doFinal(bArr7, 0);
                }
                int i60 = this.f2122if;
                System.arraycopy(bArr7, 0, bArr2, i58 * i60, i60);
                int i61 = this.f2124try;
                i57 >>>= i61;
                i58++;
                i59 += i61;
            }
        }
        return bArr2;
    }
}
