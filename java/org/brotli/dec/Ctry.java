package org.brotli.dec;

import java.io.IOException;

/* renamed from: org.brotli.dec.try, reason: invalid class name */
/* loaded from: classes3.dex */
final class Ctry {

    /* renamed from: break, reason: not valid java name */
    private static final int f32904break = 18;

    /* renamed from: case, reason: not valid java name */
    private static final int f32905case = 6;

    /* renamed from: class, reason: not valid java name */
    private static final int f32907class = 16;

    /* renamed from: do, reason: not valid java name */
    private static final int f32909do = 8;

    /* renamed from: else, reason: not valid java name */
    private static final int f32910else = 2;

    /* renamed from: for, reason: not valid java name */
    private static final int f32912for = 256;

    /* renamed from: goto, reason: not valid java name */
    private static final int f32913goto = 8;

    /* renamed from: if, reason: not valid java name */
    private static final int f32914if = 16;

    /* renamed from: new, reason: not valid java name */
    private static final int f32915new = 704;

    /* renamed from: this, reason: not valid java name */
    private static final int f32917this = 255;

    /* renamed from: try, reason: not valid java name */
    private static final int f32918try = 26;

    /* renamed from: catch, reason: not valid java name */
    private static final int[] f32906catch = {1, 2, 3, 4, 0, 5, 17, 6, 16, 7, 8, 9, 10, 11, 12, 13, 14, 15};

    /* renamed from: const, reason: not valid java name */
    private static final int[] f32908const = {3, 2, 1, 0, 3, 3, 3, 3, 3, 3, 2, 2, 2, 2, 2, 2};

    /* renamed from: final, reason: not valid java name */
    private static final int[] f32911final = {0, 0, 0, 0, -1, 1, -2, 2, -3, 3, -1, 1, -2, 2, -3, 3};

    /* renamed from: super, reason: not valid java name */
    private static final int[] f32916super = {131072, 131076, 131075, 196610, 131072, 131076, 131075, 262145, 131072, 131076, 131075, 196610, 131072, 131076, 131075, 262149};

    /* renamed from: break, reason: not valid java name */
    private static void m36678break(byte[] bArr, int i) {
        int[] iArr = new int[256];
        for (int i2 = 0; i2 < 256; i2++) {
            iArr[i2] = i2;
        }
        for (int i3 = 0; i3 < i; i3++) {
            int i4 = bArr[i3] & 255;
            bArr[i3] = (byte) iArr[i4];
            if (i4 != 0) {
                m36681class(iArr, i4);
            }
        }
    }

    /* renamed from: case, reason: not valid java name */
    private static void m36679case(Cclass cclass) {
        m36688if(cclass, 0);
        int i = cclass.f32843throw[1];
        int i2 = i << 6;
        cclass.f32832package = i2;
        int i3 = cclass.f32822finally[i2] & 255;
        cclass.f32837static = i3;
        cclass.f32840switch = cclass.f32813catch.f32872for[i3];
        byte b = cclass.f32820extends[i];
        int[] iArr = Cnew.f32880if;
        cclass.f32810abstract = iArr[b];
        cclass.f32816continue = iArr[b + 1];
    }

    /* renamed from: catch, reason: not valid java name */
    private static void m36680catch(Cclass cclass) {
        int i;
        int i2 = cclass.c;
        long j = i2;
        long j2 = cclass.e;
        if (j > j2) {
            while (true) {
                int i3 = i2 >> 1;
                if (i3 <= ((int) j2) + cclass.f.length) {
                    break;
                } else {
                    i2 = i3;
                }
            }
            if (!cclass.f32824goto && i2 < 16384 && cclass.c >= 16384) {
                i2 = 16384;
            }
        }
        int i4 = cclass.d;
        if (i2 <= i4) {
            return;
        }
        byte[] bArr = new byte[i2 + 37];
        byte[] bArr2 = cclass.f32831new;
        if (bArr2 != null) {
            System.arraycopy(bArr2, 0, bArr, 0, i4);
        } else {
            byte[] bArr3 = cclass.f;
            if (bArr3.length != 0) {
                int length = bArr3.length;
                int i5 = cclass.b;
                if (length > i5) {
                    i = length - i5;
                } else {
                    i5 = length;
                    i = 0;
                }
                System.arraycopy(bArr3, i, bArr, 0, i5);
                cclass.f32827import = i5;
                cclass.g = i5;
            }
        }
        cclass.f32831new = bArr;
        cclass.d = i2;
    }

