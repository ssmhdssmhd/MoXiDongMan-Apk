package android.support.v4;

import java.lang.reflect.Array;
import org.apache.commons.lang3.Cclass;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.util.encoders.Cfor;

/* loaded from: classes3.dex */
public class if0 {

    /* renamed from: break, reason: not valid java name */
    private int f2725break;

    /* renamed from: case, reason: not valid java name */
    private byte[] f2726case;

    /* renamed from: catch, reason: not valid java name */
    private int f2727catch;

    /* renamed from: class, reason: not valid java name */
    private int f2728class;

    /* renamed from: const, reason: not valid java name */
    private int f2729const;

    /* renamed from: do, reason: not valid java name */
    private Digest f2730do;

    /* renamed from: else, reason: not valid java name */
    private int f2731else;

    /* renamed from: final, reason: not valid java name */
    private int f2732final;

    /* renamed from: for, reason: not valid java name */
    private int f2733for;

    /* renamed from: goto, reason: not valid java name */
    private hf0 f2734goto;

    /* renamed from: if, reason: not valid java name */
    private int f2735if;

    /* renamed from: import, reason: not valid java name */
    private int f2736import;

    /* renamed from: native, reason: not valid java name */
    private int f2737native;

    /* renamed from: new, reason: not valid java name */
    private byte[] f2738new;

    /* renamed from: public, reason: not valid java name */
    private byte[] f2739public;

    /* renamed from: super, reason: not valid java name */
    private long f2740super;

    /* renamed from: this, reason: not valid java name */
    private int f2741this;

    /* renamed from: throw, reason: not valid java name */
    private long f2742throw;

    /* renamed from: try, reason: not valid java name */
    private byte[] f2743try;

    /* renamed from: while, reason: not valid java name */
    private int f2744while;

    public if0(Digest digest, int i, int i2) {
        this.f2730do = digest;
        this.f2734goto = new hf0(digest);
        int digestSize = this.f2730do.getDigestSize();
        this.f2735if = digestSize;
        this.f2731else = i;
        this.f2737native = i2;
        this.f2725break = (1 << i) - 1;
        double d = digestSize << 3;
        double d2 = i;
        Double.isNaN(d);
        Double.isNaN(d2);
        this.f2741this = (int) Math.ceil(d / d2);
    }

    public if0(Digest digest, byte[][] bArr, int[] iArr) {
        this.f2730do = digest;
        this.f2734goto = new hf0(digest);
        this.f2729const = iArr[0];
        this.f2728class = iArr[1];
        this.f2732final = iArr[2];
        this.f2727catch = iArr[3];
        this.f2744while = iArr[4];
        this.f2733for = iArr[5];
        this.f2737native = iArr[6];
        this.f2731else = iArr[7];
        this.f2736import = iArr[8];
        int digestSize = this.f2730do.getDigestSize();
        this.f2735if = digestSize;
        int i = this.f2731else;
        this.f2725break = (1 << i) - 1;
        double d = digestSize << 3;
        double d2 = i;
        Double.isNaN(d);
        Double.isNaN(d2);
        this.f2741this = (int) Math.ceil(d / d2);
        this.f2738new = bArr[0];
        this.f2739public = bArr[1];
        this.f2743try = bArr[2];
        this.f2726case = bArr[3];
        this.f2740super = ((bArr[4][1] & 255) << 8) | (bArr[4][0] & 255) | ((bArr[4][2] & 255) << 16) | ((bArr[4][3] & 255) << 24) | ((bArr[4][4] & 255) << 32) | ((bArr[4][5] & 255) << 40) | ((bArr[4][6] & 255) << 48) | ((bArr[4][7] & 255) << 56);
        this.f2742throw = (bArr[4][8] & 255) | ((bArr[4][9] & 255) << 8) | ((bArr[4][10] & 255) << 16) | ((bArr[4][11] & 255) << 24) | ((bArr[4][12] & 255) << 32) | ((bArr[4][13] & 255) << 40) | ((bArr[4][14] & 255) << 48) | ((bArr[4][15] & 255) << 56);
    }

