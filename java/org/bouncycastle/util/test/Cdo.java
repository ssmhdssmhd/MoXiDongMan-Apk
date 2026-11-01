package org.bouncycastle.util.test;

import android.support.v4.ib1;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.Provider;
import java.security.SecureRandom;

/* renamed from: org.bouncycastle.util.test.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends SecureRandom {

    /* renamed from: case, reason: not valid java name */
    private static final boolean f32669case;

    /* renamed from: new, reason: not valid java name */
    private static final boolean f32673new;

    /* renamed from: try, reason: not valid java name */
    private static final boolean f32674try;
    private byte[] _data;
    private int _index;

    /* renamed from: do, reason: not valid java name */
    private static BigInteger f32670do = new BigInteger("01020304ffffffff0506070811111111", 16);

    /* renamed from: if, reason: not valid java name */
    private static BigInteger f32672if = new BigInteger("1111111105060708ffffffff01020304", 16);

    /* renamed from: for, reason: not valid java name */
    private static BigInteger f32671for = new BigInteger("3020104ffffffff05060708111111", 16);

    /* renamed from: org.bouncycastle.util.test.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0469do extends Ctry {
        public C0469do(int i, String str) {
            super(Cdo.m36383if(i, org.bouncycastle.util.encoders.Cfor.m36332if(str)));
        }

        public C0469do(int i, byte[] bArr) {
            super(Cdo.m36383if(i, bArr));
        }

        public C0469do(String str) {
            this(org.bouncycastle.util.encoders.Cfor.m36332if(str));
        }

        public C0469do(byte[] bArr) {
            super(bArr);
        }
    }

    /* renamed from: org.bouncycastle.util.test.do$for, reason: invalid class name */
    public static class Cfor extends Provider {
        public Cfor() {
            super("BCFIPS_FIXED_RNG", 1.0d, "BCFIPS Fixed Secure Random Provider");
        }
    }

    /* renamed from: org.bouncycastle.util.test.do$if, reason: invalid class name */
    public static class Cif extends Ctry {
        public Cif(byte[] bArr) {
            super(bArr);
        }
    }

    /* renamed from: org.bouncycastle.util.test.do$new, reason: invalid class name */
    public static class Cnew extends SecureRandom {
        public byte[] data;
        public int index;

        public Cnew() {
            super(null, new Cfor());
            this.data = org.bouncycastle.util.encoders.Cfor.m36332if("01020304ffffffff0506070811111111");
            this.index = 0;
        }

        @Override // java.security.SecureRandom, java.util.Random
        public void nextBytes(byte[] bArr) {
            System.arraycopy(this.data, this.index, bArr, 0, bArr.length);
            this.index += bArr.length;
        }
    }

    /* renamed from: org.bouncycastle.util.test.do$try, reason: invalid class name */
    public static class Ctry {

        /* renamed from: do, reason: not valid java name */
        public byte[] f32675do;

        public Ctry(byte[] bArr) {
            this.f32675do = bArr;
        }
    }

    static {
        BigInteger bigInteger = new BigInteger(128, new Cnew());
        BigInteger bigInteger2 = new BigInteger(120, new Cnew());
        f32673new = bigInteger.equals(f32672if);
        f32669case = bigInteger.equals(f32670do);
        f32674try = bigInteger2.equals(f32671for);
    }

    public Cdo(byte[] bArr) {
        this(new Ctry[]{new Cif(bArr)});
    }

    public Cdo(Ctry[] ctryArr) {
        super(null, new Cfor());
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        int i = 0;
        if (!f32669case) {
            if (!f32673new) {
                throw new IllegalStateException("Unrecognized BigInteger implementation");
            }
            for (int i2 = 0; i2 != ctryArr.length; i2++) {
                try {
                    if (ctryArr[i2] instanceof C0469do) {
                        byte[] bArr = ctryArr[i2].f32675do;
                        int length = bArr.length - (bArr.length % 4);
                        int i3 = 0;
                        while (i3 < length) {
                            i3 += 4;
                            byteArrayOutputStream.write(bArr, bArr.length - i3, 4);
                        }
                        if (bArr.length - length != 0) {
                            for (int i4 = 0; i4 != 4 - (bArr.length - length); i4++) {
                                byteArrayOutputStream.write(0);
                            }
                        }
                        for (int i5 = 0; i5 != bArr.length - length; i5++) {
                            byteArrayOutputStream.write(bArr[length + i5]);
                        }
                    } else {
                        byteArrayOutputStream.write(ctryArr[i2].f32675do);
                    }
                } catch (IOException unused) {
                    throw new IllegalArgumentException("can't save value source.");
                }
            }
        } else if (f32674try) {
            while (i != ctryArr.length) {
                try {
                    if (ctryArr[i] instanceof C0469do) {
                        byte[] bArr2 = ctryArr[i].f32675do;
                        int length2 = bArr2.length - (bArr2.length % 4);
                        for (int length3 = (bArr2.length - length2) - 1; length3 >= 0; length3--) {
                            byteArrayOutputStream.write(bArr2[length3]);
                        }
                        for (int length4 = bArr2.length - length2; length4 < bArr2.length; length4 += 4) {
                            byteArrayOutputStream.write(bArr2, length4, 4);
                        }
                    } else {
                        byteArrayOutputStream.write(ctryArr[i].f32675do);
                    }
                    i++;
                } catch (IOException unused2) {
                    throw new IllegalArgumentException("can't save value source.");
                }
            }
        } else {
            while (i != ctryArr.length) {
                try {
                    byteArrayOutputStream.write(ctryArr[i].f32675do);
                    i++;
                } catch (IOException unused3) {
                    throw new IllegalArgumentException("can't save value source.");
                }
            }
        }
        this._data = byteArrayOutputStream.toByteArray();
    }

    public Cdo(byte[][] bArr) {
        this(m36381do(bArr));
    }

    /* renamed from: do, reason: not valid java name */
    private static Cif[] m36381do(byte[][] bArr) {
        Cif[] cifArr = new Cif[bArr.length];
        for (int i = 0; i != bArr.length; i++) {
            cifArr[i] = new Cif(bArr[i]);
        }
        return cifArr;
    }

    /* renamed from: for, reason: not valid java name */
    private int m36382for() {
        byte[] bArr = this._data;
        int i = this._index;
        this._index = i + 1;
        return bArr[i] & 255;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: if, reason: not valid java name */
    public static byte[] m36383if(int i, byte[] bArr) {
        int i2;
        int i3;
        int i4 = (i + 7) / 8;
        if (i4 <= bArr.length) {
            if (f32673new && i < bArr.length * 8 && (i2 = i % 8) != 0) {
                ib1.m3348case(ib1.m3354do(bArr, 0) << (8 - i2), bArr, 0);
            }
            return bArr;
        }
        byte[] bArr2 = new byte[i4];
        System.arraycopy(bArr, 0, bArr2, i4 - bArr.length, bArr.length);
        if (f32673new && (i3 = i % 8) != 0) {
            ib1.m3348case(ib1.m3354do(bArr2, 0) << (8 - i3), bArr2, 0);
        }
        return bArr2;
    }

    @Override // java.security.SecureRandom
    public byte[] generateSeed(int i) {
        byte[] bArr = new byte[i];
        nextBytes(bArr);
        return bArr;
    }

    public boolean isExhausted() {
        return this._index == this._data.length;
    }

    @Override // java.security.SecureRandom, java.util.Random
    public void nextBytes(byte[] bArr) {
        System.arraycopy(this._data, this._index, bArr, 0, bArr.length);
        this._index += bArr.length;
    }

    @Override // java.util.Random
    public int nextInt() {
        return (m36382for() << 24) | 0 | (m36382for() << 16) | (m36382for() << 8) | m36382for();
    }

    @Override // java.util.Random
    public long nextLong() {
        return (m36382for() << 56) | 0 | (m36382for() << 48) | (m36382for() << 40) | (m36382for() << 32) | (m36382for() << 24) | (m36382for() << 16) | (m36382for() << 8) | m36382for();
    }
}
