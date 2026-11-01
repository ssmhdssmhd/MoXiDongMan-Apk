package org.bouncycastle.pqc.math.linearalgebra;

import java.security.SecureRandom;
import java.util.Vector;

/* renamed from: org.bouncycastle.pqc.math.linearalgebra.try, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Ctry {

    /* renamed from: do, reason: not valid java name */
    public final SecureRandom f32639do;

    /* renamed from: for, reason: not valid java name */
    public Cfor f32640for;

    /* renamed from: if, reason: not valid java name */
    public int f32641if;

    /* renamed from: new, reason: not valid java name */
    public Vector f32642new;

    /* renamed from: try, reason: not valid java name */
    public Vector f32643try;

    public Ctry(SecureRandom secureRandom) {
        this.f32639do = secureRandom;
    }

    /* renamed from: case */
    public abstract Cnew mo36121case(Cfor cfor);

    /* renamed from: do */
    public abstract void mo36125do(Ctry ctry);

    /* renamed from: else, reason: not valid java name */
    public final Cfor[] m36304else(Cfor[] cforArr) throws RuntimeException {
        Cfor[] cforArr2 = new Cfor[cforArr.length];
        Cfor[] cforArr3 = new Cfor[cforArr.length];
        int i = 0;
        for (int i2 = 0; i2 < this.f32641if; i2++) {
            cforArr2[i2] = new Cfor(cforArr[i2]);
            cforArr3[i2] = new Cfor(this.f32641if);
            cforArr3[i2].m36237protected((this.f32641if - 1) - i2);
        }
        while (true) {
            int i3 = this.f32641if;
            if (i >= i3 - 1) {
                for (int i4 = i3 - 1; i4 > 0; i4--) {
                    for (int i5 = i4 - 1; i5 >= 0; i5--) {
                        if (cforArr2[i5].h((this.f32641if - 1) - i4)) {
                            cforArr2[i5].m36230if(cforArr2[i4]);
                            cforArr3[i5].m36230if(cforArr3[i4]);
                        }
                    }
                }
                return cforArr3;
            }
            int i6 = i;
            while (true) {
                int i7 = this.f32641if;
                if (i6 >= i7 || cforArr2[i6].h((i7 - 1) - i)) {
                    break;
                }
                i6++;
            }
            if (i6 >= this.f32641if) {
                throw new RuntimeException("GF2nField.invertMatrix: Matrix cannot be inverted!");
            }
            if (i != i6) {
                Cfor cfor = cforArr2[i];
                cforArr2[i] = cforArr2[i6];
                cforArr2[i6] = cfor;
                Cfor cfor2 = cforArr3[i];
                cforArr3[i] = cforArr3[i6];
                cforArr3[i6] = cfor2;
            }
            int i8 = i + 1;
            int i9 = i8;
            while (true) {
                int i10 = this.f32641if;
                if (i9 < i10) {
                    if (cforArr2[i9].h((i10 - 1) - i)) {
                        cforArr2[i9].m36230if(cforArr2[i]);
                        cforArr3[i9].m36230if(cforArr3[i]);
                    }
                    i9++;
                }
            }
            i = i8;
        }
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Ctry)) {
            return false;
        }
        Ctry ctry = (Ctry) obj;
        if (ctry.f32641if != this.f32641if || !this.f32640for.equals(ctry.f32640for)) {
            return false;
        }
        if (!(this instanceof Cbreak) || (ctry instanceof Cbreak)) {
            return !(this instanceof Celse) || (ctry instanceof Celse);
        }
        return false;
    }

    /* renamed from: for, reason: not valid java name */
    public final Cnew m36305for(Cnew cnew, Ctry ctry) throws RuntimeException {
        if (ctry == this || this.f32640for.equals(ctry.f32640for)) {
            return (Cnew) cnew.clone();
        }
        if (this.f32641if != ctry.f32641if) {
            throw new RuntimeException("GF2nField.convert: B1 has a different degree and thus cannot be coverted to!");
        }
        int iIndexOf = this.f32642new.indexOf(ctry);
        if (iIndexOf == -1) {
            mo36125do(ctry);
            iIndexOf = this.f32642new.indexOf(ctry);
        }
        Cfor[] cforArr = (Cfor[]) this.f32643try.elementAt(iIndexOf);
        Cnew cnew2 = (Cnew) cnew.clone();
        if (cnew2 instanceof Ccase) {
            ((Ccase) cnew2).m36147switch();
        }
        Cfor cfor = new Cfor(this.f32641if, cnew2.toFlexiBigInt());
        cfor.m36241this(this.f32641if);
        Cfor cfor2 = new Cfor(this.f32641if);
        for (int i = 0; i < this.f32641if; i++) {
            if (cfor.n(cforArr[i])) {
                cfor2.m36237protected((this.f32641if - 1) - i);
            }
        }
        if (ctry instanceof Cbreak) {
            return new Cthis((Cbreak) ctry, cfor2);
        }
        if (!(ctry instanceof Celse)) {
            throw new RuntimeException("GF2nField.convert: B1 must be an instance of GF2nPolynomialField or GF2nONBField!");
        }
        Ccase ccase = new Ccase((Celse) ctry, cfor2.j());
        ccase.m36147switch();
        return ccase;
    }

    public int hashCode() {
        return this.f32641if + this.f32640for.hashCode();
    }

    /* renamed from: if */
    public abstract void mo36128if();

    /* renamed from: new, reason: not valid java name */
    public final int m36306new() {
        return this.f32641if;
    }

    /* renamed from: try, reason: not valid java name */
    public final Cfor m36307try() {
        if (this.f32640for == null) {
            mo36128if();
        }
        return new Cfor(this.f32640for);
    }
}