    /* renamed from: class, reason: not valid java name */
    private static void m36681class(int[] iArr, int i) {
        int i2 = iArr[i];
        while (i > 0) {
            iArr[i] = iArr[i - 1];
            i--;
        }
        iArr[0] = i2;
    }

    /* renamed from: const, reason: not valid java name */
    private static int m36682const(int[] iArr, int i, Cdo cdo) {
        Cdo.m36663new(cdo);
        int iM36689import = m36689import(iArr, i, cdo);
        return Cbreak.f32784do[iM36689import] + Cdo.m36664this(cdo, Cbreak.f32788if[iM36689import]);
    }

    /* renamed from: do, reason: not valid java name */
    private static void m36683do(Cclass cclass) throws IOException {
        Cdo cdo = cclass.f32823for;
        byte[] bArr = cclass.f32831new;
        int i = cclass.f32819else;
        if (i <= 0) {
            Cdo.m36657catch(cdo);
            cclass.f32818do = 1;
            return;
        }
        int iMin = Math.min(cclass.d - cclass.f32827import, i);
        Cdo.m36660for(cdo, bArr, cclass.f32827import, iMin);
        cclass.f32819else -= iMin;
        int i2 = cclass.f32827import + iMin;
        cclass.f32827import = i2;
        int i3 = cclass.d;
        if (i2 != i3) {
            Cdo.m36657catch(cdo);
            cclass.f32818do = 1;
        } else {
            cclass.f32825if = 5;
            cclass.l = i3;
            cclass.k = 0;
            cclass.f32818do = 12;
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static void m36684else(Cdo cdo, Cclass cclass) {
        boolean z = Cdo.m36664this(cdo, 1) == 1;
        cclass.f32824goto = z;
        cclass.f32819else = 0;
        cclass.f32842this = false;
        cclass.f32811break = false;
        if (!z || Cdo.m36664this(cdo, 1) == 0) {
            int iM36664this = Cdo.m36664this(cdo, 2) + 4;
            if (iM36664this == 7) {
                cclass.f32811break = true;
                if (Cdo.m36664this(cdo, 1) != 0) {
                    throw new Cfor("Corrupted reserved bit");
                }
                int iM36664this2 = Cdo.m36664this(cdo, 2);
                if (iM36664this2 == 0) {
                    return;
                }
                for (int i = 0; i < iM36664this2; i++) {
                    int iM36664this3 = Cdo.m36664this(cdo, 8);
                    if (iM36664this3 == 0 && i + 1 == iM36664this2 && iM36664this2 > 1) {
                        throw new Cfor("Exuberant nibble");
                    }
                    cclass.f32819else = (iM36664this3 << (i * 8)) | cclass.f32819else;
                }
            } else {
                for (int i2 = 0; i2 < iM36664this; i2++) {
                    int iM36664this4 = Cdo.m36664this(cdo, 4);
                    if (iM36664this4 == 0 && i2 + 1 == iM36664this && iM36664this > 4) {
                        throw new Cfor("Exuberant nibble");
                    }
                    cclass.f32819else = (iM36664this4 << (i2 * 4)) | cclass.f32819else;
                }
            }
            cclass.f32819else++;
            if (cclass.f32824goto) {
                return;
            }
            cclass.f32842this = Cdo.m36664this(cdo, 1) == 1;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:58:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00e8  */
    /* renamed from: final, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m36685final(int i, int[] iArr, int i2, Cdo cdo) throws IOException {
        Cdo.m36655break(cdo);
        int[] iArr2 = new int[i];
        int iM36664this = Cdo.m36664this(cdo, 2);
        boolean z = true;
        if (iM36664this == 1) {
            int i3 = i - 1;
            int[] iArr3 = new int[4];
            int iM36664this2 = Cdo.m36664this(cdo, 2) + 1;
            int i4 = 0;
            while (i3 != 0) {
                i3 >>= 1;
                i4++;
            }
            for (int i5 = 0; i5 < iM36664this2; i5++) {
                iArr3[i5] = Cdo.m36664this(cdo, i4) % i;
                iArr2[iArr3[i5]] = 2;
            }
            iArr2[iArr3[0]] = 1;
            if (iM36664this2 != 1) {
                if (iM36664this2 == 2) {
                    z = iArr3[0] != iArr3[1];
                    iArr2[iArr3[1]] = 1;
                } else if (iM36664this2 != 3) {
                    boolean z2 = (iArr3[0] == iArr3[1] || iArr3[0] == iArr3[2] || iArr3[0] == iArr3[3] || iArr3[1] == iArr3[2] || iArr3[1] == iArr3[3] || iArr3[2] == iArr3[3]) ? false : true;
                    if (Cdo.m36664this(cdo, 1) == 1) {
                        iArr2[iArr3[2]] = 3;
                        iArr2[iArr3[3]] = 3;
                    } else {
                        iArr2[iArr3[0]] = 2;
                    }
                    z = z2;
                } else if (iArr3[0] != iArr3[1] && iArr3[0] != iArr3[2] && iArr3[1] != iArr3[2]) {
                    z = true;
                }
            }
            if (z) {
                throw new Cfor("Can't readHuffmanCode");
            }
            Celse.m36666do(iArr, i2, 8, iArr2, i);
            return;
        }
        int[] iArr4 = new int[18];
        int i6 = 32;
        int i7 = 0;
        while (iM36664this < 18 && i6 > 0) {
            int i8 = f32906catch[iM36664this];
            Cdo.m36663new(cdo);
            long j = cdo.f32858case;
            int i9 = cdo.f32860else;
            int i10 = ((int) (j >>> i9)) & 15;
            int[] iArr5 = f32916super;
            cdo.f32860else = i9 + (iArr5[i10] >> 16);
            int i11 = iArr5[i10] & 65535;
            iArr4[i8] = i11;
            if (i11 != 0) {
                i6 -= 32 >> i11;
                i7++;
            }
            iM36664this++;
        }
        z = i7 == 1 || i6 == 0;
        m36694super(iArr4, i, iArr2, cdo);
        z = z;
        if (z) {
        }
    }

    /* renamed from: for, reason: not valid java name */
    private static void m36686for(Cclass cclass) {
        m36688if(cclass, 1);
        cclass.f32838strictfp = cclass.f32814class.f32872for[cclass.f32843throw[3]];
    }

    /* renamed from: goto, reason: not valid java name */
    private static int m36687goto(Cdo cdo) {
        if (Cdo.m36664this(cdo, 1) == 0) {
            return 0;
        }
        int iM36664this = Cdo.m36664this(cdo, 3);
        if (iM36664this == 0) {
            return 1;
        }
        return Cdo.m36664this(cdo, iM36664this) + (1 << iM36664this);
    }

    /* renamed from: if, reason: not valid java name */
    private static void m36688if(Cclass cclass, int i) {
        Cdo cdo = cclass.f32823for;
        int[] iArr = cclass.f32843throw;
        int i2 = i * 2;
        Cdo.m36663new(cdo);
        int[] iArr2 = cclass.f32846try;
        int i3 = i * Celse.f32867do;
        int iM36689import = m36689import(iArr2, i3, cdo);
        cclass.f32821final[i] = m36682const(cclass.f32812case, i3, cdo);
        int i4 = iM36689import == 1 ? iArr[i2 + 1] + 1 : iM36689import == 0 ? iArr[i2] : iM36689import - 2;
        int[] iArr3 = cclass.f32839super;
        if (i4 >= iArr3[i]) {
            i4 -= iArr3[i];
        }
        int i5 = i2 + 1;
        iArr[i2] = iArr[i5];
        iArr[i5] = i4;
    }

    /* renamed from: import, reason: not valid java name */
    private static int m36689import(int[] iArr, int i, Cdo cdo) {
        long j = cdo.f32858case;
        int i2 = cdo.f32860else;
        int i3 = (int) (j >>> i2);
        int i4 = i + (i3 & 255);
        int i5 = iArr[i4] >> 16;
        int i6 = iArr[i4] & 65535;
        if (i5 <= 8) {
            cdo.f32860else = i2 + i5;
            return i6;
        }
        int i7 = i4 + i6 + ((((1 << i5) - 1) & i3) >>> 8);
        cdo.f32860else = i2 + (iArr[i7] >> 16) + 8;
        return iArr[i7] & 65535;
    }

    /* renamed from: native, reason: not valid java name */
    public static void m36690native(Cclass cclass, byte[] bArr) {
        if (bArr == null) {
            bArr = new byte[0];
        }
        cclass.f = bArr;
    }

    /* renamed from: new, reason: not valid java name */
    private static int m36691new(int i, byte[] bArr, Cdo cdo) throws IOException {
        Cdo.m36655break(cdo);
        int iM36687goto = m36687goto(cdo) + 1;
        if (iM36687goto == 1) {
            Cfinal.m36670do(bArr, 0, i);
            return iM36687goto;
        }
        int iM36664this = Cdo.m36664this(cdo, 1) == 1 ? Cdo.m36664this(cdo, 4) + 1 : 0;
        int[] iArr = new int[Celse.f32867do];
        m36685final(iM36687goto + iM36664this, iArr, 0, cdo);
        int i2 = 0;
        while (i2 < i) {
            Cdo.m36655break(cdo);
            Cdo.m36663new(cdo);
            int iM36689import = m36689import(iArr, 0, cdo);
            if (iM36689import == 0) {
                bArr[i2] = 0;
            } else if (iM36689import <= iM36664this) {
                for (int iM36664this2 = (1 << iM36689import) + Cdo.m36664this(cdo, iM36689import); iM36664this2 != 0; iM36664this2--) {
                    if (i2 >= i) {
                        throw new Cfor("Corrupted context map");
                    }
                    bArr[i2] = 0;
                    i2++;
                }
            } else {
                bArr[i2] = (byte) (iM36689import - iM36664this);
            }
            i2++;
        }
        if (Cdo.m36664this(cdo, 1) == 1) {
            m36678break(bArr, i);
        }
        return iM36687goto;
    }

    /* renamed from: public, reason: not valid java name */
    private static int m36692public(int i, int[] iArr, int i2) {
        return i < 16 ? iArr[(i2 + f32908const[i]) & 3] + f32911final[i] : (i - 16) + 1;
    }

    /* renamed from: return, reason: not valid java name */
    private static boolean m36693return(Cclass cclass) {
        int i = cclass.g;
        if (i != 0) {
            cclass.k += i;
            cclass.g = 0;
        }
        int iMin = Math.min(cclass.i - cclass.j, cclass.l - cclass.k);
        if (iMin != 0) {
            System.arraycopy(cclass.f32831new, cclass.k, cclass.m, cclass.h + cclass.j, iMin);
            cclass.j += iMin;
            cclass.k += iMin;
        }
        return cclass.j < cclass.i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0080, code lost:
    
        if (r4 != 0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0082, code lost:
    
        org.brotli.dec.Cfinal.m36671if(r13, r3, r12 - r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0086, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x008f, code lost:
    
        throw new org.brotli.dec.Cfor("Unused space");
     */
    /* renamed from: super, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static void m36694super(int[] iArr, int i, int[] iArr2, Cdo cdo) throws IOException {
        int[] iArr3 = new int[32];
        Celse.m36666do(iArr3, 0, 5, iArr, 18);
        int i2 = 8;
        int i3 = 0;
        int i4 = 32768;
        int i5 = 0;
        loop0: while (true) {
            int i6 = 0;
            while (i3 < i && i4 > 0) {
                Cdo.m36655break(cdo);
                Cdo.m36663new(cdo);
                long j = cdo.f32858case;
                int i7 = cdo.f32860else;
                int i8 = ((int) (j >>> i7)) & 31;
                cdo.f32860else = i7 + (iArr3[i8] >> 16);
                int i9 = iArr3[i8] & 65535;
                if (i9 < 16) {
                    int i10 = i3 + 1;
                    iArr2[i3] = i9;
                    if (i9 != 0) {
                        i4 -= 32768 >> i9;
                        i3 = i10;
                        i2 = i9;
                    } else {
                        i3 = i10;
                    }
                } else {
                    int i11 = i9 - 14;
                    int i12 = i9 == 16 ? i2 : 0;
                    if (i5 != i12) {
                        i5 = i12;
                        i6 = 0;
                    }
                    int iM36664this = (i6 > 0 ? (i6 - 2) << i11 : i6) + Cdo.m36664this(cdo, i11) + 3;
                    int i13 = iM36664this - i6;
                    if (i3 + i13 > i) {
                        throw new Cfor("symbol + repeatDelta > numSymbols");
                    }
                    int i14 = 0;
                    while (i14 < i13) {
                        iArr2[i3] = i5;
                        i14++;
                        i3++;
                    }
                    if (i5 != 0) {
                        i4 -= i13 << (15 - i5);
                    }
                    i6 = iM36664this;
                }
            }
            break loop0;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x00a7, code lost:
    
        throw new org.brotli.dec.Cfor("Invalid backward reference");
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:162:0x00da A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:163:0x01f6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x00d6 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:171:0x030b A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:180:0x0013 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:181:0x0013 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:194:0x0306 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:196:? A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:48:0x013c A[LOOP:2: B:48:0x013c->B:192:?, LOOP_START] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x017f  */
    /* renamed from: this, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m36695this(Cclass cclass) throws IOException {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7 = cclass.f32818do;
        if (i7 == 0) {
            throw new IllegalStateException("Can't decompress until initialized");
        }
        if (i7 == 11) {
            throw new IllegalStateException("Can't decompress after close");
        }
        Cdo cdo = cclass.f32823for;
        int i8 = cclass.d - 1;
        byte[] bArr = cclass.f32831new;
        while (true) {
            int i9 = cclass.f32818do;
            if (i9 == 10) {
                if (i9 == 10) {
                    if (cclass.f32819else < 0) {
                        throw new Cfor("Invalid metablock length");
                    }
                    Cdo.m36659else(cdo);
                    Cdo.m36658do(cclass.f32823for, true);
                    return;
                }
                return;
            }
            if (i9 != 12) {
                int i10 = 0;
                switch (i9) {
                    case 1:
                        if (cclass.f32819else < 0) {
                            throw new Cfor("Invalid metablock length");
                        }
                        m36698while(cclass);
                        i8 = cclass.d - 1;
                        bArr = cclass.f32831new;
                        break;
                    case 2:
                        m36696throw(cclass);
                        cclass.f32818do = 3;
                        if (cclass.f32819else > 0) {
                            cclass.f32818do = 1;
                            break;
                        } else {
                            Cdo.m36655break(cdo);
                            if (cclass.f32821final[1] == 0) {
                                m36686for(cclass);
                            }
                            int[] iArr = cclass.f32821final;
                            iArr[1] = iArr[1] - 1;
                            Cdo.m36663new(cdo);
                            int iM36689import = m36689import(cclass.f32814class.f32873if, cclass.f32838strictfp, cdo);
                            int i11 = iM36689import >>> 6;
                            cclass.f32847volatile = 0;
                            if (i11 >= 2) {
                                i11 -= 2;
                                cclass.f32847volatile = -1;
                            }
                            int i12 = Cbreak.f32785else[i11] + ((iM36689import >>> 3) & 7);
                            int i13 = Cbreak.f32787goto[i11] + (iM36689import & 7);
                            cclass.f32817default = Cbreak.f32786for[i12] + Cdo.m36664this(cdo, Cbreak.f32789new[i12]);
                            cclass.f32841synchronized = Cbreak.f32790try[i13] + Cdo.m36664this(cdo, Cbreak.f32783case[i13]);
                            cclass.f32844throws = 0;
                            cclass.f32818do = 6;
                            if (cclass.f32836return) {
                                int i14 = cclass.f32827import;
                                int i15 = bArr[(i14 - 1) & i8] & 255;
                                int i16 = bArr[(i14 - 2) & i8] & 255;
                                while (true) {
                                    if (cclass.f32844throws < cclass.f32817default) {
                                        Cdo.m36655break(cdo);
                                        if (cclass.f32821final[0] == 0) {
                                            m36679case(cclass);
                                        }
                                        byte[] bArr2 = cclass.f32822finally;
                                        int i17 = cclass.f32832package;
                                        int[] iArr2 = Cnew.f32879do;
                                        int i18 = bArr2[i17 + (iArr2[cclass.f32816continue + i16] | iArr2[cclass.f32810abstract + i15])] & 255;
                                        int[] iArr3 = cclass.f32821final;
                                        iArr3[0] = iArr3[0] - 1;
                                        Cdo.m36663new(cdo);
                                        Cgoto cgoto = cclass.f32813catch;
                                        int iM36689import2 = m36689import(cgoto.f32873if, cgoto.f32872for[i18], cdo);
                                        int i19 = cclass.f32827import;
                                        bArr[i19] = (byte) iM36689import2;
                                        cclass.f32844throws++;
                                        cclass.f32827import = i19 + 1;
                                        if (i19 == i8) {
                                            cclass.f32825if = 6;
                                            cclass.l = cclass.d;
                                            cclass.k = 0;
                                            cclass.f32818do = 12;
                                        } else {
                                            int i20 = i15;
                                            i15 = iM36689import2;
                                            i16 = i20;
                                        }
                                    }
                                }
                            } else {
                                while (true) {
                                    if (cclass.f32844throws < cclass.f32817default) {
                                        Cdo.m36655break(cdo);
                                        if (cclass.f32821final[0] == 0) {
                                            m36679case(cclass);
                                        }
                                        int[] iArr4 = cclass.f32821final;
                                        iArr4[0] = iArr4[0] - 1;
                                        Cdo.m36663new(cdo);
                                        bArr[cclass.f32827import] = (byte) m36689import(cclass.f32813catch.f32873if, cclass.f32840switch, cdo);
                                        cclass.f32844throws++;
                                        int i21 = cclass.f32827import;
                                        cclass.f32827import = i21 + 1;
                                        if (i21 == i8) {
                                            cclass.f32825if = 6;
                                            cclass.l = cclass.d;
                                            cclass.k = 0;
                                            cclass.f32818do = 12;
                                        }
                                    }
                                }
                            }
                            if (cclass.f32818do == 6) {
                                continue;
                            } else {
                                int i22 = cclass.f32819else - cclass.f32817default;
                                cclass.f32819else = i22;
                                if (i22 <= 0) {
                                    cclass.f32818do = 3;
                                    break;
                                } else {
                                    if (cclass.f32847volatile < 0) {
                                        Cdo.m36655break(cdo);
                                        if (cclass.f32821final[2] == 0) {
                                            m36697try(cclass);
                                        }
                                        int[] iArr5 = cclass.f32821final;
                                        iArr5[2] = iArr5[2] - 1;
                                        Cdo.m36663new(cdo);
                                        Cgoto cgoto2 = cclass.f32815const;
                                        int[] iArr6 = cgoto2.f32873if;
                                        int[] iArr7 = cgoto2.f32872for;
                                        byte[] bArr3 = cclass.f32829interface;
                                        int i23 = cclass.f32833private;
                                        int i24 = cclass.f32841synchronized;
                                        int iM36689import3 = m36689import(iArr6, iArr7[bArr3[i23 + (i24 > 4 ? 3 : i24 - 2)] & 255], cdo);
                                        cclass.f32847volatile = iM36689import3;
                                        int i25 = cclass.f32834protected;
                                        if (iM36689import3 >= i25) {
                                            int i26 = iM36689import3 - i25;
                                            cclass.f32847volatile = i26;
                                            int i27 = cclass.f32845transient & i26;
                                            int i28 = i26 >>> cclass.f32826implements;
                                            cclass.f32847volatile = i28;
                                            int i29 = (i28 >>> 1) + 1;
                                            cclass.f32847volatile = i25 + i27 + ((((((i28 & 1) + 2) << i29) - 4) + Cdo.m36664this(cdo, i29)) << cclass.f32826implements);
                                        }
                                    }
                                    int iM36692public = m36692public(cclass.f32847volatile, cclass.f32848while, cclass.f32835public);
                                    cclass.f32828instanceof = iM36692public;
                                    if (iM36692public < 0) {
                                        throw new Cfor("Negative distance");
                                    }
                                    int i30 = cclass.f32830native;
                                    int i31 = cclass.b;
                                    if (i30 == i31 || (i6 = cclass.f32827import) >= i31) {
                                        cclass.f32830native = i31;
                                    } else {
                                        cclass.f32830native = i6;
                                    }
                                    cclass.a = cclass.f32827import;
                                    if (iM36692public > cclass.f32830native) {
                                        cclass.f32818do = 9;
                                        break;
                                    } else {
                                        if (cclass.f32847volatile > 0) {
                                            int[] iArr8 = cclass.f32848while;
                                            int i32 = cclass.f32835public;
                                            iArr8[i32 & 3] = iM36692public;
                                            cclass.f32835public = i32 + 1;
                                        }
                                        if (cclass.f32841synchronized > cclass.f32819else) {
                                            throw new Cfor("Invalid backward reference");
                                        }
                                        cclass.f32844throws = 0;
                                        cclass.f32818do = 7;
                                        int i33 = cclass.f32827import;
                                        i = (i33 - cclass.f32828instanceof) & i8;
                                        i2 = cclass.f32841synchronized - cclass.f32844throws;
                                        if (i + i2 < i8 || i33 + i2 >= i8) {
                                            do {
                                                i3 = cclass.f32844throws;
                                                if (i3 >= cclass.f32841synchronized) {
                                                    i4 = cclass.f32827import;
                                                    bArr[i4] = bArr[(i4 - cclass.f32828instanceof) & i8];
                                                    cclass.f32819else--;
                                                    cclass.f32844throws = i3 + 1;
                                                    cclass.f32827import = i4 + 1;
                                                }
                                            } while (i4 != i8);
                                            i5 = 7;
                                            cclass.f32825if = 7;
                                            cclass.l = cclass.d;
                                            cclass.k = 0;
                                            cclass.f32818do = 12;
                                            if (cclass.f32818do != i5) {
                                                break;
                                            } else {
                                                cclass.f32818do = 3;
                                                break;
                                            }
                                        } else {
                                            while (i10 < i2) {
                                                bArr[i33] = bArr[i];
                                                i10++;
                                                i33++;
                                                i++;
                                            }
                                            cclass.f32844throws += i2;
                                            cclass.f32819else -= i2;
                                            cclass.f32827import += i2;
                                        }
                                        i5 = 7;
                                        if (cclass.f32818do != i5) {
                                        }
                                    }
                                }
                            }
                        }
                        break;
                    case 3:
                        if (cclass.f32819else > 0) {
                        }
                        break;
                    case 4:
                        while (cclass.f32819else > 0) {
                            Cdo.m36655break(cdo);
                            Cdo.m36664this(cdo, 8);
                            cclass.f32819else--;
                        }
                        cclass.f32818do = 1;
                        break;
                    case 5:
                        m36683do(cclass);
                        break;
                    case 6:
                        if (cclass.f32836return) {
                        }
                        if (cclass.f32818do == 6) {
                        }
                        break;
                    case 7:
                        int i332 = cclass.f32827import;
                        i = (i332 - cclass.f32828instanceof) & i8;
                        i2 = cclass.f32841synchronized - cclass.f32844throws;
                        if (i + i2 < i8) {
                            do {
                                i3 = cclass.f32844throws;
                                if (i3 >= cclass.f32841synchronized) {
                                }
                            } while (i4 != i8);
                            i5 = 7;
                            cclass.f32825if = 7;
                            cclass.l = cclass.d;
                            cclass.k = 0;
                            cclass.f32818do = 12;
                            if (cclass.f32818do != i5) {
                            }
                            break;
                        }
                        break;
                    case 8:
                        int i34 = cclass.d;
                        System.arraycopy(bArr, i34, bArr, 0, cclass.a - i34);
                        cclass.f32818do = 3;
                        break;
                    case 9:
                        int i35 = cclass.f32841synchronized;
                        if (i35 < 4 || i35 > 24) {
                            break;
                        } else {
                            int i36 = Ccase.f32791do[i35];
                            int i37 = (cclass.f32828instanceof - cclass.f32830native) - 1;
                            int i38 = Ccase.f32793if[i35];
                            int i39 = ((1 << i38) - 1) & i37;
                            int i40 = i37 >>> i38;
                            int i41 = i36 + (i39 * i35);
                            Cconst[] cconstArr = Cconst.f32849new;
                            if (i40 >= cconstArr.length) {
                                throw new Cfor("Invalid backward reference");
                            }
                            int iM36654if = Cconst.m36654if(bArr, cclass.a, Ccase.m36646do(), i41, cclass.f32841synchronized, cconstArr[i40]);
                            int i42 = cclass.a + iM36654if;
                            cclass.a = i42;
                            cclass.f32827import += iM36654if;
                            cclass.f32819else -= iM36654if;
                            int i43 = cclass.d;
                            if (i42 < i43) {
                                cclass.f32818do = 3;
                                break;
                            } else {
                                cclass.f32825if = 8;
                                cclass.l = i43;
                                cclass.k = 0;
                                cclass.f32818do = 12;
                                break;
                            }
                        }
                        break;
                    default:
                        throw new Cfor("Unexpected state " + cclass.f32818do);
                }
            } else {
                if (!m36693return(cclass)) {
                    return;
                }
                int i44 = cclass.f32827import;
                int i45 = cclass.b;
                if (i44 >= i45) {
                    cclass.f32830native = i45;
                }
                cclass.f32827import = i44 & i8;
                cclass.f32818do = cclass.f32825if;
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private static void m36696throw(Cclass cclass) throws IOException {
        int[] iArr;
        int[] iArr2;
        Cdo cdo = cclass.f32823for;
        for (int i = 0; i < 3; i++) {
            cclass.f32839super[i] = m36687goto(cdo) + 1;
            cclass.f32821final[i] = 268435456;
            int[] iArr3 = cclass.f32839super;
            if (iArr3[i] > 1) {
                int i2 = iArr3[i] + 2;
                int[] iArr4 = cclass.f32846try;
                int i3 = i * Celse.f32867do;
                m36685final(i2, iArr4, i3, cdo);
                m36685final(26, cclass.f32812case, i3, cdo);
                cclass.f32821final[i] = m36682const(cclass.f32812case, i3, cdo);
            }
        }
        Cdo.m36655break(cdo);
        cclass.f32826implements = Cdo.m36664this(cdo, 2);
        int iM36664this = Cdo.m36664this(cdo, 4);
        int i4 = cclass.f32826implements;
        int i5 = (iM36664this << i4) + 16;
        cclass.f32834protected = i5;
        cclass.f32845transient = (1 << i4) - 1;
        int i6 = i5 + (48 << i4);
        cclass.f32820extends = new byte[cclass.f32839super[0]];
        int i7 = 0;
        while (true) {
            iArr = cclass.f32839super;
            if (i7 >= iArr[0]) {
                break;
            }
            int iMin = Math.min(i7 + 96, iArr[0]);
            while (i7 < iMin) {
                cclass.f32820extends[i7] = (byte) (Cdo.m36664this(cdo, 2) << 1);
                i7++;
            }
            Cdo.m36655break(cdo);
        }
        byte[] bArr = new byte[iArr[0] << 6];
        cclass.f32822finally = bArr;
        int iM36691new = m36691new(iArr[0] << 6, bArr, cdo);
        cclass.f32836return = true;
        int i8 = 0;
        while (true) {
            iArr2 = cclass.f32839super;
            if (i8 >= (iArr2[0] << 6)) {
                break;
            }
            if (cclass.f32822finally[i8] != (i8 >> 6)) {
                cclass.f32836return = false;
                break;
            }
            i8++;
        }
        byte[] bArr2 = new byte[iArr2[2] << 2];
        cclass.f32829interface = bArr2;
        int iM36691new2 = m36691new(iArr2[2] << 2, bArr2, cdo);
        Cgoto.m36673if(cclass.f32813catch, 256, iM36691new);
        Cgoto.m36673if(cclass.f32814class, 704, cclass.f32839super[1]);
        Cgoto.m36673if(cclass.f32815const, i6, iM36691new2);
        Cgoto.m36672do(cclass.f32813catch, cdo);
        Cgoto.m36672do(cclass.f32814class, cdo);
        Cgoto.m36672do(cclass.f32815const, cdo);
        cclass.f32832package = 0;
        cclass.f32833private = 0;
        int[] iArr5 = Cnew.f32880if;
        byte[] bArr3 = cclass.f32820extends;
        cclass.f32810abstract = iArr5[bArr3[0]];
        cclass.f32816continue = iArr5[bArr3[0] + 1];
        cclass.f32837static = 0;
        cclass.f32840switch = cclass.f32813catch.f32872for[0];
        cclass.f32838strictfp = cclass.f32814class.f32872for[0];
        int[] iArr6 = cclass.f32843throw;
        iArr6[4] = 1;
        iArr6[2] = 1;
        iArr6[0] = 1;
        iArr6[5] = 0;
        iArr6[3] = 0;
        iArr6[1] = 0;
    }

    /* renamed from: try, reason: not valid java name */
    private static void m36697try(Cclass cclass) {
        m36688if(cclass, 2);
        cclass.f32833private = cclass.f32843throw[5] << 2;
    }

    /* renamed from: while, reason: not valid java name */
    private static void m36698while(Cclass cclass) throws IOException {
        Cdo cdo = cclass.f32823for;
        if (cclass.f32824goto) {
            cclass.f32825if = 10;
            cclass.l = cclass.f32827import;
            cclass.k = 0;
            cclass.f32818do = 12;
            return;
        }
        Cgoto cgoto = cclass.f32813catch;
        cgoto.f32873if = null;
        cgoto.f32872for = null;
        Cgoto cgoto2 = cclass.f32814class;
        cgoto2.f32873if = null;
        cgoto2.f32872for = null;
        Cgoto cgoto3 = cclass.f32815const;
        cgoto3.f32873if = null;
        cgoto3.f32872for = null;
        Cdo.m36655break(cdo);
        m36684else(cdo, cclass);
        if (cclass.f32819else != 0 || cclass.f32811break) {
            if (cclass.f32842this || cclass.f32811break) {
                Cdo.m36659else(cdo);
                cclass.f32818do = cclass.f32811break ? 4 : 5;
            } else {
                cclass.f32818do = 2;
            }
            if (cclass.f32811break) {
                return;
            }
            cclass.e += cclass.f32819else;
            if (cclass.d < cclass.c) {
                m36680catch(cclass);
            }
        }
    }
}
