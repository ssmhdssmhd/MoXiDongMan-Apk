package com.google.zxing.aztec.detector;

import android.support.v4.am1;
import android.support.v4.ca2;
import android.support.v4.ci0;
import android.support.v4.j41;
import android.support.v4.l5;
import android.support.v4.xx0;
import android.support.v4.yf2;
import android.support.v4.yn1;
import android.support.v4.z8;
import com.google.zxing.common.reedsolomon.Cfor;

/* renamed from: com.google.zxing.aztec.detector.do, reason: invalid class name */
/* loaded from: classes2.dex */
public final class Cdo {

    /* renamed from: else, reason: not valid java name */
    private static final int[] f17401else = {3808, 476, 2107, 1799};

    /* renamed from: case, reason: not valid java name */
    private int f17402case;

    /* renamed from: do, reason: not valid java name */
    private final z8 f17403do;

    /* renamed from: for, reason: not valid java name */
    private int f17404for;

    /* renamed from: if, reason: not valid java name */
    private boolean f17405if;

    /* renamed from: new, reason: not valid java name */
    private int f17406new;

    /* renamed from: try, reason: not valid java name */
    private int f17407try;

    /* renamed from: com.google.zxing.aztec.detector.do$do, reason: invalid class name and collision with other inner class name */
    public static final class C0164do {

        /* renamed from: do, reason: not valid java name */
        private final int f17408do;

        /* renamed from: if, reason: not valid java name */
        private final int f17409if;

        public C0164do(int i, int i2) {
            this.f17408do = i;
            this.f17409if = i2;
        }

        /* renamed from: do, reason: not valid java name */
        public int m21756do() {
            return this.f17408do;
        }

        /* renamed from: for, reason: not valid java name */
        public yn1 m21757for() {
            return new yn1(m21756do(), m21758if());
        }

        /* renamed from: if, reason: not valid java name */
        public int m21758if() {
            return this.f17409if;
        }

        public String toString() {
            return "<" + this.f17408do + ' ' + this.f17409if + ca2.f702try;
        }
    }

    public Cdo(z8 z8Var) {
        this.f17403do = z8Var;
    }

    /* renamed from: break, reason: not valid java name */
    private int m21737break() {
        if (this.f17405if) {
            return (this.f17404for * 4) + 11;
        }
        int i = this.f17404for;
        return i <= 4 ? (i * 4) + 15 : (i * 4) + ((((i - 4) / 8) + 1) * 2) + 15;
    }

