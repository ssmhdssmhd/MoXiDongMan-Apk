package org.objectweb.asm;

import android.support.v4.d2;
import android.support.v4.ee;
import android.support.v4.f92;
import android.support.v4.p92;

/* renamed from: org.objectweb.asm.do, reason: invalid class name */
/* loaded from: classes3.dex */
final class Cdo extends d2 {

    /* renamed from: break, reason: not valid java name */
    public Cdo f33999break;

    /* renamed from: case, reason: not valid java name */
    private final ee f34000case;

    /* renamed from: else, reason: not valid java name */
    private final ee f34001else;

    /* renamed from: for, reason: not valid java name */
    private final Cfor f34002for;

    /* renamed from: goto, reason: not valid java name */
    private final int f34003goto;

    /* renamed from: new, reason: not valid java name */
    private int f34004new;

    /* renamed from: this, reason: not valid java name */
    public Cdo f34005this;

    /* renamed from: try, reason: not valid java name */
    private final boolean f34006try;

    public Cdo(Cfor cfor, boolean z, ee eeVar, ee eeVar2, int i) {
        super(Opcodes.ASM5);
        this.f34002for = cfor;
        this.f34006try = z;
        this.f34000case = eeVar;
        this.f34001else = eeVar2;
        this.f34003goto = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x001f  */
    /* renamed from: else, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void m37958else(int i, p92 p92Var, ee eeVar) {
        int i2 = i >>> 24;
        if (i2 != 0 && i2 != 1) {
            switch (i2) {
                case 19:
                case 20:
                case 21:
                    eeVar.m1808try(i2);
                    break;
                case 22:
                    break;
                default:
                    switch (i2) {
                        case 71:
                        case 72:
                        case 73:
                        case 74:
                        case 75:
                            eeVar.m1803else(i);
                            break;
                        default:
                            eeVar.m1804for(i2, (i & 16776960) >> 8);
                            break;
                    }
            }
        } else {
            eeVar.m1807this(i >>> 16);
        }
        if (p92Var == null) {
            eeVar.m1808try(0);
            return;
        }
        byte[] bArr = p92Var.f4883do;
        int i3 = p92Var.f4884if;
        eeVar.m1801case(bArr, i3, (bArr[i3] * 2) + 1);
    }

    /* renamed from: this, reason: not valid java name */
    public static void m37959this(Cdo[] cdoArr, int i, ee eeVar) {
        int length = ((cdoArr.length - i) * 2) + 1;
        int i2 = i;
        while (true) {
            int iM37960case = 0;
            if (i2 >= cdoArr.length) {
                break;
            }
            if (cdoArr[i2] != null) {
                iM37960case = cdoArr[i2].m37960case();
            }
            length += iM37960case;
            i2++;
        }
        eeVar.m1803else(length).m1808try(cdoArr.length - i);
        while (i < cdoArr.length) {
            Cdo cdo = null;
            int i3 = 0;
            for (Cdo cdo2 = cdoArr[i]; cdo2 != null; cdo2 = cdo2.f34005this) {
                i3++;
                cdo2.mo1122new();
                cdo2.f33999break = cdo;
                cdo = cdo2;
            }
            eeVar.m1807this(i3);
            while (cdo != null) {
                ee eeVar2 = cdo.f34000case;
                eeVar.m1801case(eeVar2.f1402do, 0, eeVar2.f1403if);
                cdo = cdo.f33999break;
            }
            i++;
        }
    }

    /* renamed from: case, reason: not valid java name */
    public int m37960case() {
        int i = 0;
        for (Cdo cdo = this; cdo != null; cdo = cdo.f34005this) {
            i += cdo.f34000case.f1403if;
        }
        return i;
    }

    @Override // android.support.v4.d2
    /* renamed from: do */
    public void mo1119do(String str, Object obj) {
        int i;
        ee eeVar;
        Cfor cfor;
        String strM2221class;
        int iC;
        this.f34004new++;
        if (this.f34006try) {
            this.f34000case.m1807this(this.f34002for.c(str));
        }
        if (obj instanceof String) {
            eeVar = this.f34000case;
            i = 115;
            cfor = this.f34002for;
            strM2221class = (String) obj;
        } else {
            i = 66;
            if (obj instanceof Byte) {
                eeVar = this.f34000case;
                iC = this.f34002for.m38001throw(((Byte) obj).byteValue()).f34089do;
                eeVar.m1804for(i, iC);
            }
            if (obj instanceof Boolean) {
                this.f34000case.m1804for(90, this.f34002for.m38001throw(((Boolean) obj).booleanValue() ? 1 : 0).f34089do);
                return;
            }
            if (obj instanceof Character) {
                this.f34000case.m1804for(67, this.f34002for.m38001throw(((Character) obj).charValue()).f34089do);
                return;
            }
            if (obj instanceof Short) {
                this.f34000case.m1804for(83, this.f34002for.m38001throw(((Short) obj).shortValue()).f34089do);
                return;
            }
            if (!(obj instanceof f92)) {
                int i2 = 0;
                if (obj instanceof byte[]) {
                    byte[] bArr = (byte[]) obj;
                    this.f34000case.m1804for(91, bArr.length);
                    while (i2 < bArr.length) {
                        this.f34000case.m1804for(66, this.f34002for.m38001throw(bArr[i2]).f34089do);
                        i2++;
                    }
                    return;
                }
                if (obj instanceof boolean[]) {
                    boolean[] zArr = (boolean[]) obj;
                    this.f34000case.m1804for(91, zArr.length);
                    while (i2 < zArr.length) {
                        this.f34000case.m1804for(90, this.f34002for.m38001throw(zArr[i2] ? 1 : 0).f34089do);
                        i2++;
                    }
                    return;
                }
                if (obj instanceof short[]) {
                    short[] sArr = (short[]) obj;
                    this.f34000case.m1804for(91, sArr.length);
                    while (i2 < sArr.length) {
                        this.f34000case.m1804for(83, this.f34002for.m38001throw(sArr[i2]).f34089do);
                        i2++;
                    }
                    return;
                }
                if (obj instanceof char[]) {
                    char[] cArr = (char[]) obj;
                    this.f34000case.m1804for(91, cArr.length);
                    while (i2 < cArr.length) {
                        this.f34000case.m1804for(67, this.f34002for.m38001throw(cArr[i2]).f34089do);
                        i2++;
                    }
                    return;
                }
                if (obj instanceof int[]) {
                    int[] iArr = (int[]) obj;
                    this.f34000case.m1804for(91, iArr.length);
                    while (i2 < iArr.length) {
                        this.f34000case.m1804for(73, this.f34002for.m38001throw(iArr[i2]).f34089do);
                        i2++;
                    }
                    return;
                }
                if (obj instanceof long[]) {
                    long[] jArr = (long[]) obj;
                    this.f34000case.m1804for(91, jArr.length);
                    while (i2 < jArr.length) {
                        this.f34000case.m1804for(74, this.f34002for.m37990import(jArr[i2]).f34089do);
                        i2++;
                    }
                    return;
                }
                if (obj instanceof float[]) {
                    float[] fArr = (float[]) obj;
                    this.f34000case.m1804for(91, fArr.length);
                    while (i2 < fArr.length) {
                        this.f34000case.m1804for(70, this.f34002for.m37998super(fArr[i2]).f34089do);
                        i2++;
                    }
                    return;
                }
                if (!(obj instanceof double[])) {
                    Cthis cthisM37993native = this.f34002for.m37993native(obj);
                    this.f34000case.m1804for(".s.IFJDCS".charAt(cthisM37993native.f34093if), cthisM37993native.f34089do);
                    return;
                }
                double[] dArr = (double[]) obj;
                this.f34000case.m1804for(91, dArr.length);
                while (i2 < dArr.length) {
                    this.f34000case.m1804for(68, this.f34002for.m37988final(dArr[i2]).f34089do);
                    i2++;
                }
                return;
            }
            eeVar = this.f34000case;
            i = 99;
            cfor = this.f34002for;
            strM2221class = ((f92) obj).m2221class();
        }
        iC = cfor.c(strM2221class);
        eeVar.m1804for(i, iC);
    }

    @Override // android.support.v4.d2
    /* renamed from: for */
    public d2 mo1120for(String str) {
        this.f34004new++;
        if (this.f34006try) {
            this.f34000case.m1807this(this.f34002for.c(str));
        }
        this.f34000case.m1804for(91, 0);
        Cfor cfor = this.f34002for;
        ee eeVar = this.f34000case;
        return new Cdo(cfor, false, eeVar, eeVar, eeVar.f1403if - 2);
    }

    /* renamed from: goto, reason: not valid java name */
    public void m37961goto(ee eeVar) {
        int i = 2;
        int i2 = 0;
        Cdo cdo = null;
        for (Cdo cdo2 = this; cdo2 != null; cdo2 = cdo2.f34005this) {
            i2++;
            i += cdo2.f34000case.f1403if;
            cdo2.mo1122new();
            cdo2.f33999break = cdo;
            cdo = cdo2;
        }
        eeVar.m1803else(i);
        eeVar.m1807this(i2);
        while (cdo != null) {
            ee eeVar2 = cdo.f34000case;
            eeVar.m1801case(eeVar2.f1402do, 0, eeVar2.f1403if);
            cdo = cdo.f33999break;
        }
    }

    @Override // android.support.v4.d2
    /* renamed from: if */
    public d2 mo1121if(String str, String str2) {
        this.f34004new++;
        if (this.f34006try) {
            this.f34000case.m1807this(this.f34002for.c(str));
        }
        this.f34000case.m1804for(64, this.f34002for.c(str2)).m1807this(0);
        Cfor cfor = this.f34002for;
        ee eeVar = this.f34000case;
        return new Cdo(cfor, true, eeVar, eeVar, eeVar.f1403if - 2);
    }

    @Override // android.support.v4.d2
    /* renamed from: new */
    public void mo1122new() {
        ee eeVar = this.f34001else;
        if (eeVar != null) {
            byte[] bArr = eeVar.f1402do;
            int i = this.f34003goto;
            int i2 = this.f34004new;
            bArr[i] = (byte) (i2 >>> 8);
            bArr[i + 1] = (byte) i2;
        }
    }

    @Override // android.support.v4.d2
    /* renamed from: try */
    public void mo1123try(String str, String str2, String str3) {
        this.f34004new++;
        if (this.f34006try) {
            this.f34000case.m1807this(this.f34002for.c(str));
        }
        this.f34000case.m1804for(101, this.f34002for.c(str2)).m1807this(this.f34002for.c(str3));
    }
}
