package org.bouncycastle.pqc.math.linearalgebra;

import java.lang.reflect.Array;
import java.security.SecureRandom;
import java.util.Random;
import java.util.Vector;

/* renamed from: org.bouncycastle.pqc.math.linearalgebra.else, reason: invalid class name */
/* loaded from: classes3.dex */
public class Celse extends Ctry {

    /* renamed from: break, reason: not valid java name */
    private static final int f32619break = 64;

    /* renamed from: case, reason: not valid java name */
    private int f32620case;

    /* renamed from: else, reason: not valid java name */
    private int f32621else;

    /* renamed from: goto, reason: not valid java name */
    private int f32622goto;

    /* renamed from: this, reason: not valid java name */
    public int[][] f32623this;

    public Celse(int i, SecureRandom secureRandom) throws RuntimeException {
        super(secureRandom);
        if (i < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.f32641if = i;
        int i2 = i / 64;
        this.f32620case = i2;
        int i3 = i & 63;
        this.f32621else = i3;
        if (i3 == 0) {
            this.f32621else = 64;
        } else {
            this.f32620case = i2 + 1;
        }
        m36204this();
        if (this.f32622goto >= 3) {
            throw new RuntimeException("\nThe type of this field is " + this.f32622goto);
        }
        this.f32623this = (int[][]) Array.newInstance((Class<?>) int.class, this.f32641if, 2);
        for (int i4 = 0; i4 < this.f32641if; i4++) {
            int[][] iArr = this.f32623this;
            iArr[i4][0] = -1;
            iArr[i4][1] = -1;
        }
        m36203goto();
        mo36128if();
        this.f32642new = new Vector();
        this.f32643try = new Vector();
    }

    /* renamed from: break, reason: not valid java name */
    private int m36202break(int i, int i2) {
        int iM36166implements;
        Random random = new Random();
        int iNextInt = 0;
        while (iNextInt == 0) {
            int i3 = i2 - 1;
            iNextInt = random.nextInt() % i3;
            if (iNextInt < 0) {
                iNextInt += i3;
            }
        }
        while (true) {
            iM36166implements = Ccatch.m36166implements(iNextInt, i2);
            if (iM36166implements % i == 0 && iM36166implements != 0) {
                break;
            }
            while (iNextInt == 0) {
                int i4 = i2 - 1;
                iNextInt = random.nextInt() % i4;
                if (iNextInt < 0) {
                    iNextInt += i4;
                }
            }
        }
        int i5 = iNextInt;
        for (int i6 = 2; i6 <= i / iM36166implements; i6++) {
            i5 *= iNextInt;
        }
        return i5;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m36203goto() {
        int i;
        int i2 = this.f32622goto;
        if ((i2 & 7) == 0) {
            throw new RuntimeException("bisher nur fuer Gausssche Normalbasen implementiert");
        }
        int i3 = (this.f32641if * i2) + 1;
        int[] iArr = new int[i3];
        int iM36202break = i2 == 1 ? 1 : i2 == 2 ? i3 - 1 : m36202break(i2, i3);
        int i4 = 0;
        int i5 = 1;
        while (true) {
            i = this.f32622goto;
            if (i4 >= i) {
                break;
            }
            int i6 = i5;
            for (int i7 = 0; i7 < this.f32641if; i7++) {
                iArr[i6] = i7;
                i6 = (i6 << 1) % i3;
                if (i6 < 0) {
                    i6 += i3;
                }
            }
            i5 = (i5 * iM36202break) % i3;
            if (i5 < 0) {
                i5 += i3;
            }
            i4++;
        }
        if (i != 1) {
            if (i != 2) {
                throw new RuntimeException("only type 1 or type 2 implemented");
            }
            int i8 = 1;
            while (i8 < i3 - 1) {
                int[][] iArr2 = this.f32623this;
                int i9 = i8 + 1;
                if (iArr2[iArr[i9]][0] == -1) {
                    iArr2[iArr[i9]][0] = iArr[i3 - i8];
                } else {
                    iArr2[iArr[i9]][1] = iArr[i3 - i8];
                }
                i8 = i9;
            }
            return;
        }
        int i10 = 1;
        while (i10 < i3 - 1) {
            int[][] iArr3 = this.f32623this;
            int i11 = i10 + 1;
            if (iArr3[iArr[i11]][0] == -1) {
                iArr3[iArr[i11]][0] = iArr[i3 - i10];
            } else {
                iArr3[iArr[i11]][1] = iArr[i3 - i10];
            }
            i10 = i11;
        }
        int i12 = this.f32641if >> 1;
        for (int i13 = 1; i13 <= i12; i13++) {
            int[][] iArr4 = this.f32623this;
            int i14 = i13 - 1;
            if (iArr4[i14][0] == -1) {
                iArr4[i14][0] = (i12 + i13) - 1;
            } else {
                iArr4[i14][1] = (i12 + i13) - 1;
            }
            int i15 = (i12 + i13) - 1;
            if (iArr4[i15][0] == -1) {
                iArr4[i15][0] = i14;
            } else {
                iArr4[i15][1] = i14;
            }
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m36204this() throws RuntimeException {
        if ((this.f32641if & 7) == 0) {
            throw new RuntimeException("The extension degree is divisible by 8!");
        }
        this.f32622goto = 1;
        int iM36161final = 0;
        while (iM36161final != 1) {
            int i = (this.f32622goto * this.f32641if) + 1;
            if (Ccatch.m36170native(i)) {
                int iM36166implements = Ccatch.m36166implements(2, i);
                int i2 = this.f32622goto;
                int i3 = this.f32641if;
                iM36161final = Ccatch.m36161final((i2 * i3) / iM36166implements, i3);
            }
            this.f32622goto++;
        }
        int i4 = this.f32622goto - 1;
        this.f32622goto = i4;
        if (i4 == 1) {
            int i5 = (this.f32641if << 1) + 1;
            if (Ccatch.m36170native(i5)) {
                int iM36166implements2 = Ccatch.m36166implements(2, i5);
                int i6 = this.f32641if;
                if (Ccatch.m36161final((i6 << 1) / iM36166implements2, i6) == 1) {
                    this.f32622goto++;
                }
            }
        }
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Ctry
    /* renamed from: case */
    public Cnew mo36121case(Cfor cfor) {
        Cgoto cgotoM36248case;
        int iM36253else;
        int iM36253else2;
        Cgoto cgoto = new Cgoto(cfor, this);
        while (cgoto.m36253else() > 1) {
            while (true) {
                Ccase ccase = new Ccase(this, this.f32639do);
                Cgoto cgoto2 = new Cgoto(2, Ccase.m36134throw(this));
                cgoto2.m36261super(1, ccase);
                Cgoto cgoto3 = new Cgoto(cgoto2);
                for (int i = 1; i <= this.f32641if - 1; i++) {
                    cgoto3 = cgoto3.m36247break(cgoto3, cgoto).m36252do(cgoto2);
                }
                cgotoM36248case = cgoto3.m36248case(cgoto);
                iM36253else = cgotoM36248case.m36253else();
                iM36253else2 = cgoto.m36253else();
                if (iM36253else != 0 && iM36253else != iM36253else2) {
                    break;
                }
            }
            cgoto = (iM36253else << 1) > iM36253else2 ? cgoto.m36249catch(cgotoM36248case) : new Cgoto(cgotoM36248case);
        }
        return cgoto.m36255for(0);
    }

    /* renamed from: catch, reason: not valid java name */
    public int m36205catch() {
        return this.f32621else;
    }

    /* renamed from: class, reason: not valid java name */
    public int m36206class() {
        return this.f32620case;
    }

    /* renamed from: const, reason: not valid java name */
    public int[][] m36207const(int[][] iArr) {
        int i = this.f32641if;
        int i2 = this.f32641if;
        int[][] iArr2 = (int[][]) Array.newInstance((Class<?>) int.class, i2, i2);
        for (int i3 = 0; i3 < this.f32641if; i3++) {
            iArr2[i3][i3] = 1;
        }
        for (int i4 = 0; i4 < this.f32641if; i4++) {
            int i5 = i4;
            while (true) {
                int i6 = this.f32641if;
                if (i5 < i6) {
                    iArr[(i6 - 1) - i4][i5] = iArr[i4][i4];
                    i5++;
                }
            }
        }
        return null;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Ctry
    /* renamed from: do */
    public void mo36125do(Ctry ctry) throws RuntimeException {
        Cnew cnewMo36121case;
        int i = this.f32641if;
        if (i != ctry.f32641if) {
            throw new IllegalArgumentException("GF2nField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!");
        }
        Cfor[] cforArr = new Cfor[i];
        for (int i2 = 0; i2 < this.f32641if; i2++) {
            cforArr[i2] = new Cfor(this.f32641if);
        }
        do {
            cnewMo36121case = ctry.mo36121case(this.f32640for);
        } while (cnewMo36121case.isZero());
        Cnew[] cnewArr = new Cthis[this.f32641if];
        cnewArr[0] = (Cnew) cnewMo36121case.clone();
        for (int i3 = 1; i3 < this.f32641if; i3++) {
            cnewArr[i3] = cnewArr[i3 - 1].mo36144goto();
        }
        for (int i4 = 0; i4 < this.f32641if; i4++) {
            for (int i5 = 0; i5 < this.f32641if; i5++) {
                if (cnewArr[i4].mo36139class(i5)) {
                    int i6 = this.f32641if;
                    cforArr[(i6 - i5) - 1].m36237protected((i6 - i4) - 1);
                }
            }
        }
        this.f32642new.addElement(ctry);
        this.f32643try.addElement(cforArr);
        ctry.f32642new.addElement(this);
        ctry.f32643try.addElement(m36304else(cforArr));
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Ctry
    /* renamed from: if */
    public void mo36128if() {
        Cfor cfor;
        int i = this.f32622goto;
        if (i == 1) {
            cfor = new Cfor(this.f32641if + 1, "ALL");
        } else {
            if (i != 2) {
                return;
            }
            Cfor cfor2 = new Cfor(this.f32641if + 1, "ONE");
            Cfor cfor3 = new Cfor(this.f32641if + 1, "X");
            cfor3.m36230if(cfor2);
            Cfor cfor4 = cfor2;
            cfor = cfor3;
            int i2 = 1;
            while (i2 < this.f32641if) {
                Cfor cforM36231implements = cfor.m36231implements();
                cforM36231implements.m36230if(cfor4);
                i2++;
                cfor4 = cfor;
                cfor = cforM36231implements;
            }
        }
        this.f32640for = cfor;
    }
}