    /* renamed from: case, reason: not valid java name */
    private void m21738case(yn1[] yn1VarArr) throws j41 {
        long j;
        long j2;
        if (!m21751throw(yn1VarArr[0]) || !m21751throw(yn1VarArr[1]) || !m21751throw(yn1VarArr[2]) || !m21751throw(yn1VarArr[3])) {
            throw j41.getNotFoundInstance();
        }
        int i = this.f17407try * 2;
        int[] iArr = {m21747native(yn1VarArr[0], yn1VarArr[1], i), m21747native(yn1VarArr[1], yn1VarArr[2], i), m21747native(yn1VarArr[2], yn1VarArr[3], i), m21747native(yn1VarArr[3], yn1VarArr[0], i)};
        this.f17402case = m21743final(iArr, i);
        long j3 = 0;
        for (int i2 = 0; i2 < 4; i2++) {
            int i3 = iArr[(this.f17402case + i2) % 4];
            if (this.f17405if) {
                j = j3 << 7;
                j2 = (i3 >> 1) & 127;
            } else {
                j = j3 << 10;
                j2 = ((i3 >> 2) & 992) + ((i3 >> 1) & 31);
            }
            j3 = j + j2;
        }
        int iM21750this = m21750this(j3, this.f17405if);
        if (this.f17405if) {
            this.f17404for = (iM21750this >> 6) + 1;
            this.f17406new = (iM21750this & 63) + 1;
        } else {
            this.f17404for = (iM21750this >> 11) + 1;
            this.f17406new = (iM21750this & 2047) + 1;
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private C0164do m21739catch(C0164do c0164do, boolean z, int i, int i2) {
        int iM21756do = c0164do.m21756do() + i;
        int iM21758if = c0164do.m21758if();
        while (true) {
            iM21758if += i2;
            if (!m21749super(iM21756do, iM21758if) || this.f17403do.m10105try(iM21756do, iM21758if) != z) {
                break;
            }
            iM21756do += i;
        }
        int i3 = iM21756do - i;
        int i4 = iM21758if - i2;
        while (m21749super(i3, i4) && this.f17403do.m10105try(i3, i4) == z) {
            i3 += i;
        }
        int i5 = i3 - i;
        while (m21749super(i5, i4) && this.f17403do.m10105try(i5, i4) == z) {
            i4 += i2;
        }
        return new C0164do(i5, i4 - i2);
    }

    /* renamed from: class, reason: not valid java name */
    private C0164do m21740class() {
        yn1 yn1VarM21757for;
        yn1 yn1Var;
        yn1 yn1Var2;
        yn1 yn1Var3;
        yn1 yn1VarM21757for2;
        yn1 yn1VarM21757for3;
        yn1 yn1VarM21757for4;
        yn1 yn1VarM21757for5;
        try {
            yn1[] yn1VarArrM9834for = new yf2(this.f17403do).m9834for();
            yn1Var2 = yn1VarArrM9834for[0];
            yn1Var3 = yn1VarArrM9834for[1];
            yn1Var = yn1VarArrM9834for[2];
            yn1VarM21757for = yn1VarArrM9834for[3];
        } catch (j41 unused) {
            int iM10091class = this.f17403do.m10091class() / 2;
            int iM10094goto = this.f17403do.m10094goto() / 2;
            int i = iM10091class + 7;
            int i2 = iM10094goto - 7;
            yn1 yn1VarM21757for6 = m21739catch(new C0164do(i, i2), false, 1, -1).m21757for();
            int i3 = iM10094goto + 7;
            yn1 yn1VarM21757for7 = m21739catch(new C0164do(i, i3), false, 1, 1).m21757for();
            int i4 = iM10091class - 7;
            yn1 yn1VarM21757for8 = m21739catch(new C0164do(i4, i3), false, -1, 1).m21757for();
            yn1VarM21757for = m21739catch(new C0164do(i4, i2), false, -1, -1).m21757for();
            yn1Var = yn1VarM21757for8;
            yn1Var2 = yn1VarM21757for6;
            yn1Var3 = yn1VarM21757for7;
        }
        int iM9609for = xx0.m9609for((((yn1Var2.m9911for() + yn1VarM21757for.m9911for()) + yn1Var3.m9911for()) + yn1Var.m9911for()) / 4.0f);
        int iM9609for2 = xx0.m9609for((((yn1Var2.m9912new() + yn1VarM21757for.m9912new()) + yn1Var3.m9912new()) + yn1Var.m9912new()) / 4.0f);
        try {
            yn1[] yn1VarArrM9834for2 = new yf2(this.f17403do, 15, iM9609for, iM9609for2).m9834for();
            yn1VarM21757for2 = yn1VarArrM9834for2[0];
            yn1VarM21757for3 = yn1VarArrM9834for2[1];
            yn1VarM21757for4 = yn1VarArrM9834for2[2];
            yn1VarM21757for5 = yn1VarArrM9834for2[3];
        } catch (j41 unused2) {
            int i5 = iM9609for + 7;
            int i6 = iM9609for2 - 7;
            yn1VarM21757for2 = m21739catch(new C0164do(i5, i6), false, 1, -1).m21757for();
            int i7 = iM9609for2 + 7;
            yn1VarM21757for3 = m21739catch(new C0164do(i5, i7), false, 1, 1).m21757for();
            int i8 = iM9609for - 7;
            yn1VarM21757for4 = m21739catch(new C0164do(i8, i7), false, -1, 1).m21757for();
            yn1VarM21757for5 = m21739catch(new C0164do(i8, i6), false, -1, -1).m21757for();
        }
        return new C0164do(xx0.m9609for((((yn1VarM21757for2.m9911for() + yn1VarM21757for5.m9911for()) + yn1VarM21757for3.m9911for()) + yn1VarM21757for4.m9911for()) / 4.0f), xx0.m9609for((((yn1VarM21757for2.m9912new() + yn1VarM21757for5.m9912new()) + yn1VarM21757for3.m9912new()) + yn1VarM21757for4.m9912new()) / 4.0f));
    }

    /* renamed from: const, reason: not valid java name */
    private yn1[] m21741const(yn1[] yn1VarArr) {
        return m21752try(yn1VarArr, this.f17407try * 2, m21737break());
    }

    /* renamed from: else, reason: not valid java name */
    private yn1[] m21742else(C0164do c0164do) throws j41 {
        this.f17407try = 1;
        C0164do c0164do2 = c0164do;
        C0164do c0164do3 = c0164do2;
        C0164do c0164do4 = c0164do3;
        C0164do c0164do5 = c0164do4;
        boolean z = true;
        while (this.f17407try < 9) {
            C0164do c0164doM21739catch = m21739catch(c0164do2, z, 1, -1);
            C0164do c0164doM21739catch2 = m21739catch(c0164do3, z, 1, 1);
            C0164do c0164doM21739catch3 = m21739catch(c0164do4, z, -1, 1);
            C0164do c0164doM21739catch4 = m21739catch(c0164do5, z, -1, -1);
            if (this.f17407try > 2) {
                double dM21748new = (m21748new(c0164doM21739catch4, c0164doM21739catch) * this.f17407try) / (m21748new(c0164do5, c0164do2) * (this.f17407try + 2));
                if (dM21748new < 0.75d || dM21748new > 1.25d || !m21753while(c0164doM21739catch, c0164doM21739catch2, c0164doM21739catch3, c0164doM21739catch4)) {
                    break;
                }
            }
            z = !z;
            this.f17407try++;
            c0164do5 = c0164doM21739catch4;
            c0164do2 = c0164doM21739catch;
            c0164do3 = c0164doM21739catch2;
            c0164do4 = c0164doM21739catch3;
        }
        int i = this.f17407try;
        if (i != 5 && i != 7) {
            throw j41.getNotFoundInstance();
        }
        this.f17405if = i == 5;
        yn1[] yn1VarArr = {new yn1(c0164do2.m21756do() + 0.5f, c0164do2.m21758if() - 0.5f), new yn1(c0164do3.m21756do() + 0.5f, c0164do3.m21758if() + 0.5f), new yn1(c0164do4.m21756do() - 0.5f, c0164do4.m21758if() + 0.5f), new yn1(c0164do5.m21756do() - 0.5f, c0164do5.m21758if() - 0.5f)};
        int i2 = this.f17407try;
        return m21752try(yn1VarArr, (i2 * 2) - 3, i2 * 2);
    }

    /* renamed from: final, reason: not valid java name */
    private static int m21743final(int[] iArr, int i) throws j41 {
        int i2 = 0;
        for (int i3 : iArr) {
            i2 = (i2 << 3) + ((i3 >> (i - 2)) << 1) + (i3 & 1);
        }
        int i4 = ((i2 & 1) << 11) + (i2 >> 1);
        for (int i5 = 0; i5 < 4; i5++) {
            if (Integer.bitCount(f17401else[i5] ^ i4) <= 2) {
                return i5;
            }
        }
        throw j41.getNotFoundInstance();
    }

    /* renamed from: for, reason: not valid java name */
    private static float m21744for(yn1 yn1Var, yn1 yn1Var2) {
        return xx0.m9608do(yn1Var.m9911for(), yn1Var.m9912new(), yn1Var2.m9911for(), yn1Var2.m9912new());
    }

    /* renamed from: goto, reason: not valid java name */
    private int m21745goto(C0164do c0164do, C0164do c0164do2) {
        float fM21748new = m21748new(c0164do, c0164do2);
        float fM21756do = (c0164do2.m21756do() - c0164do.m21756do()) / fM21748new;
        float fM21758if = (c0164do2.m21758if() - c0164do.m21758if()) / fM21748new;
        float fM21756do2 = c0164do.m21756do();
        float fM21758if2 = c0164do.m21758if();
        boolean zM10105try = this.f17403do.m10105try(c0164do.m21756do(), c0164do.m21758if());
        int iCeil = (int) Math.ceil(fM21748new);
        int i = 0;
        for (int i2 = 0; i2 < iCeil; i2++) {
            fM21756do2 += fM21756do;
            fM21758if2 += fM21758if;
            if (this.f17403do.m10105try(xx0.m9609for(fM21756do2), xx0.m9609for(fM21758if2)) != zM10105try) {
                i++;
            }
        }
        float f = i / fM21748new;
        if (f <= 0.1f || f >= 0.9f) {
            return (f <= 0.1f) == zM10105try ? 1 : -1;
        }
        return 0;
    }

    /* renamed from: import, reason: not valid java name */
    private z8 m21746import(z8 z8Var, yn1 yn1Var, yn1 yn1Var2, yn1 yn1Var3, yn1 yn1Var4) throws j41 {
        ci0 ci0VarM933if = ci0.m933if();
        int iM21737break = m21737break();
        float f = iM21737break / 2.0f;
        int i = this.f17407try;
        float f2 = f - i;
        float f3 = f + i;
        return ci0VarM933if.mo935for(z8Var, iM21737break, iM21737break, f2, f2, f3, f2, f3, f3, f2, f3, yn1Var.m9911for(), yn1Var.m9912new(), yn1Var2.m9911for(), yn1Var2.m9912new(), yn1Var3.m9911for(), yn1Var3.m9912new(), yn1Var4.m9911for(), yn1Var4.m9912new());
    }

    /* renamed from: native, reason: not valid java name */
    private int m21747native(yn1 yn1Var, yn1 yn1Var2, int i) {
        float fM21744for = m21744for(yn1Var, yn1Var2);
        float f = fM21744for / i;
        float fM9911for = yn1Var.m9911for();
        float fM9912new = yn1Var.m9912new();
        float fM9911for2 = ((yn1Var2.m9911for() - yn1Var.m9911for()) * f) / fM21744for;
        float fM9912new2 = (f * (yn1Var2.m9912new() - yn1Var.m9912new())) / fM21744for;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            float f2 = i3;
            if (this.f17403do.m10105try(xx0.m9609for((f2 * fM9911for2) + fM9911for), xx0.m9609for((f2 * fM9912new2) + fM9912new))) {
                i2 |= 1 << ((i - i3) - 1);
            }
        }
        return i2;
    }

    /* renamed from: new, reason: not valid java name */
    private static float m21748new(C0164do c0164do, C0164do c0164do2) {
        return xx0.m9610if(c0164do.m21756do(), c0164do.m21758if(), c0164do2.m21756do(), c0164do2.m21758if());
    }

    /* renamed from: super, reason: not valid java name */
    private boolean m21749super(int i, int i2) {
        return i >= 0 && i < this.f17403do.m10091class() && i2 > 0 && i2 < this.f17403do.m10094goto();
    }

    /* renamed from: this, reason: not valid java name */
    private static int m21750this(long j, boolean z) throws j41 {
        int i;
        int i2;
        if (z) {
            i = 7;
            i2 = 2;
        } else {
            i = 10;
            i2 = 4;
        }
        int i3 = i - i2;
        int[] iArr = new int[i];
        for (int i4 = i - 1; i4 >= 0; i4--) {
            iArr[i4] = ((int) j) & 15;
            j >>= 4;
        }
        try {
            new Cfor(com.google.zxing.common.reedsolomon.Cdo.f17451catch).m21823do(iArr, i3);
            int i5 = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                i5 = (i5 << 4) + iArr[i6];
            }
            return i5;
        } catch (am1 unused) {
            throw j41.getNotFoundInstance();
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private boolean m21751throw(yn1 yn1Var) {
        return m21749super(xx0.m9609for(yn1Var.m9911for()), xx0.m9609for(yn1Var.m9912new()));
    }

    /* renamed from: try, reason: not valid java name */
    private static yn1[] m21752try(yn1[] yn1VarArr, int i, int i2) {
        float f = i2 / (i * 2.0f);
        float fM9911for = yn1VarArr[0].m9911for() - yn1VarArr[2].m9911for();
        float fM9912new = yn1VarArr[0].m9912new() - yn1VarArr[2].m9912new();
        float fM9911for2 = (yn1VarArr[0].m9911for() + yn1VarArr[2].m9911for()) / 2.0f;
        float fM9912new2 = (yn1VarArr[0].m9912new() + yn1VarArr[2].m9912new()) / 2.0f;
        float f2 = fM9911for * f;
        float f3 = fM9912new * f;
        yn1 yn1Var = new yn1(fM9911for2 + f2, fM9912new2 + f3);
        yn1 yn1Var2 = new yn1(fM9911for2 - f2, fM9912new2 - f3);
        float fM9911for3 = yn1VarArr[1].m9911for() - yn1VarArr[3].m9911for();
        float fM9912new3 = yn1VarArr[1].m9912new() - yn1VarArr[3].m9912new();
        float fM9911for4 = (yn1VarArr[1].m9911for() + yn1VarArr[3].m9911for()) / 2.0f;
        float fM9912new4 = (yn1VarArr[1].m9912new() + yn1VarArr[3].m9912new()) / 2.0f;
        float f4 = fM9911for3 * f;
        float f5 = f * fM9912new3;
        return new yn1[]{yn1Var, new yn1(fM9911for4 + f4, fM9912new4 + f5), yn1Var2, new yn1(fM9911for4 - f4, fM9912new4 - f5)};
    }

    /* renamed from: while, reason: not valid java name */
    private boolean m21753while(C0164do c0164do, C0164do c0164do2, C0164do c0164do3, C0164do c0164do4) {
        C0164do c0164do5 = new C0164do(c0164do.m21756do() - 3, c0164do.m21758if() + 3);
        C0164do c0164do6 = new C0164do(c0164do2.m21756do() - 3, c0164do2.m21758if() - 3);
        C0164do c0164do7 = new C0164do(c0164do3.m21756do() + 3, c0164do3.m21758if() - 3);
        C0164do c0164do8 = new C0164do(c0164do4.m21756do() + 3, c0164do4.m21758if() + 3);
        int iM21745goto = m21745goto(c0164do8, c0164do5);
        return iM21745goto != 0 && m21745goto(c0164do5, c0164do6) == iM21745goto && m21745goto(c0164do6, c0164do7) == iM21745goto && m21745goto(c0164do7, c0164do8) == iM21745goto;
    }

    /* renamed from: do, reason: not valid java name */
    public l5 m21754do() throws j41 {
        return m21755if(false);
    }

    /* renamed from: if, reason: not valid java name */
    public l5 m21755if(boolean z) throws j41 {
        yn1[] yn1VarArrM21742else = m21742else(m21740class());
        if (z) {
            yn1 yn1Var = yn1VarArrM21742else[0];
            yn1VarArrM21742else[0] = yn1VarArrM21742else[2];
            yn1VarArrM21742else[2] = yn1Var;
        }
        m21738case(yn1VarArrM21742else);
        z8 z8Var = this.f17403do;
        int i = this.f17402case;
        return new l5(m21746import(z8Var, yn1VarArrM21742else[i % 4], yn1VarArrM21742else[(i + 1) % 4], yn1VarArrM21742else[(i + 2) % 4], yn1VarArrM21742else[(i + 3) % 4]), m21741const(yn1VarArrM21742else), this.f17405if, this.f17406new, this.f17404for);
    }
}
