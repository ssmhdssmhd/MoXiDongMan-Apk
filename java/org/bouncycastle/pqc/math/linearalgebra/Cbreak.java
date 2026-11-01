package org.bouncycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;
import java.util.Vector;

/* renamed from: org.bouncycastle.pqc.math.linearalgebra.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak extends Ctry {

    /* renamed from: break, reason: not valid java name */
    private int[] f32599break;

    /* renamed from: case, reason: not valid java name */
    public Cfor[] f32600case;

    /* renamed from: else, reason: not valid java name */
    private boolean f32601else;

    /* renamed from: goto, reason: not valid java name */
    private boolean f32602goto;

    /* renamed from: this, reason: not valid java name */
    private int f32603this;

    public Cbreak(int i, SecureRandom secureRandom) throws RuntimeException {
        super(secureRandom);
        this.f32601else = false;
        this.f32602goto = false;
        this.f32599break = new int[3];
        if (i < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.f32641if = i;
        mo36128if();
        m36117this();
        this.f32642new = new Vector();
        this.f32643try = new Vector();
    }

    public Cbreak(int i, SecureRandom secureRandom, Cfor cfor) throws RuntimeException {
        super(secureRandom);
        this.f32601else = false;
        this.f32602goto = false;
        this.f32599break = new int[3];
        if (i < 3) {
            throw new IllegalArgumentException("degree must be at least 3");
        }
        if (cfor.m36220class() != i + 1) {
            throw new RuntimeException();
        }
        if (!cfor.m36239super()) {
            throw new RuntimeException();
        }
        this.f32641if = i;
        this.f32640for = cfor;
        m36117this();
        int i2 = 2;
        for (int i3 = 1; i3 < this.f32640for.m36220class() - 1; i3++) {
            if (this.f32640for.h(i3)) {
                i2++;
                if (i2 == 3) {
                    this.f32603this = i3;
                }
                if (i2 <= 5) {
                    this.f32599break[i2 - 3] = i3;
                }
            }
        }
        if (i2 == 3) {
            this.f32601else = true;
        }
        if (i2 == 5) {
            this.f32602goto = true;
        }
        this.f32642new = new Vector();
        this.f32643try = new Vector();
    }

    public Cbreak(int i, SecureRandom secureRandom, boolean z) throws RuntimeException {
        super(secureRandom);
        this.f32601else = false;
        this.f32602goto = false;
        this.f32599break = new int[3];
        if (i < 3) {
            throw new IllegalArgumentException("k must be at least 3");
        }
        this.f32641if = i;
        if (z) {
            mo36128if();
        } else {
            m36127goto();
        }
        m36117this();
        this.f32642new = new Vector();
        this.f32643try = new Vector();
    }

    /* renamed from: super, reason: not valid java name */
    private boolean m36116super() throws RuntimeException {
        Cfor cfor = new Cfor(this.f32641if + 1);
        this.f32640for = cfor;
        cfor.m36237protected(0);
        this.f32640for.m36237protected(this.f32641if);
        int i = 1;
        boolean zM36239super = false;
        while (i <= this.f32641if - 3 && !zM36239super) {
            this.f32640for.m36237protected(i);
            int i2 = i + 1;
            int i3 = i2;
            while (i3 <= this.f32641if - 2 && !zM36239super) {
                this.f32640for.m36237protected(i3);
                int i4 = i3 + 1;
                for (int i5 = i4; i5 <= this.f32641if - 1 && !zM36239super; i5++) {
                    this.f32640for.m36237protected(i5);
                    if (((((this.f32641if & 1) != 0) | ((i & 1) != 0) | ((i3 & 1) != 0)) || ((i5 & 1) != 0)) && (zM36239super = this.f32640for.m36239super())) {
                        this.f32602goto = true;
                        int[] iArr = this.f32599break;
                        iArr[0] = i;
                        iArr[1] = i3;
                        iArr[2] = i5;
                        return zM36239super;
                    }
                    this.f32640for.m36233interface(i5);
                }
                this.f32640for.m36233interface(i3);
                i3 = i4;
            }
            this.f32640for.m36233interface(i);
            i = i2;
        }
        return zM36239super;
    }

    /* renamed from: this, reason: not valid java name */
    private void m36117this() throws RuntimeException {
        int i = this.f32641if;
        Cfor[] cforArr = new Cfor[i - 1];
        this.f32600case = new Cfor[i];
        int i2 = 0;
        while (true) {
            Cfor[] cforArr2 = this.f32600case;
            if (i2 >= cforArr2.length) {
                break;
            }
            cforArr2[i2] = new Cfor(this.f32641if, "ZERO");
            i2++;
        }
        for (int i3 = 0; i3 < this.f32641if - 1; i3++) {
            cforArr[i3] = new Cfor(1, "ONE").m36232instanceof(this.f32641if + i3).m36245volatile(this.f32640for);
        }
        for (int i4 = 1; i4 <= Math.abs(this.f32641if >> 1); i4++) {
            int i5 = 1;
            while (true) {
                int i6 = this.f32641if;
                if (i5 <= i6) {
                    if (cforArr[i6 - (i4 << 1)].h(i6 - i5)) {
                        this.f32600case[i5 - 1].m36237protected(this.f32641if - i4);
                    }
                    i5++;
                }
            }
        }
        int iAbs = Math.abs(this.f32641if >> 1) + 1;
        while (true) {
            int i7 = this.f32641if;
            if (iAbs > i7) {
                return;
            }
            this.f32600case[((iAbs << 1) - i7) - 1].m36237protected(i7 - iAbs);
            iAbs++;
        }
    }

    /* renamed from: throw, reason: not valid java name */
    private boolean m36118throw() throws RuntimeException {
        this.f32640for = new Cfor(this.f32641if + 1);
        do {
            this.f32640for.m36235package();
            this.f32640for.m36237protected(this.f32641if);
            this.f32640for.m36237protected(0);
        } while (!this.f32640for.m36239super());
        return true;
    }

    /* renamed from: while, reason: not valid java name */
    private boolean m36119while() throws RuntimeException {
        Cfor cfor = new Cfor(this.f32641if + 1);
        this.f32640for = cfor;
        boolean zM36239super = false;
        cfor.m36237protected(0);
        this.f32640for.m36237protected(this.f32641if);
        for (int i = 1; i < this.f32641if && !zM36239super; i++) {
            this.f32640for.m36237protected(i);
            boolean zM36239super2 = this.f32640for.m36239super();
            if (zM36239super2) {
                this.f32601else = true;
                this.f32603this = i;
                return zM36239super2;
            }
            this.f32640for.m36233interface(i);
            zM36239super = this.f32640for.m36239super();
        }
        return zM36239super;
    }

    /* renamed from: break, reason: not valid java name */
    public int[] m36120break() throws RuntimeException {
        if (!this.f32602goto) {
            throw new RuntimeException();
        }
        int[] iArr = new int[3];
        System.arraycopy(this.f32599break, 0, iArr, 0, 3);
        return iArr;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Ctry
    /* renamed from: case, reason: not valid java name */
    public Cnew mo36121case(Cfor cfor) {
        Cgoto cgotoM36248case;
        int iM36253else;
        int iM36253else2;
        Cgoto cgoto = new Cgoto(cfor, this);
        while (cgoto.m36253else() > 1) {
            while (true) {
                Cthis cthis = new Cthis(this, this.f32639do);
                Cgoto cgoto2 = new Cgoto(2, Cthis.m36291throw(this));
                cgoto2.m36261super(1, cthis);
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
    public Cfor m36122catch(int i) {
        return new Cfor(this.f32600case[i]);
    }

    /* renamed from: class, reason: not valid java name */
    public int m36123class() throws RuntimeException {
        if (this.f32601else) {
            return this.f32603this;
        }
        throw new RuntimeException();
    }

    /* renamed from: const, reason: not valid java name */
    public boolean m36124const() {
        return this.f32602goto;
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Ctry
    /* renamed from: do, reason: not valid java name */
    public void mo36125do(Ctry ctry) throws RuntimeException {
        Cnew cnewMo36121case;
        Cnew[] cnewArr;
        int i = this.f32641if;
        if (i != ctry.f32641if) {
            throw new IllegalArgumentException("GF2nPolynomialField.computeCOBMatrix: B1 has a different degree and thus cannot be coverted to!");
        }
        boolean z = ctry instanceof Celse;
        if (z) {
            ctry.mo36125do(this);
            return;
        }
        Cfor[] cforArr = new Cfor[i];
        for (int i2 = 0; i2 < this.f32641if; i2++) {
            cforArr[i2] = new Cfor(this.f32641if);
        }
        do {
            cnewMo36121case = ctry.mo36121case(this.f32640for);
        } while (cnewMo36121case.isZero());
        if (cnewMo36121case instanceof Ccase) {
            int i3 = this.f32641if;
            cnewArr = new Ccase[i3];
            cnewArr[i3 - 1] = Ccase.m36133super((Celse) ctry);
        } else {
            int i4 = this.f32641if;
            cnewArr = new Cthis[i4];
            cnewArr[i4 - 1] = Cthis.m36289super((Cbreak) ctry);
        }
        int i5 = this.f32641if;
        cnewArr[i5 - 2] = cnewMo36121case;
        for (int i6 = i5 - 3; i6 >= 0; i6--) {
            cnewArr[i6] = (Cnew) cnewArr[i6 + 1].multiply(cnewMo36121case);
        }
        if (z) {
            for (int i7 = 0; i7 < this.f32641if; i7++) {
                int i8 = 0;
                while (true) {
                    if (i8 < this.f32641if) {
                        if (cnewArr[i7].mo36139class((r4 - i8) - 1)) {
                            int i9 = this.f32641if;
                            cforArr[(i9 - i8) - 1].m36237protected((i9 - i7) - 1);
                        }
                        i8++;
                    }
                }
            }
        } else {
            for (int i10 = 0; i10 < this.f32641if; i10++) {
                for (int i11 = 0; i11 < this.f32641if; i11++) {
                    if (cnewArr[i10].mo36139class(i11)) {
                        int i12 = this.f32641if;
                        cforArr[(i12 - i11) - 1].m36237protected((i12 - i10) - 1);
                    }
                }
            }
        }
        this.f32642new.addElement(ctry);
        this.f32643try.addElement(cforArr);
        ctry.f32642new.addElement(this);
        ctry.f32643try.addElement(m36304else(cforArr));
    }

    /* renamed from: final, reason: not valid java name */
    public boolean m36126final() {
        return this.f32601else;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m36127goto() throws RuntimeException {
        if (m36119while() || m36116super()) {
            return;
        }
        m36118throw();
    }

    @Override // org.bouncycastle.pqc.math.linearalgebra.Ctry
    /* renamed from: if, reason: not valid java name */
    public void mo36128if() throws RuntimeException {
        if (m36119while() || m36116super()) {
            return;
        }
        m36118throw();
    }
}
