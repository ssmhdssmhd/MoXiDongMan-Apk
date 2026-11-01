package org.objectweb.asm;

import android.support.v4.ay0;
import android.support.v4.d2;
import android.support.v4.ee;
import android.support.v4.f92;
import android.support.v4.o4;
import android.support.v4.p92;
import android.support.v4.ti0;
import android.support.v4.xz0;
import com.qmuiteam.qmui.widget.QMUIProgressBar;

/* renamed from: org.objectweb.asm.catch, reason: invalid class name */
/* loaded from: classes3.dex */
class Ccatch extends xz0 {
    private int a;

    /* renamed from: abstract, reason: not valid java name */
    private int[] f33962abstract;
    private ee b;

    /* renamed from: break, reason: not valid java name */
    public int f33963break;
    private int c;

    /* renamed from: case, reason: not valid java name */
    private final int f33964case;

    /* renamed from: catch, reason: not valid java name */
    public int f33965catch;

    /* renamed from: class, reason: not valid java name */
    public int[] f33966class;

    /* renamed from: const, reason: not valid java name */
    private ee f33967const;

    /* renamed from: continue, reason: not valid java name */
    private int f33968continue;
    private Cdo d;

    /* renamed from: default, reason: not valid java name */
    private int f33969default;
    private Cdo e;

    /* renamed from: else, reason: not valid java name */
    private final String f33970else;

    /* renamed from: extends, reason: not valid java name */
    private int f33971extends;
    private o4 f;

    /* renamed from: final, reason: not valid java name */
    private Cdo f33972final;

    /* renamed from: finally, reason: not valid java name */
    private ee f33973finally;

    /* renamed from: for, reason: not valid java name */
    public final Cfor f33974for;
    private boolean g;

    /* renamed from: goto, reason: not valid java name */
    public String f33975goto;
    private int h;
    private final int i;

    /* renamed from: implements, reason: not valid java name */
    private ee f33976implements;

    /* renamed from: import, reason: not valid java name */
    private Cdo[] f33977import;

    /* renamed from: instanceof, reason: not valid java name */
    private int f33978instanceof;

    /* renamed from: interface, reason: not valid java name */
    private int f33979interface;
    private Cbreak j;
    private Cbreak k;
    private Cbreak l;
    private int m;
    private int n;

    /* renamed from: native, reason: not valid java name */
    private Cdo[] f33980native;

    /* renamed from: new, reason: not valid java name */
    private int f33981new;

    /* renamed from: package, reason: not valid java name */
    private int f33982package;

    /* renamed from: private, reason: not valid java name */
    private int[] f33983private;

    /* renamed from: protected, reason: not valid java name */
    private ee f33984protected;

    /* renamed from: public, reason: not valid java name */
    private int f33985public;

    /* renamed from: return, reason: not valid java name */
    private o4 f33986return;

    /* renamed from: static, reason: not valid java name */
    private ee f33987static;

    /* renamed from: strictfp, reason: not valid java name */
    private Cgoto f33988strictfp;

    /* renamed from: super, reason: not valid java name */
    private Cdo f33989super;

    /* renamed from: switch, reason: not valid java name */
    private int f33990switch;

    /* renamed from: synchronized, reason: not valid java name */
    private ee f33991synchronized;

    /* renamed from: this, reason: not valid java name */
    public int f33992this;

    /* renamed from: throw, reason: not valid java name */
    private Cdo f33993throw;

    /* renamed from: throws, reason: not valid java name */
    private int f33994throws;

    /* renamed from: transient, reason: not valid java name */
    private int f33995transient;

    /* renamed from: try, reason: not valid java name */
    private final int f33996try;

    /* renamed from: volatile, reason: not valid java name */
    private Cgoto f33997volatile;

    /* renamed from: while, reason: not valid java name */
    private Cdo f33998while;

    public Ccatch(Cfor cfor, int i, String str, String str2, String str3, String[] strArr, boolean z, boolean z2) {
        super(Opcodes.ASM5);
        this.f33987static = new ee();
        if (cfor.f34030implements == null) {
            cfor.f34030implements = this;
        } else {
            cfor.f34032instanceof.f8065if = this;
        }
        cfor.f34032instanceof = this;
        this.f33974for = cfor;
        this.f33981new = i;
        if ("<init>".equals(str)) {
            this.f33981new |= 524288;
        }
        this.f33996try = cfor.c(str);
        this.f33964case = cfor.c(str2);
        this.f33970else = str2;
        this.f33975goto = str3;
        if (strArr != null && strArr.length > 0) {
            int length = strArr.length;
            this.f33965catch = length;
            this.f33966class = new int[length];
            for (int i2 = 0; i2 < this.f33965catch; i2++) {
                this.f33966class[i2] = cfor.m37992interface(strArr[i2]);
            }
        }
        this.i = z2 ? 0 : z ? 1 : 2;
        if (z || z2) {
            int iM2218this = f92.m2218this(this.f33970else) >> 2;
            iM2218this = (i & 8) != 0 ? iM2218this - 1 : iM2218this;
            this.f33994throws = iM2218this;
            this.f33969default = iM2218this;
            Cbreak cbreak = new Cbreak();
            this.j = cbreak;
            cbreak.f33947if |= 8;
            mo9638final(cbreak);
        }
    }

    private void a(Cbreak cbreak, Cbreak[] cbreakArr) {
        Cbreak cbreak2 = this.l;
        if (cbreak2 != null) {
            if (this.i == 0) {
                cbreak2.f33949this.m37974case(171, 0, null, null);
                m37950implements(0, cbreak);
                cbreak.m37941do().f33947if |= 16;
                for (int i = 0; i < cbreakArr.length; i++) {
                    m37950implements(0, cbreakArr[i]);
                    cbreakArr[i].m37941do().f33947if |= 16;
                }
            } else {
                int i2 = this.m - 1;
                this.m = i2;
                m37950implements(i2, cbreak);
                for (Cbreak cbreak3 : cbreakArr) {
                    m37950implements(this.m, cbreak3);
                }
            }
            j();
        }
    }

    public static void b(byte[] bArr, int i, int i2) {
        bArr[i] = (byte) (i2 >>> 8);
        bArr[i + 1] = (byte) i2;
    }

    public static void c(int[] iArr, int[] iArr2, Cbreak cbreak) {
        if ((cbreak.f33947if & 4) == 0) {
            cbreak.f33948new = m37952protected(iArr, iArr2, 0, cbreak.f33948new);
            cbreak.f33947if |= 4;
        }
    }

    public static short d(byte[] bArr, int i) {
        return (short) ((bArr[i + 1] & 255) | ((bArr[i] & 255) << 8));
    }

    private void e() {
        if (this.f33983private != null) {
            if (this.f33973finally == null) {
                this.f33973finally = new ee();
            }
            h();
            this.f33971extends++;
        }
        this.f33983private = this.f33962abstract;
        this.f33962abstract = null;
    }

