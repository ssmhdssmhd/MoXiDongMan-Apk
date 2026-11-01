package org.bouncycastle.pqc.crypto.sphincs;

/* renamed from: org.bouncycastle.pqc.crypto.sphincs.goto, reason: invalid class name */
/* loaded from: classes3.dex */
class Cgoto {

    /* renamed from: org.bouncycastle.pqc.crypto.sphincs.goto$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        public int f32342do;

        /* renamed from: for, reason: not valid java name */
        public long f32343for;

        /* renamed from: if, reason: not valid java name */
        public long f32344if;

        public Cdo() {
        }

        public Cdo(Cdo cdo) {
            this.f32342do = cdo.f32342do;
            this.f32344if = cdo.f32344if;
            this.f32343for = cdo.f32343for;
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m35791do(org.bouncycastle.pqc.crypto.sphincs.Cdo cdo, byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, Cdo cdo2) {
        byte[] bArr4 = new byte[32];
        byte[] bArr5 = new byte[Cthis.f32362case];
        Cthis cthis = new Cthis();
        Celse.m35786do(cdo, bArr4, 0, bArr3, cdo2);
        cthis.m35801new(cdo, bArr5, 0, bArr4, 0, bArr2, i2);
        m35793if(cdo, bArr, i, bArr5, 0, bArr2, i2);
    }

    /* renamed from: for, reason: not valid java name */
    public static void m35792for(org.bouncycastle.pqc.crypto.sphincs.Cdo cdo, byte[] bArr, int i, int i2, byte[] bArr2, Cdo cdo2, byte[] bArr3, int i3) {
        Cdo cdo3 = new Cdo(cdo2);
        int i4 = i2 + 1;
        byte[] bArr4 = new byte[i4 * 32];
        int[] iArr = new int[i4];
        int i5 = 1;
        int i6 = (int) (cdo3.f32343for + (1 << i2));
        int i7 = 0;
        while (cdo3.f32343for < i6) {
            m35791do(cdo, bArr4, i7 * 32, bArr3, i3, bArr2, cdo3);
            iArr[i7] = 0;
            int i8 = i7 + i5;
            while (i8 > i5) {
                int i9 = i8 - 1;
                int i10 = i8 - 2;
                if (iArr[i9] == iArr[i10]) {
                    int i11 = i10 * 32;
                    int[] iArr2 = iArr;
                    cdo.m35782for(bArr4, i11, bArr4, i11, bArr3, i3 + ((iArr[i9] + 7) * 2 * 32));
                    iArr2[i10] = iArr2[i10] + 1;
                    i8--;
                    i6 = i6;
                    iArr = iArr2;
                    i5 = 1;
                }
            }
            cdo3.f32343for++;
            i7 = i8;
            i6 = i6;
            iArr = iArr;
            i5 = 1;
        }
        for (int i12 = 0; i12 < 32; i12++) {
            bArr[i + i12] = bArr4[i12];
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static void m35793if(org.bouncycastle.pqc.crypto.sphincs.Cdo cdo, byte[] bArr, int i, byte[] bArr2, int i2, byte[] bArr3, int i3) {
        int i4;
        int i5 = 67;
        for (int i6 = 0; i6 < 7; i6++) {
            int i7 = 0;
            while (true) {
                i4 = i5 >>> 1;
                if (i7 >= i4) {
                    break;
                }
                cdo.m35782for(bArr2, i2 + (i7 * 32), bArr2, i2 + (i7 * 2 * 32), bArr3, i3 + (i6 * 2 * 32));
                i7++;
            }
            if ((i5 & 1) != 0) {
                System.arraycopy(bArr2, i2 + ((i5 - 1) * 32), bArr2, (i4 * 32) + i2, 32);
                i4++;
            }
            i5 = i4;
        }
        System.arraycopy(bArr2, i2, bArr, i, 32);
    }
}