    /* renamed from: else, reason: not valid java name */
    private void m3405else() {
        long j;
        int i = this.f2731else;
        if (8 % i == 0) {
            int i2 = this.f2728class;
            if (i2 == 0) {
                this.f2738new = this.f2734goto.m3009for(this.f2739public);
                int i3 = this.f2732final;
                if (i3 < this.f2735if) {
                    byte[] bArr = this.f2743try;
                    this.f2728class = bArr[i3] & this.f2725break;
                    bArr[i3] = (byte) (bArr[i3] >>> this.f2731else);
                } else {
                    int i4 = this.f2736import;
                    this.f2728class = this.f2725break & i4;
                    this.f2736import = i4 >>> this.f2731else;
                }
            } else if (i2 > 0) {
                Digest digest = this.f2730do;
                byte[] bArr2 = this.f2738new;
                digest.update(bArr2, 0, bArr2.length);
                byte[] bArr3 = new byte[this.f2730do.getDigestSize()];
                this.f2738new = bArr3;
                this.f2730do.doFinal(bArr3, 0);
                this.f2728class--;
            }
            if (this.f2728class == 0) {
                byte[] bArr4 = this.f2738new;
                byte[] bArr5 = this.f2726case;
                int i5 = this.f2729const;
                int i6 = this.f2735if;
                System.arraycopy(bArr4, 0, bArr5, i5 * i6, i6);
                int i7 = this.f2729const + 1;
                this.f2729const = i7;
                if (i7 % (8 / this.f2731else) == 0) {
                    this.f2732final++;
                    return;
                }
                return;
            }
            return;
        }
        if (i < 8) {
            int i8 = this.f2728class;
            if (i8 == 0) {
                int i9 = this.f2729const;
                if (i9 % 8 == 0) {
                    int i10 = this.f2732final;
                    int i11 = this.f2735if;
                    if (i10 < i11) {
                        this.f2742throw = 0L;
                        if (i9 < ((i11 / i) << 3)) {
                            for (int i12 = 0; i12 < this.f2731else; i12++) {
                                long j2 = this.f2742throw;
                                byte[] bArr6 = this.f2743try;
                                int i13 = this.f2732final;
                                this.f2742throw = j2 ^ ((bArr6[i13] & 255) << (i12 << 3));
                                this.f2732final = i13 + 1;
                            }
                        } else {
                            for (int i14 = 0; i14 < this.f2735if % this.f2731else; i14++) {
                                long j3 = this.f2742throw;
                                byte[] bArr7 = this.f2743try;
                                int i15 = this.f2732final;
                                this.f2742throw = j3 ^ ((bArr7[i15] & 255) << (i14 << 3));
                                this.f2732final = i15 + 1;
                            }
                        }
                    }
                }
                if (this.f2729const == this.f2741this) {
                    this.f2742throw = this.f2736import;
                }
                this.f2728class = (int) (this.f2742throw & this.f2725break);
                this.f2738new = this.f2734goto.m3009for(this.f2739public);
            } else if (i8 > 0) {
                Digest digest2 = this.f2730do;
                byte[] bArr8 = this.f2738new;
                digest2.update(bArr8, 0, bArr8.length);
                byte[] bArr9 = new byte[this.f2730do.getDigestSize()];
                this.f2738new = bArr9;
                this.f2730do.doFinal(bArr9, 0);
                this.f2728class--;
            }
            if (this.f2728class != 0) {
                return;
            }
            byte[] bArr10 = this.f2738new;
            byte[] bArr11 = this.f2726case;
            int i16 = this.f2729const;
            int i17 = this.f2735if;
            System.arraycopy(bArr10, 0, bArr11, i16 * i17, i17);
            this.f2742throw >>>= this.f2731else;
        } else {
            if (i >= 57) {
                return;
            }
            long j4 = this.f2740super;
            if (j4 == 0) {
                this.f2742throw = 0L;
                this.f2732final = 0;
                int i18 = this.f2727catch;
                int i19 = i18 % 8;
                int i20 = i18 >>> 3;
                int i21 = this.f2735if;
                if (i20 < i21) {
                    if (i18 <= (i21 << 3) - i) {
                        int i22 = i18 + i;
                        this.f2727catch = i22;
                        i21 = (i22 + 7) >>> 3;
                    } else {
                        this.f2727catch = i18 + i;
                    }
                    while (true) {
                        j = this.f2742throw;
                        if (i20 >= i21) {
                            break;
                        }
                        int i23 = this.f2743try[i20] & 255;
                        int i24 = this.f2732final;
                        this.f2742throw = j ^ (i23 << (i24 << 3));
                        this.f2732final = i24 + 1;
                        i20++;
                    }
                    long j5 = j >>> i19;
                    this.f2742throw = j5;
                    this.f2740super = j5 & this.f2725break;
                } else {
                    int i25 = this.f2736import;
                    this.f2740super = this.f2725break & i25;
                    this.f2736import = i25 >>> i;
                }
                this.f2738new = this.f2734goto.m3009for(this.f2739public);
            } else if (j4 > 0) {
                Digest digest3 = this.f2730do;
                byte[] bArr12 = this.f2738new;
                digest3.update(bArr12, 0, bArr12.length);
                byte[] bArr13 = new byte[this.f2730do.getDigestSize()];
                this.f2738new = bArr13;
                this.f2730do.doFinal(bArr13, 0);
                this.f2740super--;
            }
            if (this.f2740super != 0) {
                return;
            }
            byte[] bArr14 = this.f2738new;
            byte[] bArr15 = this.f2726case;
            int i26 = this.f2729const;
            int i27 = this.f2735if;
            System.arraycopy(bArr14, 0, bArr15, i26 * i27, i27);
        }
        this.f2729const++;
    }

