package org.bouncycastle.pqc.math.linearalgebra;

/* renamed from: org.bouncycastle.pqc.math.linearalgebra.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto {

    /* renamed from: do, reason: not valid java name */
    private Cnew[] f32632do;

    /* renamed from: if, reason: not valid java name */
    private int f32633if;

    private Cgoto(int i) {
        this.f32633if = i;
        this.f32632do = new Cnew[i];
    }

    public Cgoto(int i, Cnew cnew) {
        this.f32633if = i;
        this.f32632do = new Cnew[i];
        for (int i2 = 0; i2 < this.f32633if; i2++) {
            this.f32632do[i2] = (Cnew) cnew.clone();
        }
    }

    public Cgoto(Cfor cfor, Ctry ctry) {
        int iM36306new = ctry.m36306new() + 1;
        this.f32633if = iM36306new;
        this.f32632do = new Cnew[iM36306new];
        int i = 0;
        if (ctry instanceof Celse) {
            while (i < this.f32633if) {
                if (cfor.h(i)) {
                    this.f32632do[i] = Ccase.m36133super((Celse) ctry);
                } else {
                    this.f32632do[i] = Ccase.m36134throw((Celse) ctry);
                }
                i++;
            }
            return;
        }
        if (!(ctry instanceof Cbreak)) {
            throw new IllegalArgumentException("PolynomialGF2n(Bitstring, GF2nField): B1 must be an instance of GF2nONBField or GF2nPolynomialField!");
        }
        while (i < this.f32633if) {
            if (cfor.h(i)) {
                this.f32632do[i] = Cthis.m36289super((Cbreak) ctry);
            } else {
                this.f32632do[i] = Cthis.m36291throw((Cbreak) ctry);
            }
            i++;
        }
    }

    public Cgoto(Cgoto cgoto) {
        int i = cgoto.f32633if;
        this.f32632do = new Cnew[i];
        this.f32633if = i;
        for (int i2 = 0; i2 < this.f32633if; i2++) {
            this.f32632do[i2] = (Cnew) cgoto.f32632do[i2].clone();
        }
    }

    /* renamed from: break, reason: not valid java name */
    public final Cgoto m36247break(Cgoto cgoto, Cgoto cgoto2) {
        return m36262this(cgoto).m36250class(cgoto2);
    }

    /* renamed from: case, reason: not valid java name */
    public final Cgoto m36248case(Cgoto cgoto) {
        Cgoto cgoto2 = new Cgoto(this);
        Cgoto cgoto3 = new Cgoto(cgoto);
        cgoto2.m36258import();
        cgoto3.m36258import();
        Cgoto cgoto4 = cgoto2;
        Cgoto cgotoM36251const = cgoto3;
        while (!cgotoM36251const.m36256goto()) {
            Cgoto cgoto5 = cgotoM36251const;
            cgotoM36251const = cgoto4.m36251const(cgotoM36251const);
            cgoto4 = cgoto5;
        }
        return cgoto4.m36254final((Cnew) cgoto4.f32632do[cgoto4.m36253else()].invert());
    }

    /* renamed from: catch, reason: not valid java name */
    public final Cgoto m36249catch(Cgoto cgoto) throws RuntimeException {
        return m36260new(cgoto)[0];
    }

    /* renamed from: class, reason: not valid java name */
    public final Cgoto m36250class(Cgoto cgoto) throws RuntimeException {
        return m36251const(cgoto);
    }

    /* renamed from: const, reason: not valid java name */
    public final Cgoto m36251const(Cgoto cgoto) throws RuntimeException {
        return m36260new(cgoto)[1];
    }

    /* renamed from: do, reason: not valid java name */
    public final Cgoto m36252do(Cgoto cgoto) {
        Cgoto cgoto2;
        int i = 0;
        if (m36259native() >= cgoto.m36259native()) {
            cgoto2 = new Cgoto(m36259native());
            while (i < cgoto.m36259native()) {
                cgoto2.f32632do[i] = (Cnew) this.f32632do[i].add(cgoto.f32632do[i]);
                i++;
            }
            while (i < m36259native()) {
                cgoto2.f32632do[i] = this.f32632do[i];
                i++;
            }
        } else {
            cgoto2 = new Cgoto(cgoto.m36259native());
            while (i < m36259native()) {
                cgoto2.f32632do[i] = (Cnew) this.f32632do[i].add(cgoto.f32632do[i]);
                i++;
            }
            while (i < cgoto.m36259native()) {
                cgoto2.f32632do[i] = cgoto.f32632do[i];
                i++;
            }
        }
        return cgoto2;
    }

    /* renamed from: else, reason: not valid java name */
    public final int m36253else() {
        for (int i = this.f32633if - 1; i >= 0; i--) {
            if (!this.f32632do[i].isZero()) {
                return i;
            }
        }
        return -1;
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Cgoto)) {
            return false;
        }
        Cgoto cgoto = (Cgoto) obj;
        if (m36253else() != cgoto.m36253else()) {
            return false;
        }
        for (int i = 0; i < this.f32633if; i++) {
            if (!this.f32632do[i].equals(cgoto.f32632do[i])) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: final, reason: not valid java name */
    public final Cgoto m36254final(Cnew cnew) {
        Cgoto cgoto = new Cgoto(m36259native());
        for (int i = 0; i < m36259native(); i++) {
            cgoto.f32632do[i] = (Cnew) this.f32632do[i].multiply(cnew);
        }
        return cgoto;
    }

    /* renamed from: for, reason: not valid java name */
    public final Cnew m36255for(int i) {
        return this.f32632do[i];
    }

    /* renamed from: goto, reason: not valid java name */
    public final boolean m36256goto() {
        for (int i = 0; i < this.f32633if; i++) {
            Cnew[] cnewArr = this.f32632do;
            if (cnewArr[i] != null && !cnewArr[i].isZero()) {
                return false;
            }
        }
        return true;
    }

    public int hashCode() {
        return m36253else() + this.f32632do.hashCode();
    }

    /* renamed from: if, reason: not valid java name */
    public final void m36257if() {
        for (int i = 0; i < this.f32633if; i++) {
            this.f32632do[i].mo36145if();
        }
    }

    /* renamed from: import, reason: not valid java name */
    public final void m36258import() {
        int i = this.f32633if;
        do {
            i--;
            if (!this.f32632do[i].isZero()) {
                break;
            }
        } while (i > 0);
        int i2 = i + 1;
        if (i2 < this.f32633if) {
            Cnew[] cnewArr = new Cnew[i2];
            System.arraycopy(this.f32632do, 0, cnewArr, 0, i2);
            this.f32632do = cnewArr;
            this.f32633if = i2;
        }
    }

    /* renamed from: native, reason: not valid java name */
    public final int m36259native() {
        return this.f32633if;
    }

    /* renamed from: new, reason: not valid java name */
    public final Cgoto[] m36260new(Cgoto cgoto) {
        Cgoto cgoto2;
        Cgoto[] cgotoArr = new Cgoto[2];
        Cgoto cgoto3 = new Cgoto(this);
        cgoto3.m36258import();
        int iM36253else = cgoto.m36253else();
        Cnew cnew = (Cnew) cgoto.f32632do[iM36253else].invert();
        if (cgoto3.m36253else() < iM36253else) {
            cgotoArr[0] = new Cgoto(this);
            cgotoArr[0].m36257if();
            cgotoArr[0].m36258import();
            cgotoArr[1] = new Cgoto(this);
            cgoto2 = cgotoArr[1];
        } else {
            cgotoArr[0] = new Cgoto(this);
            cgotoArr[0].m36257if();
            while (true) {
                int iM36253else2 = cgoto3.m36253else() - iM36253else;
                if (iM36253else2 < 0) {
                    break;
                }
                Cnew cnew2 = (Cnew) cgoto3.f32632do[cgoto3.m36253else()].multiply(cnew);
                Cgoto cgotoM36254final = cgoto.m36254final(cnew2);
                cgotoM36254final.m36265while(iM36253else2);
                cgoto3 = cgoto3.m36252do(cgotoM36254final);
                cgoto3.m36258import();
                cgotoArr[0].f32632do[iM36253else2] = (Cnew) cnew2.clone();
            }
            cgotoArr[1] = cgoto3;
            cgoto2 = cgotoArr[0];
        }
        cgoto2.m36258import();
        return cgotoArr;
    }

    /* renamed from: super, reason: not valid java name */
    public final void m36261super(int i, Cnew cnew) {
        if (!(cnew instanceof Cthis) && !(cnew instanceof Ccase)) {
            throw new IllegalArgumentException("PolynomialGF2n.set f must be an instance of either GF2nPolynomialElement or GF2nONBElement!");
        }
        this.f32632do[i] = (Cnew) cnew.clone();
    }

    /* renamed from: this, reason: not valid java name */
    public final Cgoto m36262this(Cgoto cgoto) {
        if (m36259native() != cgoto.m36259native()) {
            throw new IllegalArgumentException("PolynomialGF2n.multiply: this and b must have the same size!");
        }
        Cgoto cgoto2 = new Cgoto((r0 << 1) - 1);
        for (int i = 0; i < m36259native(); i++) {
            for (int i2 = 0; i2 < cgoto.m36259native(); i2++) {
                Cnew[] cnewArr = cgoto2.f32632do;
                int i3 = i + i2;
                if (cnewArr[i3] == null) {
                    cnewArr[i3] = (Cnew) this.f32632do[i].multiply(cgoto.f32632do[i2]);
                } else {
                    cnewArr[i3] = (Cnew) cnewArr[i3].add(this.f32632do[i].multiply(cgoto.f32632do[i2]));
                }
            }
        }
        return cgoto2;
    }

    /* renamed from: throw, reason: not valid java name */
    public final Cgoto m36263throw(int i) {
        if (i <= 0) {
            return new Cgoto(this);
        }
        Cgoto cgoto = new Cgoto(this.f32633if + i, this.f32632do[0]);
        cgoto.m36257if();
        for (int i2 = 0; i2 < this.f32633if; i2++) {
            cgoto.f32632do[i2 + i] = this.f32632do[i2];
        }
        return cgoto;
    }

    /* renamed from: try, reason: not valid java name */
    public final void m36264try(int i) {
        int i2 = this.f32633if;
        if (i <= i2) {
            return;
        }
        Cnew[] cnewArr = new Cnew[i];
        System.arraycopy(this.f32632do, 0, cnewArr, 0, i2);
        Ctry ctryM36285new = this.f32632do[0].m36285new();
        Cnew[] cnewArr2 = this.f32632do;
        if (cnewArr2[0] instanceof Cthis) {
            for (int i3 = this.f32633if; i3 < i; i3++) {
                cnewArr[i3] = Cthis.m36291throw((Cbreak) ctryM36285new);
            }
        } else if (cnewArr2[0] instanceof Ccase) {
            for (int i4 = this.f32633if; i4 < i; i4++) {
                cnewArr[i4] = Ccase.m36134throw((Celse) ctryM36285new);
            }
        }
        this.f32633if = i;
        this.f32632do = cnewArr;
    }

    /* renamed from: while, reason: not valid java name */
    public final void m36265while(int i) {
        if (i > 0) {
            int i2 = this.f32633if;
            Ctry ctryM36285new = this.f32632do[0].m36285new();
            m36264try(this.f32633if + i);
            for (int i3 = i2 - 1; i3 >= 0; i3--) {
                Cnew[] cnewArr = this.f32632do;
                cnewArr[i3 + i] = cnewArr[i3];
            }
            Cnew[] cnewArr2 = this.f32632do;
            if (cnewArr2[0] instanceof Cthis) {
                for (int i4 = i - 1; i4 >= 0; i4--) {
                    this.f32632do[i4] = Cthis.m36291throw((Cbreak) ctryM36285new);
                }
                return;
            }
            if (cnewArr2[0] instanceof Ccase) {
                for (int i5 = i - 1; i5 >= 0; i5--) {
                    this.f32632do[i5] = Ccase.m36134throw((Celse) ctryM36285new);
                }
            }
        }
    }
}