    private void f(Celse celse) {
        int[] iArr = celse.f34013if;
        int[] iArr2 = celse.f34011for;
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i2 < iArr.length) {
            int i5 = iArr[i2];
            i4++;
            if (i5 != 16777216) {
                i3 += i4;
                i4 = 0;
            }
            if (i5 == 16777220 || i5 == 16777219) {
                i2++;
            }
            i2++;
        }
        int i6 = 0;
        int i7 = 0;
        while (i6 < iArr2.length) {
            int i8 = iArr2[i6];
            i7++;
            if (i8 == 16777220 || i8 == 16777219) {
                i6++;
            }
            i6++;
        }
        int iM37955volatile = m37955volatile(celse.f34009do.f33948new, i3, i7);
        int i9 = 0;
        while (i3 > 0) {
            int i10 = iArr[i9];
            int i11 = iM37955volatile + 1;
            this.f33962abstract[iM37955volatile] = i10;
            if (i10 == 16777220 || i10 == 16777219) {
                i9++;
            }
            i9++;
            i3--;
            iM37955volatile = i11;
        }
        while (i < iArr2.length) {
            int i12 = iArr2[i];
            int i13 = iM37955volatile + 1;
            this.f33962abstract[iM37955volatile] = i12;
            if (i12 == 16777220 || i12 == 16777219) {
                i++;
            }
            i++;
            iM37955volatile = i13;
        }
        e();
    }

    public static int g(byte[] bArr, int i) {
        return (bArr[i + 1] & 255) | ((bArr[i] & 255) << 8);
    }

    private void h() {
        int i;
        char c;
        ee eeVarM1808try;
        int[] iArr = this.f33962abstract;
        int i2 = iArr[1];
        int i3 = iArr[2];
        int i4 = 0;
        if ((this.f33974for.f34035new & 65535) < 50) {
            this.f33973finally.m1807this(iArr[0]).m1807this(i2);
            int i5 = i2 + 3;
            m37954transient(3, i5);
            this.f33973finally.m1807this(i3);
            m37954transient(i5, i3 + i5);
            return;
        }
        int[] iArr2 = this.f33983private;
        int i6 = iArr2[1];
        int i7 = this.f33971extends == 0 ? iArr[0] : (iArr[0] - iArr2[0]) - 1;
        if (i3 == 0) {
            i = i2 - i6;
            switch (i) {
                case -3:
                case -2:
                case -1:
                    i6 = i2;
                    c = 248;
                    break;
                case 0:
                    if (i7 >= 64) {
                        c = 251;
                        break;
                    } else {
                        c = 0;
                        break;
                    }
                case 1:
                case 2:
                case 3:
                    c = 252;
                    break;
                default:
                    c = 255;
                    break;
            }
        } else if (i2 == i6 && i3 == 1) {
            c = i7 < 63 ? '@' : (char) 247;
            i = 0;
        } else {
            i = 0;
            c = 255;
        }
        if (c != 255) {
            int i8 = 3;
            while (true) {
                if (i4 < i6) {
                    if (this.f33962abstract[i8] != this.f33983private[i8]) {
                        c = 255;
                    } else {
                        i8++;
                        i4++;
                    }
                }
            }
        }
        if (c == 0) {
            this.f33973finally.m1808try(i7);
            return;
        }
        if (c == '@') {
            this.f33973finally.m1808try(i7 + 64);
        } else {
            if (c != 247) {
                if (c == 248) {
                    eeVarM1808try = this.f33973finally.m1808try(i + 251);
                } else {
                    if (c != 251) {
                        if (c == 252) {
                            this.f33973finally.m1808try(i + 251).m1807this(i7);
                            m37954transient(i6 + 3, i2 + 3);
                            return;
                        }
                        this.f33973finally.m1808try(255).m1807this(i7).m1807this(i2);
                        int i9 = i2 + 3;
                        m37954transient(3, i9);
                        this.f33973finally.m1807this(i3);
                        m37954transient(i9, i3 + i9);
                        return;
                    }
                    eeVarM1808try = this.f33973finally.m1808try(251);
                }
                eeVarM1808try.m1807this(i7);
                return;
            }
            this.f33973finally.m1808try(247).m1807this(i7);
        }
        m37954transient(i2 + 3, i2 + 4);
    }

    private void i() {
        int i;
        char c;
        int iD;
        int i2;
        int iD2;
        int i3;
        int i4;
        ee eeVar = this.f33987static;
        byte[] bArr = eeVar.f1402do;
        int[] iArr = new int[0];
        int[] iArr2 = new int[0];
        boolean[] zArr = new boolean[eeVar.f1403if];
        int i5 = 3;
        do {
            if (i5 == 3) {
                i5 = 2;
            }
            int iM37951interface = 0;
            while (true) {
                i = 218;
                c = 132;
                if (iM37951interface < bArr.length) {
                    int i6 = bArr[iM37951interface] & 255;
                    switch (Cfor.e[i6]) {
                        case 0:
                        case 4:
                            iM37951interface++;
                            i3 = 0;
                            break;
                        case 1:
                        case 3:
                        case 11:
                            iM37951interface += 2;
                            i3 = 0;
                            break;
                        case 2:
                        case 5:
                        case 6:
                        case 12:
                        case 13:
                            iM37951interface += 3;
                            i3 = 0;
                            break;
                        case 7:
                        case 8:
                        case 10:
                            iM37951interface += 5;
                            i3 = 0;
                            break;
                        case 9:
                            if (i6 > 201) {
                                i6 = i6 < 218 ? i6 - 49 : i6 - 20;
                                iD2 = g(bArr, iM37951interface + 1);
                            } else {
                                iD2 = d(bArr, iM37951interface + 1);
                            }
                            int iM37952protected = m37952protected(iArr, iArr2, iM37951interface, iD2 + iM37951interface);
                            if ((iM37952protected < -32768 || iM37952protected > 32767) && !zArr[iM37951interface]) {
                                int i7 = (i6 == 167 || i6 == 168) ? 2 : 5;
                                zArr[iM37951interface] = true;
                                i3 = i7;
                            } else {
                                i3 = 0;
                            }
                            iM37951interface += 3;
                            break;
                        case 14:
                            if (i5 == 1) {
                                i4 = -(m37952protected(iArr, iArr2, 0, iM37951interface) & 3);
                            } else if (zArr[iM37951interface]) {
                                i3 = 0;
                                int i8 = (iM37951interface + 4) - (iM37951interface & 3);
                                iM37951interface = i8 + (((m37951interface(bArr, i8 + 8) - m37951interface(bArr, i8 + 4)) + 1) * 4) + 12;
                                break;
                            } else {
                                i4 = iM37951interface & 3;
                                zArr[iM37951interface] = true;
                            }
                            i3 = i4;
                            int i82 = (iM37951interface + 4) - (iM37951interface & 3);
                            iM37951interface = i82 + (((m37951interface(bArr, i82 + 8) - m37951interface(bArr, i82 + 4)) + 1) * 4) + 12;
                        case 15:
                            if (i5 == 1) {
                                i3 = -(m37952protected(iArr, iArr2, 0, iM37951interface) & 3);
                            } else if (zArr[iM37951interface]) {
                                i3 = 0;
                            } else {
                                i3 = iM37951interface & 3;
                                zArr[iM37951interface] = true;
                            }
                            int i9 = (iM37951interface + 4) - (iM37951interface & 3);
                            iM37951interface = i9 + (m37951interface(bArr, i9 + 4) * 8) + 8;
                            break;
                        case 17:
                            if ((bArr[iM37951interface + 1] & 255) == 132) {
                                iM37951interface += 6;
                            }
                            i3 = 0;
                            break;
                        case 16:
                        default:
                            iM37951interface += 4;
                            i3 = 0;
                            break;
                    }
                    if (i3 != 0) {
                        int[] iArr3 = new int[iArr.length + 1];
                        int[] iArr4 = new int[iArr2.length + 1];
                        System.arraycopy(iArr, 0, iArr3, 0, iArr.length);
                        System.arraycopy(iArr2, 0, iArr4, 0, iArr2.length);
                        iArr3[iArr.length] = iM37951interface;
                        iArr4[iArr2.length] = i3;
                        iArr = iArr3;
                        iArr2 = iArr4;
                        if (i3 > 0) {
                            i5 = 3;
                        }
                    }
                } else if (i5 < 3) {
                    i5--;
                }
            }
        } while (i5 != 0);
        ee eeVar2 = new ee(this.f33987static.f1403if);
        int i10 = 0;
        while (i10 < this.f33987static.f1403if) {
            int i11 = bArr[i10] & 255;
            switch (Cfor.e[i11]) {
                case 0:
                case 4:
                    eeVar2.m1808try(i11);
                    i10++;
                    break;
                case 1:
                case 3:
                case 11:
                    eeVar2.m1801case(bArr, i10, 2);
                    i10 += 2;
                    break;
                case 2:
                case 5:
                case 6:
                case 12:
                case 13:
                    eeVar2.m1801case(bArr, i10, 3);
                    i10 += 3;
                    break;
                case 7:
                case 8:
                    eeVar2.m1801case(bArr, i10, 5);
                    i10 += 5;
                    break;
                case 9:
                    if (i11 > 201) {
                        i11 = i11 < i ? i11 - 49 : i11 - 20;
                        iD = g(bArr, i10 + 1);
                    } else {
                        iD = d(bArr, i10 + 1);
                    }
                    int iM37952protected2 = m37952protected(iArr, iArr2, i10, iD + i10);
                    if (zArr[i10]) {
                        if (i11 == 167) {
                            eeVar2.m1808try(200);
                        } else if (i11 == 168) {
                            eeVar2.m1808try(201);
                        } else {
                            eeVar2.m1808try(i11 <= 166 ? ((i11 + 1) ^ 1) - 1 : i11 ^ 1);
                            eeVar2.m1807this(8);
                            eeVar2.m1808try(200);
                            iM37952protected2 -= 3;
                        }
                        eeVar2.m1803else(iM37952protected2);
                    } else {
                        eeVar2.m1808try(i11);
                        eeVar2.m1807this(iM37952protected2);
                    }
                    i10 += 3;
                    break;
                case 10:
                    int iM37952protected3 = m37952protected(iArr, iArr2, i10, m37951interface(bArr, i10 + 1) + i10);
                    eeVar2.m1808try(i11);
                    eeVar2.m1803else(iM37952protected3);
                    i10 += 5;
                    break;
                case 14:
                    int i12 = (i10 + 4) - (i10 & 3);
                    eeVar2.m1808try(170);
                    eeVar2.m1801case(null, 0, (4 - (eeVar2.f1403if % 4)) % 4);
                    int iM37951interface2 = m37951interface(bArr, i12) + i10;
                    int i13 = i12 + 4;
                    eeVar2.m1803else(m37952protected(iArr, iArr2, i10, iM37951interface2));
                    int iM37951interface3 = m37951interface(bArr, i13);
                    int i14 = i13 + 4;
                    eeVar2.m1803else(iM37951interface3);
                    i2 = i14 + 4;
                    eeVar2.m1803else(m37951interface(bArr, i2 - 4));
                    for (int iM37951interface4 = (m37951interface(bArr, i14) - iM37951interface3) + 1; iM37951interface4 > 0; iM37951interface4--) {
                        int iM37951interface5 = m37951interface(bArr, i2) + i10;
                        i2 += 4;
                        eeVar2.m1803else(m37952protected(iArr, iArr2, i10, iM37951interface5));
                    }
                    i10 = i2;
                    break;
                case 15:
                    int i15 = (i10 + 4) - (i10 & 3);
                    eeVar2.m1808try(171);
                    eeVar2.m1801case(null, 0, (4 - (eeVar2.f1403if % 4)) % 4);
                    int iM37951interface6 = m37951interface(bArr, i15) + i10;
                    int i16 = i15 + 4;
                    eeVar2.m1803else(m37952protected(iArr, iArr2, i10, iM37951interface6));
                    int iM37951interface7 = m37951interface(bArr, i16);
                    i2 = i16 + 4;
                    eeVar2.m1803else(iM37951interface7);
                    while (iM37951interface7 > 0) {
                        eeVar2.m1803else(m37951interface(bArr, i2));
                        int i17 = i2 + 4;
                        int iM37951interface8 = m37951interface(bArr, i17) + i10;
                        i2 = i17 + 4;
                        eeVar2.m1803else(m37952protected(iArr, iArr2, i10, iM37951interface8));
                        iM37951interface7--;
                    }
                    i10 = i2;
                    break;
                case 16:
                default:
                    eeVar2.m1801case(bArr, i10, 4);
                    i10 += 4;
                    break;
                case 17:
                    if ((bArr[i10 + 1] & 255) == c) {
                        eeVar2.m1801case(bArr, i10, 6);
                        i10 += 6;
                    } else {
                        eeVar2.m1801case(bArr, i10, 4);
                        i10 += 4;
                    }
                    break;
            }
            i = 218;
            c = 132;
        }
        if (this.i == 0) {
            for (Cbreak cbreak = this.j; cbreak != null; cbreak = cbreak.f33939break) {
                int i18 = cbreak.f33948new - 3;
                if (i18 >= 0 && zArr[i18]) {
                    cbreak.f33947if |= 16;
                }
                c(iArr, iArr2, cbreak);
            }
            if (this.f33974for.f34021const != null) {
                int i19 = 0;
                while (true) {
                    Cthis[] cthisArr = this.f33974for.f34021const;
                    if (i19 < cthisArr.length) {
                        Cthis cthis = cthisArr[i19];
                        if (cthis != null && cthis.f34093if == 31) {
                            cthis.f34091for = m37952protected(iArr, iArr2, 0, cthis.f34091for);
                        }
                        i19++;
                    }
                }
            }
        } else if (this.f33971extends > 0) {
            this.f33974for.b = true;
        }
        for (Cgoto cgoto = this.f33988strictfp; cgoto != null; cgoto = cgoto.f34053case) {
            c(iArr, iArr2, cgoto.f34054do);
            c(iArr, iArr2, cgoto.f34056if);
            c(iArr, iArr2, cgoto.f34055for);
        }
        int i20 = 0;
        while (i20 < 2) {
            ee eeVar3 = i20 == 0 ? this.f33976implements : this.f33991synchronized;
            if (eeVar3 != null) {
                byte[] bArr2 = eeVar3.f1402do;
                for (int i21 = 0; i21 < eeVar3.f1403if; i21 += 10) {
                    int iG = g(bArr2, i21);
                    int iM37952protected4 = m37952protected(iArr, iArr2, 0, iG);
                    b(bArr2, i21, iM37952protected4);
                    int i22 = i21 + 2;
                    b(bArr2, i22, m37952protected(iArr, iArr2, 0, iG + g(bArr2, i22)) - iM37952protected4);
                }
            }
            i20++;
        }
        ee eeVar4 = this.b;
        if (eeVar4 != null) {
            byte[] bArr3 = eeVar4.f1402do;
            for (int i23 = 0; i23 < this.b.f1403if; i23 += 4) {
                b(bArr3, i23, m37952protected(iArr, iArr2, 0, g(bArr3, i23)));
            }
        }
        for (o4 o4Var = this.f; o4Var != null; o4Var = o4Var.f4409for) {
            Cbreak[] cbreakArrM5461new = o4Var.m5461new();
            if (cbreakArrM5461new != null) {
                for (int length = cbreakArrM5461new.length - 1; length >= 0; length--) {
                    c(iArr, iArr2, cbreakArrM5461new[length]);
                }
            }
        }
        this.f33987static = eeVar2;
    }

    /* renamed from: implements, reason: not valid java name */
    private void m37950implements(int i, Cbreak cbreak) {
        Ctry ctry = new Ctry();
        ctry.f34097do = i;
        ctry.f34099if = cbreak;
        Cbreak cbreak2 = this.l;
        ctry.f34098for = cbreak2.f33941catch;
        cbreak2.f33941catch = ctry;
    }

    /* renamed from: interface, reason: not valid java name */
    public static int m37951interface(byte[] bArr, int i) {
        return (bArr[i + 3] & 255) | ((bArr[i] & 255) << 24) | ((bArr[i + 1] & 255) << 16) | ((bArr[i + 2] & 255) << 8);
    }

    private void j() {
        if (this.i == 0) {
            Cbreak cbreak = new Cbreak();
            Celse celse = new Celse();
            cbreak.f33949this = celse;
            celse.f34009do = cbreak;
            ee eeVar = this.f33987static;
            cbreak.m37942else(this, eeVar.f1403if, eeVar.f1402do);
            this.k.f33939break = cbreak;
            this.k = cbreak;
        } else {
            this.l.f33946goto = this.n;
        }
        this.l = null;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x005a. Please report as an issue. */
    private void k() {
        int i;
        int i2;
        int i3;
        int iM37955volatile = m37955volatile(0, this.f33970else.length() + 1, 0);
        int i4 = this.f33981new;
        if ((i4 & 8) == 0) {
            if ((i4 & 524288) == 0) {
                int[] iArr = this.f33962abstract;
                i3 = iM37955volatile + 1;
                Cfor cfor = this.f33974for;
                iArr[iM37955volatile] = cfor.m37984abstract(cfor.f34052while) | 24117248;
            } else {
                i3 = iM37955volatile + 1;
                this.f33962abstract[iM37955volatile] = 6;
            }
            iM37955volatile = i3;
        }
        int i5 = 1;
        while (true) {
            int i6 = i5 + 1;
            char cCharAt = this.f33970else.charAt(i5);
            if (cCharAt == 'F') {
                i = iM37955volatile + 1;
                this.f33962abstract[iM37955volatile] = 2;
            } else if (cCharAt != 'L') {
                if (cCharAt != 'S' && cCharAt != 'I') {
                    if (cCharAt == 'J') {
                        i = iM37955volatile + 1;
                        this.f33962abstract[iM37955volatile] = 4;
                    } else if (cCharAt != 'Z') {
                        if (cCharAt != '[') {
                            switch (cCharAt) {
                                case 'D':
                                    i2 = iM37955volatile + 1;
                                    this.f33962abstract[iM37955volatile] = 3;
                                    break;
                            }
                            this.f33962abstract[1] = iM37955volatile - 3;
                            e();
                            return;
                        }
                        while (this.f33970else.charAt(i6) == '[') {
                            i6++;
                        }
                        if (this.f33970else.charAt(i6) == 'L') {
                            do {
                                i6++;
                            } while (this.f33970else.charAt(i6) != ';');
                        }
                        i2 = iM37955volatile + 1;
                        i6++;
                        this.f33962abstract[iM37955volatile] = this.f33974for.m37984abstract(this.f33970else.substring(i5, i6)) | 24117248;
                        i5 = i6;
                        iM37955volatile = i2;
                    }
                }
                i = iM37955volatile + 1;
                this.f33962abstract[iM37955volatile] = 1;
            } else {
                int i7 = i6;
                while (this.f33970else.charAt(i7) != ';') {
                    i7++;
                }
                this.f33962abstract[iM37955volatile] = this.f33974for.m37984abstract(this.f33970else.substring(i6, i7)) | 24117248;
                iM37955volatile++;
                i5 = i7 + 1;
            }
            iM37955volatile = i;
            i5 = i6;
        }
    }

    /* renamed from: protected, reason: not valid java name */
    public static int m37952protected(int[] iArr, int[] iArr2, int i, int i2) {
        int i3 = i2 - i;
        for (int i4 = 0; i4 < iArr.length; i4++) {
            if (i < iArr[i4] && iArr[i4] <= i2) {
                i3 += iArr2[i4];
            } else if (i2 < iArr[i4] && iArr[i4] <= i) {
                i3 -= iArr2[i4];
            }
        }
        return i3;
    }

    /* renamed from: synchronized, reason: not valid java name */
    private void m37953synchronized(Object obj) {
        ee eeVarM1808try;
        int iM37992interface;
        if (obj instanceof String) {
            eeVarM1808try = this.f33973finally.m1808try(7);
            iM37992interface = this.f33974for.m37992interface((String) obj);
        } else if (obj instanceof Integer) {
            this.f33973finally.m1808try(((Integer) obj).intValue());
            return;
        } else {
            eeVarM1808try = this.f33973finally.m1808try(8);
            iM37992interface = ((Cbreak) obj).f33948new;
        }
        eeVarM1808try.m1807this(iM37992interface);
    }

    /* renamed from: transient, reason: not valid java name */
    private void m37954transient(int i, int i2) {
        char c;
        ee eeVarM1808try;
        int iM37992interface;
        while (i < i2) {
            int i3 = this.f33962abstract[i];
            int i4 = (-268435456) & i3;
            if (i4 == 0) {
                int i5 = i3 & 1048575;
                int i6 = i3 & 267386880;
                if (i6 == 24117248) {
                    eeVarM1808try = this.f33973finally.m1808try(7);
                    Cfor cfor = this.f33974for;
                    iM37992interface = cfor.m37992interface(cfor.f34021const[i5].f34096try);
                } else if (i6 != 25165824) {
                    this.f33973finally.m1808try(i5);
                    i++;
                } else {
                    eeVarM1808try = this.f33973finally.m1808try(8);
                    iM37992interface = this.f33974for.f34021const[i5].f34091for;
                }
            } else {
                StringBuffer stringBuffer = new StringBuffer();
                int i7 = i4 >> 28;
                while (true) {
                    int i8 = i7 - 1;
                    if (i7 > 0) {
                        stringBuffer.append('[');
                        i7 = i8;
                    } else {
                        if ((i3 & 267386880) == 24117248) {
                            stringBuffer.append(ay0.f288try);
                            stringBuffer.append(this.f33974for.f34021const[i3 & 1048575].f34096try);
                            c = ';';
                        } else {
                            int i9 = i3 & 15;
                            if (i9 == 1) {
                                c = 'I';
                            } else if (i9 == 2) {
                                c = 'F';
                            } else if (i9 != 3) {
                                switch (i9) {
                                    case 9:
                                        c = ay0.f286for;
                                        break;
                                    case 10:
                                        c = 'B';
                                        break;
                                    case 11:
                                        c = 'C';
                                        break;
                                    case 12:
                                        c = 'S';
                                        break;
                                    default:
                                        c = 'J';
                                        break;
                                }
                            } else {
                                c = 'D';
                            }
                        }
                        stringBuffer.append(c);
                        eeVarM1808try = this.f33973finally.m1808try(7);
                        iM37992interface = this.f33974for.m37992interface(stringBuffer.toString());
                    }
                }
            }
            eeVarM1808try.m1807this(iM37992interface);
            i++;
        }
    }

    /* renamed from: volatile, reason: not valid java name */
    private int m37955volatile(int i, int i2, int i3) {
        int i4 = i2 + 3 + i3;
        int[] iArr = this.f33962abstract;
        if (iArr == null || iArr.length < i4) {
            this.f33962abstract = new int[i4];
        }
        int[] iArr2 = this.f33962abstract;
        iArr2[0] = i;
        iArr2[1] = i2;
        iArr2[2] = i3;
        return 3;
    }

    @Override // android.support.v4.xz0
    /* renamed from: abstract */
    public void mo9627abstract(int i, String str) {
        this.c = this.f33987static.f1403if;
        Cthis cthisM37995public = this.f33974for.m37995public(str);
        Cbreak cbreak = this.l;
        if (cbreak != null) {
            if (this.i == 0) {
                cbreak.f33949this.m37974case(i, this.f33987static.f1403if, this.f33974for, cthisM37995public);
            } else if (i == 187) {
                int i2 = this.m + 1;
                if (i2 > this.n) {
                    this.n = i2;
                }
                this.m = i2;
            }
        }
        this.f33987static.m1804for(i, cthisM37995public.f34089do);
    }

    @Override // android.support.v4.xz0
    /* renamed from: break */
    public d2 mo9628break(int i, p92 p92Var, String str, boolean z) {
        ee eeVar = new ee();
        Cdo.m37958else((i & QMUIProgressBar.f19440abstract) | (this.c << 8), p92Var, eeVar);
        eeVar.m1807this(this.f33974for.c(str)).m1807this(0);
        Cdo cdo = new Cdo(this.f33974for, true, eeVar, eeVar, eeVar.f1403if - 2);
        if (z) {
            cdo.f34005this = this.d;
            this.d = cdo;
        } else {
            cdo.f34005this = this.e;
            this.e = cdo;
        }
        return cdo;
    }

    @Override // android.support.v4.xz0
    /* renamed from: case */
    public void mo9629case(int i, String str, String str2, String str3) {
        int i2;
        int i3;
        this.c = this.f33987static.f1403if;
        Cthis cthisM37999switch = this.f33974for.m37999switch(str, str2, str3);
        Cbreak cbreak = this.l;
        if (cbreak != null) {
            if (this.i == 0) {
                cbreak.f33949this.m37974case(i, 0, this.f33974for, cthisM37999switch);
            } else {
                char cCharAt = str3.charAt(0);
                int i4 = -2;
                switch (i) {
                    case 178:
                        i2 = this.m + ((cCharAt == 'D' || cCharAt == 'J') ? 2 : 1);
                        break;
                    case 179:
                        i3 = this.m;
                        if (cCharAt != 'D' && cCharAt != 'J') {
                            i4 = -1;
                        }
                        i2 = i4 + i3;
                        break;
                    case 180:
                        i2 = this.m + ((cCharAt == 'D' || cCharAt == 'J') ? 1 : 0);
                        break;
                    default:
                        i3 = this.m;
                        if (cCharAt == 'D' || cCharAt == 'J') {
                            i4 = -3;
                        }
                        i2 = i4 + i3;
                        break;
                }
                if (i2 > this.n) {
                    this.n = i2;
                }
                this.m = i2;
            }
        }
        this.f33987static.m1804for(i, cthisM37999switch.f34089do);
    }

    @Override // android.support.v4.xz0
    /* renamed from: catch */
    public void mo9630catch(int i, int i2) {
        this.c = this.f33987static.f1403if;
        Cbreak cbreak = this.l;
        if (cbreak != null) {
            if (this.i == 0) {
                cbreak.f33949this.m37974case(i, i2, null, null);
            } else if (i != 188) {
                int i3 = this.m + 1;
                if (i3 > this.n) {
                    this.n = i3;
                }
                this.m = i3;
            }
        }
        if (i == 17) {
            this.f33987static.m1804for(i, i2);
        } else {
            this.f33987static.m1802do(i, i2);
        }
    }

    @Override // android.support.v4.xz0
    /* renamed from: class */
    public void mo9631class(String str, String str2, ti0 ti0Var, Object... objArr) {
        this.c = this.f33987static.f1403if;
        Cthis cthisM37997static = this.f33974for.m37997static(str, str2, ti0Var, objArr);
        int iM2218this = cthisM37997static.f34091for;
        Cbreak cbreak = this.l;
        if (cbreak != null) {
            if (this.i == 0) {
                cbreak.f33949this.m37974case(186, 0, this.f33974for, cthisM37997static);
            } else {
                if (iM2218this == 0) {
                    iM2218this = f92.m2218this(str2);
                    cthisM37997static.f34091for = iM2218this;
                }
                int i = (this.m - (iM2218this >> 2)) + (iM2218this & 3) + 1;
                if (i > this.n) {
                    this.n = i;
                }
                this.m = i;
            }
        }
        this.f33987static.m1804for(186, cthisM37997static.f34089do);
        this.f33987static.m1807this(0);
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x00a7  */
    @Override // android.support.v4.xz0
    /* renamed from: const */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void mo9632const(int i, Cbreak cbreak) {
        this.c = this.f33987static.f1403if;
        Cbreak cbreak2 = this.l;
        Cbreak cbreak3 = null;
        if (cbreak2 != null) {
            if (this.i == 0) {
                cbreak2.f33949this.m37974case(i, 0, null, null);
                cbreak.m37941do().f33947if |= 16;
                m37950implements(0, cbreak);
                if (i != 167) {
                    cbreak3 = new Cbreak();
                }
            } else if (i == 168) {
                int i2 = cbreak.f33947if;
                if ((i2 & 512) == 0) {
                    cbreak.f33947if = i2 | 512;
                    this.h++;
                }
                cbreak2.f33947if |= 128;
                m37950implements(this.m + 1, cbreak);
                cbreak3 = new Cbreak();
            } else {
                int i3 = this.m + Celse.f34007this[i];
                this.m = i3;
                m37950implements(i3, cbreak);
            }
        }
        if ((cbreak.f33947if & 2) != 0) {
            int i4 = cbreak.f33948new;
            ee eeVar = this.f33987static;
            if (i4 - eeVar.f1403if < -32768) {
                int i5 = 200;
                if (i == 167) {
                    eeVar.m1808try(i5);
                    ee eeVar2 = this.f33987static;
                    cbreak.m37945new(this, eeVar2, eeVar2.f1403if - 1, true);
                } else if (i == 168) {
                    i5 = 201;
                    eeVar.m1808try(i5);
                    ee eeVar22 = this.f33987static;
                    cbreak.m37945new(this, eeVar22, eeVar22.f1403if - 1, true);
                } else {
                    if (cbreak3 != null) {
                        cbreak3.f33947if |= 16;
                    }
                    eeVar.m1808try(i <= 166 ? ((i + 1) ^ 1) - 1 : i ^ 1);
                    this.f33987static.m1807this(8);
                    this.f33987static.m1808try(200);
                    ee eeVar222 = this.f33987static;
                    cbreak.m37945new(this, eeVar222, eeVar222.f1403if - 1, true);
                }
            } else {
                this.f33987static.m1808try(i);
                ee eeVar3 = this.f33987static;
                cbreak.m37945new(this, eeVar3, eeVar3.f1403if - 1, false);
            }
        }
        if (this.l != null) {
            if (cbreak3 != null) {
                mo9638final(cbreak3);
            }
            if (i == 167) {
                j();
            }
        }
    }

    @Override // android.support.v4.xz0
    /* renamed from: continue */
    public void mo9633continue(int i, int i2) {
        this.c = this.f33987static.f1403if;
        Cbreak cbreak = this.l;
        if (cbreak != null) {
            if (this.i == 0) {
                cbreak.f33949this.m37974case(i, i2, null, null);
            } else if (i == 169) {
                cbreak.f33947if |= 256;
                cbreak.f33944else = this.m;
                j();
            } else {
                int i3 = this.m + Celse.f34007this[i];
                if (i3 > this.n) {
                    this.n = i3;
                }
                this.m = i3;
            }
        }
        if (this.i != 2) {
            int i4 = (i == 22 || i == 24 || i == 55 || i == 57) ? i2 + 2 : i2 + 1;
            if (i4 > this.f33994throws) {
                this.f33994throws = i4;
            }
        }
        if (i2 >= 4 || i == 169) {
            ee eeVar = this.f33987static;
            if (i2 >= 256) {
                eeVar.m1808try(196).m1804for(i, i2);
            } else {
                eeVar.m1802do(i, i2);
            }
        } else {
            this.f33987static.m1808try((i < 54 ? ((i - 21) << 2) + 26 : ((i - 54) << 2) + 59) + i2);
        }
        if (i < 54 || this.i != 0 || this.f33968continue <= 0) {
            return;
        }
        mo9638final(new Cbreak());
    }

    @Override // android.support.v4.xz0
    /* renamed from: default */
    public d2 mo9634default(int i, String str, boolean z) {
        ee eeVar = new ee();
        if ("Ljava/lang/Synthetic;".equals(str)) {
            this.f33985public = Math.max(this.f33985public, i + 1);
            return new Cdo(this.f33974for, false, eeVar, null, 0);
        }
        eeVar.m1807this(this.f33974for.c(str)).m1807this(0);
        Cdo cdo = new Cdo(this.f33974for, true, eeVar, eeVar, 2);
        if (z) {
            if (this.f33977import == null) {
                this.f33977import = new Cdo[f92.m2200case(this.f33970else).length];
            }
            Cdo[] cdoArr = this.f33977import;
            cdo.f34005this = cdoArr[i];
            cdoArr[i] = cdo;
        } else {
            if (this.f33980native == null) {
                this.f33980native = new Cdo[f92.m2200case(this.f33970else).length];
            }
            Cdo[] cdoArr2 = this.f33980native;
            cdo.f34005this = cdoArr2[i];
            cdoArr2[i] = cdo;
        }
        return cdo;
    }

    @Override // android.support.v4.xz0
    /* renamed from: do */
    public d2 mo9635do(String str, boolean z) {
        ee eeVar = new ee();
        eeVar.m1807this(this.f33974for.c(str)).m1807this(0);
        Cdo cdo = new Cdo(this.f33974for, true, eeVar, eeVar, 2);
        if (z) {
            cdo.f34005this = this.f33972final;
            this.f33972final = cdo;
        } else {
            cdo.f34005this = this.f33989super;
            this.f33989super = cdo;
        }
        return cdo;
    }

    @Override // android.support.v4.xz0
    /* renamed from: else */
    public void mo9636else(int i, int i2, Object[] objArr, int i3, Object[] objArr2) {
        int i4;
        ee eeVar;
        int i5;
        int i6;
        if (this.i == 0) {
            return;
        }
        int i7 = 0;
        if (i == -1) {
            if (this.f33983private == null) {
                k();
            }
            this.f33969default = i2;
            int iM37955volatile = m37955volatile(this.f33987static.f1403if, i2, i3);
            for (int i8 = 0; i8 < i2; i8++) {
                if (objArr[i8] instanceof String) {
                    i6 = iM37955volatile + 1;
                    this.f33962abstract[iM37955volatile] = 24117248 | this.f33974for.m37984abstract((String) objArr[i8]);
                } else if (objArr[i8] instanceof Integer) {
                    i6 = iM37955volatile + 1;
                    this.f33962abstract[iM37955volatile] = ((Integer) objArr[i8]).intValue();
                } else {
                    this.f33962abstract[iM37955volatile] = this.f33974for.m37986const("", ((Cbreak) objArr[i8]).f33948new) | 25165824;
                    iM37955volatile++;
                }
                iM37955volatile = i6;
            }
            while (i7 < i3) {
                if (objArr2[i7] instanceof String) {
                    i5 = iM37955volatile + 1;
                    this.f33962abstract[iM37955volatile] = this.f33974for.m37984abstract((String) objArr2[i7]) | 24117248;
                } else if (objArr2[i7] instanceof Integer) {
                    i5 = iM37955volatile + 1;
                    this.f33962abstract[iM37955volatile] = ((Integer) objArr2[i7]).intValue();
                } else {
                    i5 = iM37955volatile + 1;
                    this.f33962abstract[iM37955volatile] = this.f33974for.m37986const("", ((Cbreak) objArr2[i7]).f33948new) | 25165824;
                }
                iM37955volatile = i5;
                i7++;
            }
            e();
        } else {
            if (this.f33973finally == null) {
                this.f33973finally = new ee();
                i4 = this.f33987static.f1403if;
            } else {
                i4 = (this.f33987static.f1403if - this.f33982package) - 1;
                if (i4 < 0) {
                    if (i != 3) {
                        throw new IllegalStateException();
                    }
                    return;
                }
            }
            if (i == 0) {
                this.f33969default = i2;
                this.f33973finally.m1808try(255).m1807this(i4).m1807this(i2);
                for (int i9 = 0; i9 < i2; i9++) {
                    m37953synchronized(objArr[i9]);
                }
                this.f33973finally.m1807this(i3);
                while (i7 < i3) {
                    m37953synchronized(objArr2[i7]);
                    i7++;
                }
            } else if (i != 1) {
                int i10 = 251;
                if (i == 2) {
                    this.f33969default -= i2;
                    eeVar = this.f33973finally;
                    i10 = 251 - i2;
                } else if (i == 3) {
                    eeVar = this.f33973finally;
                    if (i4 < 64) {
                        eeVar.m1808try(i4);
                    }
                } else if (i == 4) {
                    ee eeVar2 = this.f33973finally;
                    if (i4 < 64) {
                        eeVar2.m1808try(i4 + 64);
                    } else {
                        eeVar2.m1808try(247).m1807this(i4);
                    }
                    m37953synchronized(objArr2[0]);
                }
                eeVar.m1808try(i10).m1807this(i4);
            } else {
                this.f33969default += i2;
                this.f33973finally.m1808try(i2 + 251).m1807this(i4);
                while (i7 < i2) {
                    m37953synchronized(objArr[i7]);
                    i7++;
                }
            }
            this.f33982package = this.f33987static.f1403if;
            this.f33971extends++;
        }
        this.f33990switch = Math.max(this.f33990switch, i3);
        this.f33994throws = Math.max(this.f33994throws, this.f33969default);
    }

    @Override // android.support.v4.xz0
    /* renamed from: extends */
    public void mo9637extends(int i, int i2, Cbreak cbreak, Cbreak... cbreakArr) {
        ee eeVar = this.f33987static;
        int i3 = eeVar.f1403if;
        this.c = i3;
        eeVar.m1808try(170);
        ee eeVar2 = this.f33987static;
        eeVar2.m1801case(null, 0, (4 - (eeVar2.f1403if % 4)) % 4);
        cbreak.m37945new(this, this.f33987static, i3, true);
        this.f33987static.m1803else(i).m1803else(i2);
        for (Cbreak cbreak2 : cbreakArr) {
            cbreak2.m37945new(this, this.f33987static, i3, true);
        }
        a(cbreak, cbreakArr);
    }

    @Override // android.support.v4.xz0
    /* renamed from: final */
    public void mo9638final(Cbreak cbreak) {
        Cbreak cbreak2;
        boolean z = this.g;
        ee eeVar = this.f33987static;
        this.g = z | cbreak.m37942else(this, eeVar.f1403if, eeVar.f1402do);
        int i = cbreak.f33947if;
        if ((i & 1) != 0) {
            return;
        }
        int i2 = this.i;
        if (i2 == 0) {
            Cbreak cbreak3 = this.l;
            if (cbreak3 != null) {
                if (cbreak.f33948new == cbreak3.f33948new) {
                    cbreak3.f33947if = (i & 16) | cbreak3.f33947if;
                    cbreak.f33949this = cbreak3.f33949this;
                    return;
                }
                m37950implements(0, cbreak);
            }
            this.l = cbreak;
            if (cbreak.f33949this == null) {
                Celse celse = new Celse();
                cbreak.f33949this = celse;
                celse.f34009do = cbreak;
            }
            cbreak2 = this.k;
            if (cbreak2 != null) {
                if (cbreak.f33948new == cbreak2.f33948new) {
                    cbreak2.f33947if |= cbreak.f33947if & 16;
                    cbreak.f33949this = cbreak2.f33949this;
                    this.l = cbreak2;
                    return;
                }
                cbreak2.f33939break = cbreak;
            }
        } else {
            if (i2 != 1) {
                return;
            }
            Cbreak cbreak4 = this.l;
            if (cbreak4 != null) {
                cbreak4.f33946goto = this.n;
                m37950implements(this.m, cbreak);
            }
            this.l = cbreak;
            this.m = 0;
            this.n = 0;
            cbreak2 = this.k;
            if (cbreak2 != null) {
                cbreak2.f33939break = cbreak;
            }
        }
        this.k = cbreak;
    }

    @Override // android.support.v4.xz0
    /* renamed from: finally */
    public d2 mo9639finally(int i, p92 p92Var, String str, boolean z) {
        ee eeVar = new ee();
        Cdo.m37958else(i, p92Var, eeVar);
        eeVar.m1807this(this.f33974for.c(str)).m1807this(0);
        Cdo cdo = new Cdo(this.f33974for, true, eeVar, eeVar, eeVar.f1403if - 2);
        if (z) {
            cdo.f34005this = this.d;
            this.d = cdo;
        } else {
            cdo.f34005this = this.e;
            this.e = cdo;
        }
        return cdo;
    }

    @Override // android.support.v4.xz0
    /* renamed from: for */
    public void mo9640for(o4 o4Var) {
        if (o4Var.m5462try()) {
            o4Var.f4409for = this.f;
            this.f = o4Var;
        } else {
            o4Var.f4409for = this.f33986return;
            this.f33986return = o4Var;
        }
    }

    @Override // android.support.v4.xz0
    /* renamed from: goto */
    public void mo9641goto(int i, int i2) {
        int i3;
        this.c = this.f33987static.f1403if;
        Cbreak cbreak = this.l;
        if (cbreak != null && this.i == 0) {
            cbreak.f33949this.m37974case(132, i, null, null);
        }
        if (this.i != 2 && (i3 = i + 1) > this.f33994throws) {
            this.f33994throws = i3;
        }
        if (i > 255 || i2 > 127 || i2 < -128) {
            this.f33987static.m1808try(196).m1804for(132, i).m1807this(i2);
        } else {
            this.f33987static.m1808try(132).m1802do(i, i2);
        }
    }

    @Override // android.support.v4.xz0
    /* renamed from: if */
    public d2 mo9642if() {
        ee eeVar = new ee();
        this.f33967const = eeVar;
        return new Cdo(this.f33974for, false, eeVar, null, 0);
    }

    @Override // android.support.v4.xz0
    /* renamed from: import */
    public d2 mo9643import(int i, p92 p92Var, Cbreak[] cbreakArr, Cbreak[] cbreakArr2, int[] iArr, String str, boolean z) {
        ee eeVar = new ee();
        eeVar.m1808try(i >>> 24).m1807this(cbreakArr.length);
        for (int i2 = 0; i2 < cbreakArr.length; i2++) {
            eeVar.m1807this(cbreakArr[i2].f33948new).m1807this(cbreakArr2[i2].f33948new - cbreakArr[i2].f33948new).m1807this(iArr[i2]);
        }
        if (p92Var == null) {
            eeVar.m1808try(0);
        } else {
            byte[] bArr = p92Var.f4883do;
            int i3 = p92Var.f4884if;
            eeVar.m1801case(bArr, i3, (bArr[i3] * 2) + 1);
        }
        eeVar.m1807this(this.f33974for.c(str)).m1807this(0);
        Cdo cdo = new Cdo(this.f33974for, true, eeVar, eeVar, eeVar.f1403if - 2);
        if (z) {
            cdo.f34005this = this.d;
            this.d = cdo;
        } else {
            cdo.f34005this = this.e;
            this.e = cdo;
        }
        return cdo;
    }

    /* JADX WARN: Removed duplicated region for block: B:131:0x027f  */
    /* renamed from: instanceof, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void m37956instanceof(ee eeVar) {
        String str;
        int i;
        int i2 = this.f33981new;
        eeVar.m1807this(i2 & ((((i2 & 262144) / 64) | 917504) ^ (-1))).m1807this(this.f33996try).m1807this(this.f33964case);
        int i3 = this.f33992this;
        if (i3 != 0) {
            eeVar.m1801case(this.f33974for.f34028for.f34063do, i3, this.f33963break);
            return;
        }
        int iM5456do = this.f33987static.f1403if > 0 ? 1 : 0;
        if (this.f33965catch > 0) {
            iM5456do++;
        }
        int i4 = this.f33981new;
        if ((i4 & 4096) != 0 && ((this.f33974for.f34035new & 65535) < 49 || (i4 & 262144) != 0)) {
            iM5456do++;
        }
        if ((i4 & 131072) != 0) {
            iM5456do++;
        }
        if (this.f33975goto != null) {
            iM5456do++;
        }
        if (this.f33984protected != null) {
            iM5456do++;
        }
        if (this.f33967const != null) {
            iM5456do++;
        }
        if (this.f33972final != null) {
            iM5456do++;
        }
        if (this.f33989super != null) {
            iM5456do++;
        }
        if (this.f33993throw != null) {
            iM5456do++;
        }
        if (this.f33998while != null) {
            iM5456do++;
        }
        if (this.f33977import != null) {
            iM5456do++;
        }
        if (this.f33980native != null) {
            iM5456do++;
        }
        o4 o4Var = this.f33986return;
        if (o4Var != null) {
            iM5456do += o4Var.m5456do();
        }
        eeVar.m1807this(iM5456do);
        int i5 = this.f33987static.f1403if;
        if (i5 > 0) {
            int iM5460if = i5 + 12 + (this.f33968continue * 8);
            ee eeVar2 = this.f33976implements;
            if (eeVar2 != null) {
                iM5460if += eeVar2.f1403if + 8;
            }
            ee eeVar3 = this.f33991synchronized;
            if (eeVar3 != null) {
                iM5460if += eeVar3.f1403if + 8;
            }
            ee eeVar4 = this.b;
            if (eeVar4 != null) {
                iM5460if += eeVar4.f1403if + 8;
            }
            ee eeVar5 = this.f33973finally;
            if (eeVar5 != null) {
                iM5460if += eeVar5.f1403if + 8;
            }
            Cdo cdo = this.d;
            if (cdo != null) {
                iM5460if += cdo.m37960case() + 8;
            }
            Cdo cdo2 = this.e;
            if (cdo2 != null) {
                iM5460if += cdo2.m37960case() + 8;
            }
            o4 o4Var2 = this.f;
            if (o4Var2 != null) {
                Cfor cfor = this.f33974for;
                ee eeVar6 = this.f33987static;
                iM5460if += o4Var2.m5460if(cfor, eeVar6.f1402do, eeVar6.f1403if, this.f33990switch, this.f33994throws);
            }
            eeVar.m1807this(this.f33974for.c("Code")).m1803else(iM5460if);
            eeVar.m1807this(this.f33990switch).m1807this(this.f33994throws);
            ee eeVarM1803else = eeVar.m1803else(this.f33987static.f1403if);
            ee eeVar7 = this.f33987static;
            eeVarM1803else.m1801case(eeVar7.f1402do, 0, eeVar7.f1403if);
            eeVar.m1807this(this.f33968continue);
            if (this.f33968continue > 0) {
                for (Cgoto cgoto = this.f33988strictfp; cgoto != null; cgoto = cgoto.f34053case) {
                    eeVar.m1807this(cgoto.f34054do.f33948new).m1807this(cgoto.f34056if.f33948new).m1807this(cgoto.f34055for.f33948new).m1807this(cgoto.f34058try);
                }
            }
            int iM5456do2 = this.f33976implements != null ? 1 : 0;
            if (this.f33991synchronized != null) {
                iM5456do2++;
            }
            if (this.b != null) {
                iM5456do2++;
            }
            if (this.f33973finally != null) {
                iM5456do2++;
            }
            if (this.d != null) {
                iM5456do2++;
            }
            if (this.e != null) {
                iM5456do2++;
            }
            o4 o4Var3 = this.f;
            if (o4Var3 != null) {
                iM5456do2 += o4Var3.m5456do();
            }
            eeVar.m1807this(iM5456do2);
            if (this.f33976implements != null) {
                eeVar.m1807this(this.f33974for.c("LocalVariableTable"));
                eeVar.m1803else(this.f33976implements.f1403if + 2).m1807this(this.f33995transient);
                ee eeVar8 = this.f33976implements;
                eeVar.m1801case(eeVar8.f1402do, 0, eeVar8.f1403if);
            }
            if (this.f33991synchronized != null) {
                eeVar.m1807this(this.f33974for.c("LocalVariableTypeTable"));
                eeVar.m1803else(this.f33991synchronized.f1403if + 2).m1807this(this.f33978instanceof);
                ee eeVar9 = this.f33991synchronized;
                eeVar.m1801case(eeVar9.f1402do, 0, eeVar9.f1403if);
            }
            if (this.b != null) {
                eeVar.m1807this(this.f33974for.c("LineNumberTable"));
                eeVar.m1803else(this.b.f1403if + 2).m1807this(this.a);
                ee eeVar10 = this.b;
                eeVar.m1801case(eeVar10.f1402do, 0, eeVar10.f1403if);
            }
            if (this.f33973finally != null) {
                Cfor cfor2 = this.f33974for;
                eeVar.m1807this(cfor2.c((cfor2.f34035new & 65535) >= 50 ? "StackMapTable" : "StackMap"));
                eeVar.m1803else(this.f33973finally.f1403if + 2).m1807this(this.f33971extends);
                ee eeVar11 = this.f33973finally;
                eeVar.m1801case(eeVar11.f1402do, 0, eeVar11.f1403if);
            }
            if (this.d != null) {
                eeVar.m1807this(this.f33974for.c("RuntimeVisibleTypeAnnotations"));
                this.d.m37961goto(eeVar);
            }
            if (this.e != null) {
                eeVar.m1807this(this.f33974for.c("RuntimeInvisibleTypeAnnotations"));
                this.e.m37961goto(eeVar);
            }
            o4 o4Var4 = this.f;
            if (o4Var4 != null) {
                Cfor cfor3 = this.f33974for;
                ee eeVar12 = this.f33987static;
                i = 2;
                str = "RuntimeVisibleTypeAnnotations";
                o4Var4.m5458for(cfor3, eeVar12.f1402do, eeVar12.f1403if, this.f33994throws, this.f33990switch, eeVar);
            } else {
                str = "RuntimeVisibleTypeAnnotations";
                i = 2;
            }
        }
        if (this.f33965catch > 0) {
            eeVar.m1807this(this.f33974for.c("Exceptions")).m1803else((this.f33965catch * 2) + i);
            eeVar.m1807this(this.f33965catch);
            for (int i6 = 0; i6 < this.f33965catch; i6++) {
                eeVar.m1807this(this.f33966class[i6]);
            }
        }
        int i7 = this.f33981new;
        if ((i7 & 4096) != 0) {
            Cfor cfor4 = this.f33974for;
            if ((cfor4.f34035new & 65535) < 49 || (i7 & 262144) != 0) {
                eeVar.m1807this(cfor4.c("Synthetic")).m1803else(0);
            }
        }
        if ((this.f33981new & 131072) != 0) {
            eeVar.m1807this(this.f33974for.c("Deprecated")).m1803else(0);
        }
        if (this.f33975goto != null) {
            eeVar.m1807this(this.f33974for.c("Signature")).m1803else(i).m1807this(this.f33974for.c(this.f33975goto));
        }
        if (this.f33984protected != null) {
            eeVar.m1807this(this.f33974for.c("MethodParameters"));
            eeVar.m1803else(this.f33984protected.f1403if + 1).m1808try(this.f33979interface);
            ee eeVar13 = this.f33984protected;
            eeVar.m1801case(eeVar13.f1402do, 0, eeVar13.f1403if);
        }
        if (this.f33967const != null) {
            eeVar.m1807this(this.f33974for.c("AnnotationDefault"));
            eeVar.m1803else(this.f33967const.f1403if);
            ee eeVar14 = this.f33967const;
            eeVar.m1801case(eeVar14.f1402do, 0, eeVar14.f1403if);
        }
        if (this.f33972final != null) {
            eeVar.m1807this(this.f33974for.c("RuntimeVisibleAnnotations"));
            this.f33972final.m37961goto(eeVar);
        }
        if (this.f33989super != null) {
            eeVar.m1807this(this.f33974for.c("RuntimeInvisibleAnnotations"));
            this.f33989super.m37961goto(eeVar);
        }
        if (this.f33993throw != null) {
            eeVar.m1807this(this.f33974for.c(str));
            this.f33993throw.m37961goto(eeVar);
        }
        if (this.f33998while != null) {
            eeVar.m1807this(this.f33974for.c("RuntimeInvisibleTypeAnnotations"));
            this.f33998while.m37961goto(eeVar);
        }
        if (this.f33977import != null) {
            eeVar.m1807this(this.f33974for.c("RuntimeVisibleParameterAnnotations"));
            Cdo.m37959this(this.f33977import, this.f33985public, eeVar);
        }
        if (this.f33980native != null) {
            eeVar.m1807this(this.f33974for.c("RuntimeInvisibleParameterAnnotations"));
            Cdo.m37959this(this.f33980native, this.f33985public, eeVar);
        }
        o4 o4Var5 = this.f33986return;
        if (o4Var5 != null) {
            o4Var5.m5458for(this.f33974for, null, 0, -1, -1, eeVar);
        }
    }

    @Override // android.support.v4.xz0
    /* renamed from: native */
    public void mo9644native(Cbreak cbreak, int[] iArr, Cbreak[] cbreakArr) {
        ee eeVar = this.f33987static;
        int i = eeVar.f1403if;
        this.c = i;
        eeVar.m1808try(171);
        ee eeVar2 = this.f33987static;
        eeVar2.m1801case(null, 0, (4 - (eeVar2.f1403if % 4)) % 4);
        cbreak.m37945new(this, this.f33987static, i, true);
        this.f33987static.m1803else(cbreakArr.length);
        for (int i2 = 0; i2 < cbreakArr.length; i2++) {
            this.f33987static.m1803else(iArr[i2]);
            cbreakArr[i2].m37945new(this, this.f33987static, i, true);
        }
        a(cbreak, cbreakArr);
    }

    @Override // android.support.v4.xz0
    /* renamed from: new */
    public void mo9645new() {
    }

    @Override // android.support.v4.xz0
    /* renamed from: package */
    public void mo9646package(Cbreak cbreak, Cbreak cbreak2, Cbreak cbreak3, String str) {
        this.f33968continue++;
        Cgoto cgoto = new Cgoto();
        cgoto.f34054do = cbreak;
        cgoto.f34056if = cbreak2;
        cgoto.f34055for = cbreak3;
        cgoto.f34057new = str;
        cgoto.f34058try = str != null ? this.f33974for.m37992interface(str) : 0;
        Cgoto cgoto2 = this.f33997volatile;
        if (cgoto2 == null) {
            this.f33988strictfp = cgoto;
        } else {
            cgoto2.f34053case = cgoto;
        }
        this.f33997volatile = cgoto;
    }

    @Override // android.support.v4.xz0
    /* renamed from: private */
    public d2 mo9647private(int i, p92 p92Var, String str, boolean z) {
        ee eeVar = new ee();
        Cdo.m37958else(i, p92Var, eeVar);
        eeVar.m1807this(this.f33974for.c(str)).m1807this(0);
        Cdo cdo = new Cdo(this.f33974for, true, eeVar, eeVar, eeVar.f1403if - 2);
        if (z) {
            cdo.f34005this = this.f33993throw;
            this.f33993throw = cdo;
        } else {
            cdo.f34005this = this.f33998while;
            this.f33998while = cdo;
        }
        return cdo;
    }

    /*  JADX ERROR: JadxOverflowException in pass: LoopRegionVisitor
        jadx.core.utils.exceptions.JadxOverflowException: LoopRegionVisitor.assignOnlyInLoop endless recursion
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // android.support.v4.xz0
    /* renamed from: public */
    public void mo9648public(int r14, int r15) {
        /*
            Method dump skipped, instructions count: 499
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: org.objectweb.asm.Ccatch.mo9648public(int, int):void");
    }

    @Override // android.support.v4.xz0
    /* renamed from: static */
    public void mo9650static(int i, String str, String str2, String str3, boolean z) {
        this.c = this.f33987static.f1403if;
        Cthis cthisM38002throws = this.f33974for.m38002throws(str, str2, str3, z);
        int iM2218this = cthisM38002throws.f34091for;
        Cbreak cbreak = this.l;
        if (cbreak != null) {
            if (this.i == 0) {
                cbreak.f33949this.m37974case(i, 0, this.f33974for, cthisM38002throws);
            } else {
                if (iM2218this == 0) {
                    iM2218this = f92.m2218this(str3);
                    cthisM38002throws.f34091for = iM2218this;
                }
                int i2 = i == 184 ? (this.m - (iM2218this >> 2)) + (iM2218this & 3) + 1 : (this.m - (iM2218this >> 2)) + (iM2218this & 3);
                if (i2 > this.n) {
                    this.n = i2;
                }
                this.m = i2;
            }
        }
        if (i != 185) {
            this.f33987static.m1804for(i, cthisM38002throws.f34089do);
            return;
        }
        if (iM2218this == 0) {
            iM2218this = f92.m2218this(str3);
            cthisM38002throws.f34091for = iM2218this;
        }
        this.f33987static.m1804for(185, cthisM38002throws.f34089do).m1802do(iM2218this >> 2, 0);
    }

    /* renamed from: strictfp, reason: not valid java name */
    public final int m37957strictfp() {
        int length;
        if (this.f33992this != 0) {
            return this.f33963break + 6;
        }
        int i = this.f33987static.f1403if;
        if (i <= 0) {
            length = 8;
        } else {
            if (i > 65536) {
                throw new RuntimeException("Method code too large!");
            }
            this.f33974for.c("Code");
            length = this.f33987static.f1403if + 18 + (this.f33968continue * 8) + 8;
            if (this.f33976implements != null) {
                this.f33974for.c("LocalVariableTable");
                length += this.f33976implements.f1403if + 8;
            }
            if (this.f33991synchronized != null) {
                this.f33974for.c("LocalVariableTypeTable");
                length += this.f33991synchronized.f1403if + 8;
            }
            if (this.b != null) {
                this.f33974for.c("LineNumberTable");
                length += this.b.f1403if + 8;
            }
            if (this.f33973finally != null) {
                Cfor cfor = this.f33974for;
                cfor.c((cfor.f34035new & 65535) >= 50 ? "StackMapTable" : "StackMap");
                length += this.f33973finally.f1403if + 8;
            }
            if (this.d != null) {
                this.f33974for.c("RuntimeVisibleTypeAnnotations");
                length += this.d.m37960case() + 8;
            }
            if (this.e != null) {
                this.f33974for.c("RuntimeInvisibleTypeAnnotations");
                length += this.e.m37960case() + 8;
            }
            o4 o4Var = this.f;
            if (o4Var != null) {
                Cfor cfor2 = this.f33974for;
                ee eeVar = this.f33987static;
                length += o4Var.m5460if(cfor2, eeVar.f1402do, eeVar.f1403if, this.f33990switch, this.f33994throws);
            }
        }
        if (this.f33965catch > 0) {
            this.f33974for.c("Exceptions");
            length += (this.f33965catch * 2) + 8;
        }
        int i2 = this.f33981new;
        if ((i2 & 4096) != 0) {
            Cfor cfor3 = this.f33974for;
            if ((65535 & cfor3.f34035new) < 49 || (262144 & i2) != 0) {
                cfor3.c("Synthetic");
                length += 6;
            }
        }
        if ((this.f33981new & 131072) != 0) {
            this.f33974for.c("Deprecated");
            length += 6;
        }
        if (this.f33975goto != null) {
            this.f33974for.c("Signature");
            this.f33974for.c(this.f33975goto);
            length += 8;
        }
        if (this.f33984protected != null) {
            this.f33974for.c("MethodParameters");
            length += this.f33984protected.f1403if + 7;
        }
        if (this.f33967const != null) {
            this.f33974for.c("AnnotationDefault");
            length += this.f33967const.f1403if + 6;
        }
        if (this.f33972final != null) {
            this.f33974for.c("RuntimeVisibleAnnotations");
            length += this.f33972final.m37960case() + 8;
        }
        if (this.f33989super != null) {
            this.f33974for.c("RuntimeInvisibleAnnotations");
            length += this.f33989super.m37960case() + 8;
        }
        if (this.f33993throw != null) {
            this.f33974for.c("RuntimeVisibleTypeAnnotations");
            length += this.f33993throw.m37960case() + 8;
        }
        if (this.f33998while != null) {
            this.f33974for.c("RuntimeInvisibleTypeAnnotations");
            length += this.f33998while.m37960case() + 8;
        }
        if (this.f33977import != null) {
            this.f33974for.c("RuntimeVisibleParameterAnnotations");
            Cdo[] cdoArr = this.f33977import;
            length += ((cdoArr.length - this.f33985public) * 2) + 7;
            for (int length2 = cdoArr.length - 1; length2 >= this.f33985public; length2--) {
                Cdo[] cdoArr2 = this.f33977import;
                length += cdoArr2[length2] == null ? 0 : cdoArr2[length2].m37960case();
            }
        }
        if (this.f33980native != null) {
            this.f33974for.c("RuntimeInvisibleParameterAnnotations");
            Cdo[] cdoArr3 = this.f33980native;
            length += ((cdoArr3.length - this.f33985public) * 2) + 7;
            for (int length3 = cdoArr3.length - 1; length3 >= this.f33985public; length3--) {
                Cdo[] cdoArr4 = this.f33980native;
                length += cdoArr4[length3] == null ? 0 : cdoArr4[length3].m37960case();
            }
        }
        o4 o4Var2 = this.f33986return;
        return o4Var2 != null ? length + o4Var2.m5460if(this.f33974for, null, 0, -1, -1) : length;
    }

    @Override // android.support.v4.xz0
    /* renamed from: super */
    public void mo9651super(Object obj) {
        ee eeVar;
        int i;
        this.c = this.f33987static.f1403if;
        Cthis cthisM37993native = this.f33974for.m37993native(obj);
        Cbreak cbreak = this.l;
        if (cbreak != null) {
            if (this.i == 0) {
                cbreak.f33949this.m37974case(18, 0, this.f33974for, cthisM37993native);
            } else {
                int i2 = cthisM37993native.f34093if;
                int i3 = (i2 == 5 || i2 == 6) ? this.m + 2 : this.m + 1;
                if (i3 > this.n) {
                    this.n = i3;
                }
                this.m = i3;
            }
        }
        int i4 = cthisM37993native.f34089do;
        int i5 = cthisM37993native.f34093if;
        if (i5 == 5 || i5 == 6) {
            eeVar = this.f33987static;
            i = 20;
        } else if (i4 < 256) {
            this.f33987static.m1802do(18, i4);
            return;
        } else {
            eeVar = this.f33987static;
            i = 19;
        }
        eeVar.m1804for(i, i4);
    }

    @Override // android.support.v4.xz0
    /* renamed from: switch */
    public void mo9652switch(String str, int i) {
        this.c = this.f33987static.f1403if;
        Cthis cthisM37995public = this.f33974for.m37995public(str);
        Cbreak cbreak = this.l;
        if (cbreak != null) {
            if (this.i == 0) {
                cbreak.f33949this.m37974case(197, i, this.f33974for, cthisM37995public);
            } else {
                this.m += 1 - i;
            }
        }
        this.f33987static.m1804for(197, cthisM37995public.f34089do).m1808try(i);
    }

    @Override // android.support.v4.xz0
    /* renamed from: this */
    public void mo9653this(int i) {
        ee eeVar = this.f33987static;
        this.c = eeVar.f1403if;
        eeVar.m1808try(i);
        Cbreak cbreak = this.l;
        if (cbreak != null) {
            if (this.i == 0) {
                cbreak.f33949this.m37974case(i, 0, null, null);
            } else {
                int i2 = this.m + Celse.f34007this[i];
                if (i2 > this.n) {
                    this.n = i2;
                }
                this.m = i2;
            }
            if ((i < 172 || i > 177) && i != 191) {
                return;
            }
            j();
        }
    }

    @Override // android.support.v4.xz0
    /* renamed from: throw */
    public void mo9654throw(int i, Cbreak cbreak) {
        if (this.b == null) {
            this.b = new ee();
        }
        this.a++;
        this.b.m1807this(cbreak.f33948new);
        this.b.m1807this(i);
    }

    @Override // android.support.v4.xz0
    /* renamed from: throws */
    public void mo9655throws(String str, int i) {
        if (this.f33984protected == null) {
            this.f33984protected = new ee();
        }
        this.f33979interface++;
        this.f33984protected.m1807this(str == null ? 0 : this.f33974for.c(str)).m1807this(i);
    }

    @Override // android.support.v4.xz0
    /* renamed from: try */
    public void mo9656try() {
    }

    @Override // android.support.v4.xz0
    /* renamed from: while */
    public void mo9657while(String str, String str2, String str3, Cbreak cbreak, Cbreak cbreak2, int i) {
        if (str3 != null) {
            if (this.f33991synchronized == null) {
                this.f33991synchronized = new ee();
            }
            this.f33978instanceof++;
            this.f33991synchronized.m1807this(cbreak.f33948new).m1807this(cbreak2.f33948new - cbreak.f33948new).m1807this(this.f33974for.c(str)).m1807this(this.f33974for.c(str3)).m1807this(i);
        }
        if (this.f33976implements == null) {
            this.f33976implements = new ee();
        }
        this.f33995transient++;
        this.f33976implements.m1807this(cbreak.f33948new).m1807this(cbreak2.f33948new - cbreak.f33948new).m1807this(this.f33974for.c(str)).m1807this(this.f33974for.c(str2)).m1807this(i);
        if (this.i != 2) {
            char cCharAt = str2.charAt(0);
            int i2 = i + ((cCharAt == 'J' || cCharAt == 'D') ? 2 : 1);
            if (i2 > this.f33994throws) {
                this.f33994throws = i2;
            }
        }
    }
}