    /* renamed from: case, reason: not valid java name */
    public void m3406case(byte[] bArr, byte[] bArr2) {
        int i;
        int i2;
        this.f2743try = new byte[this.f2735if];
        this.f2730do.update(bArr2, 0, bArr2.length);
        byte[] bArr3 = new byte[this.f2730do.getDigestSize()];
        this.f2743try = bArr3;
        this.f2730do.doFinal(bArr3, 0);
        int i3 = this.f2735if;
        byte[] bArr4 = new byte[i3];
        System.arraycopy(this.f2743try, 0, bArr4, 0, i3);
        int iM3407do = m3407do((this.f2741this << this.f2731else) + 1);
        int i4 = this.f2731else;
        int i5 = 8;
        if (8 % i4 == 0) {
            int i6 = 8 / i4;
            i = 0;
            for (int i7 = 0; i7 < this.f2735if; i7++) {
                for (int i8 = 0; i8 < i6; i8++) {
                    i += bArr4[i7] & this.f2725break;
                    bArr4[i7] = (byte) (bArr4[i7] >>> this.f2731else);
                }
            }
            int i9 = (this.f2741this << this.f2731else) - i;
            this.f2736import = i9;
            int i10 = 0;
            while (i10 < iM3407do) {
                i += this.f2725break & i9;
                int i11 = this.f2731else;
                i9 >>>= i11;
                i10 += i11;
            }
        } else if (i4 < 8) {
            int i12 = this.f2735if / i4;
            int i13 = 0;
            int i14 = 0;
            int i15 = 0;
            while (i13 < i12) {
                long j = 0;
                for (int i16 = 0; i16 < this.f2731else; i16++) {
                    j ^= (bArr4[i14] & 255) << (i16 << 3);
                    i14++;
                }
                int i17 = 0;
                while (i17 < i5) {
                    i15 += (int) (this.f2725break & j);
                    j >>>= this.f2731else;
                    i17++;
                    i12 = i12;
                    i5 = 8;
                }
                i13++;
                i5 = 8;
            }
            int i18 = this.f2735if % this.f2731else;
            long j2 = 0;
            for (int i19 = 0; i19 < i18; i19++) {
                j2 ^= (bArr4[i14] & 255) << (i19 << 3);
                i14++;
            }
            int i20 = i18 << 3;
            int i21 = 0;
            while (i21 < i20) {
                i15 += (int) (this.f2725break & j2);
                int i22 = this.f2731else;
                j2 >>>= i22;
                i21 += i22;
            }
            int i23 = (this.f2741this << this.f2731else) - i15;
            this.f2736import = i23;
            i = i15;
            int i24 = 0;
            while (i24 < iM3407do) {
                i += this.f2725break & i23;
                int i25 = this.f2731else;
                i23 >>>= i25;
                i24 += i25;
            }
        } else if (i4 < 57) {
            int i26 = 0;
            int i27 = 0;
            while (true) {
                i2 = this.f2735if;
                int i28 = this.f2731else;
                if (i26 > (i2 << 3) - i28) {
                    break;
                }
                int i29 = i26 % 8;
                i26 += i28;
                long j3 = 0;
                int i30 = 0;
                for (int i31 = i26 >>> 3; i31 < ((i26 + 7) >>> 3); i31++) {
                    j3 ^= (bArr4[i31] & 255) << (i30 << 3);
                    i30++;
                }
                i27 = (int) (i27 + ((j3 >>> i29) & this.f2725break));
            }
            int i32 = i26 >>> 3;
            if (i32 < i2) {
                int i33 = i26 % 8;
                int i34 = 0;
                long j4 = 0;
                while (i32 < this.f2735if) {
                    j4 ^= (bArr4[i32] & 255) << (i34 << 3);
                    i34++;
                    i32++;
                }
                i27 = (int) (i27 + ((j4 >>> i33) & this.f2725break));
            }
            int i35 = (this.f2741this << this.f2731else) - i27;
            this.f2736import = i35;
            i = i27;
            int i36 = 0;
            while (i36 < iM3407do) {
                i += this.f2725break & i35;
                int i37 = this.f2731else;
                i35 >>>= i37;
                i36 += i37;
            }
        } else {
            i = 0;
        }
        int i38 = this.f2741this;
        double d = iM3407do;
        double d2 = this.f2731else;
        Double.isNaN(d);
        Double.isNaN(d2);
        int iCeil = i38 + ((int) Math.ceil(d / d2));
        this.f2733for = iCeil;
        double d3 = iCeil + i;
        double d4 = 1 << this.f2737native;
        Double.isNaN(d3);
        Double.isNaN(d4);
        this.f2744while = (int) Math.ceil(d3 / d4);
        int i39 = this.f2733for;
        int i40 = this.f2735if;
        this.f2726case = new byte[i39 * i40];
        this.f2729const = 0;
        this.f2728class = 0;
        this.f2732final = 0;
        this.f2740super = 0L;
        this.f2727catch = 0;
        this.f2738new = new byte[i40];
        byte[] bArr5 = new byte[i40];
        this.f2739public = bArr5;
        System.arraycopy(bArr, 0, bArr5, 0, i40);
    }

    /* renamed from: do, reason: not valid java name */
    public int m3407do(int i) {
        int i2 = 1;
        int i3 = 2;
        while (i3 < i) {
            i3 <<= 1;
            i2++;
        }
        return i2;
    }

    /* renamed from: for, reason: not valid java name */
    public byte[][] m3408for() {
        byte[][] bArr = (byte[][]) Array.newInstance((Class<?>) byte.class, 5, this.f2735if);
        bArr[0] = this.f2738new;
        bArr[1] = this.f2739public;
        bArr[2] = this.f2743try;
        bArr[3] = this.f2726case;
        bArr[4] = m3412try();
        return bArr;
    }

    /* renamed from: goto, reason: not valid java name */
    public boolean m3409goto() {
        for (int i = 0; i < this.f2744while; i++) {
            if (this.f2729const < this.f2733for) {
                m3405else();
            }
            if (this.f2729const == this.f2733for) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m3410if() {
        return this.f2726case;
    }

    /* renamed from: new, reason: not valid java name */
    public int[] m3411new() {
        return new int[]{this.f2729const, this.f2728class, this.f2732final, this.f2727catch, this.f2744while, this.f2733for, this.f2737native, this.f2731else, this.f2736import};
    }

    public String toString() {
        String str = "" + this.f2742throw + "  ";
        int[] iArrM3411new = m3411new();
        byte[][] bArrM3408for = m3408for();
        for (int i = 0; i < 9; i++) {
            str = str + iArrM3411new[i] + Cclass.f28652do;
        }
        for (int i2 = 0; i2 < 5; i2++) {
            str = str + new String(Cfor.m36327case(bArrM3408for[i2])) + Cclass.f28652do;
        }
        return str;
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m3412try() {
        long j = this.f2740super;
        long j2 = this.f2742throw;
        return new byte[]{(byte) (j & 255), (byte) ((j >> 8) & 255), (byte) ((j >> 16) & 255), (byte) ((j >> 24) & 255), (byte) ((j >> 32) & 255), (byte) ((j >> 40) & 255), (byte) ((j >> 48) & 255), (byte) ((j >> 56) & 255), (byte) (j2 & 255), (byte) ((j2 >> 8) & 255), (byte) ((j2 >> 16) & 255), (byte) ((j2 >> 24) & 255), (byte) ((j2 >> 32) & 255), (byte) ((j2 >> 40) & 255), (byte) ((j2 >> 48) & 255), (byte) ((j2 >> 56) & 255)};
    }
}
