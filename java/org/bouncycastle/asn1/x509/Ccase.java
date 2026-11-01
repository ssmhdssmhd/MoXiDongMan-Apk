package org.bouncycastle.asn1.x509;

import android.support.v4.b1;
import android.support.v4.t62;
import android.support.v4.tg2;
import android.support.v4.y90;
import java.util.Enumeration;
import java.util.NoSuchElementException;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cnative;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.u;

/* renamed from: org.bouncycastle.asn1.x509.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public Csuper f29217case;

    /* renamed from: do, reason: not valid java name */
    public Cgoto f29218do;

    /* renamed from: else, reason: not valid java name */
    public y90 f29219else;

    /* renamed from: for, reason: not valid java name */
    public tg2 f29220for;

    /* renamed from: if, reason: not valid java name */
    public b1 f29221if;

    /* renamed from: new, reason: not valid java name */
    public t62 f29222new;

    /* renamed from: try, reason: not valid java name */
    public t62 f29223try;

    /* renamed from: org.bouncycastle.asn1.x509.case$for, reason: invalid class name */
    public class Cfor implements Enumeration {
        private Cfor() {
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return false;
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            throw new NoSuchElementException("Empty Enumeration");
        }
    }

    /* renamed from: org.bouncycastle.asn1.x509.case$if, reason: invalid class name */
    public static class Cif extends Cbreak {

        /* renamed from: do, reason: not valid java name */
        public Csuper f29225do;

        /* renamed from: if, reason: not valid java name */
        public y90 f29226if;

        private Cif(Csuper csuper) {
            if (csuper.size() >= 2 && csuper.size() <= 3) {
                this.f29225do = csuper;
                return;
            }
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }

        /* renamed from: try, reason: not valid java name */
        public static Cif m33202try(Object obj) {
            if (obj instanceof Cif) {
                return (Cif) obj;
            }
            if (obj != null) {
                return new Cif(Csuper.m33129catch(obj));
            }
            return null;
        }

        /* renamed from: case, reason: not valid java name */
        public t62 m33203case() {
            return t62.m7734try(this.f29225do.mo33075final(1));
        }

        /* renamed from: else, reason: not valid java name */
        public Cgoto m33204else() {
            return Cgoto.m33040catch(this.f29225do.mo33075final(0));
        }

        /* renamed from: goto, reason: not valid java name */
        public boolean m33205goto() {
            return this.f29225do.size() == 3;
        }

        /* renamed from: new, reason: not valid java name */
        public y90 m33206new() {
            if (this.f29226if == null && this.f29225do.size() == 3) {
                this.f29226if = y90.m9782break(this.f29225do.mo33075final(2));
            }
            return this.f29226if;
        }

        @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
        public Cfinal toASN1Primitive() {
            return this.f29225do;
        }
    }

    /* renamed from: org.bouncycastle.asn1.x509.case$new, reason: invalid class name */
    public class Cnew implements Enumeration {

        /* renamed from: do, reason: not valid java name */
        private final Enumeration f29227do;

        public Cnew(Enumeration enumeration) {
            this.f29227do = enumeration;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f29227do.hasMoreElements();
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            return Cif.m33202try(this.f29227do.nextElement());
        }
    }

    public Ccase(Csuper csuper) {
        if (csuper.size() < 3 || csuper.size() > 7) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        int i = 0;
        if (csuper.mo33075final(0) instanceof Cgoto) {
            this.f29218do = Cgoto.m33040catch(csuper.mo33075final(0));
            i = 1;
        } else {
            this.f29218do = null;
        }
        int i2 = i + 1;
        this.f29221if = b1.m418try(csuper.mo33075final(i));
        int i3 = i2 + 1;
        this.f29220for = tg2.m7884else(csuper.mo33075final(i2));
        int i4 = i3 + 1;
        this.f29222new = t62.m7734try(csuper.mo33075final(i3));
        if (i4 < csuper.size() && ((csuper.mo33075final(i4) instanceof Cnative) || (csuper.mo33075final(i4) instanceof org.bouncycastle.asn1.Ccase) || (csuper.mo33075final(i4) instanceof t62))) {
            this.f29223try = t62.m7734try(csuper.mo33075final(i4));
            i4++;
        }
        if (i4 < csuper.size() && !(csuper.mo33075final(i4) instanceof Cimport)) {
            this.f29217case = Csuper.m33129catch(csuper.mo33075final(i4));
            i4++;
        }
        if (i4 >= csuper.size() || !(csuper.mo33075final(i4) instanceof Cimport)) {
            return;
        }
        this.f29219else = y90.m9782break(Csuper.m33130class((Cimport) csuper.mo33075final(i4), true));
    }

    /* renamed from: case, reason: not valid java name */
    public static Ccase m33191case(Cimport cimport, boolean z) {
        return m33192try(Csuper.m33130class(cimport, z));
    }

    /* renamed from: try, reason: not valid java name */
    public static Ccase m33192try(Object obj) {
        if (obj instanceof Ccase) {
            return (Ccase) obj;
        }
        if (obj != null) {
            return new Ccase(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public Cif[] m33193break() {
        Csuper csuper = this.f29217case;
        if (csuper == null) {
            return new Cif[0];
        }
        int size = csuper.size();
        Cif[] cifArr = new Cif[size];
        for (int i = 0; i < size; i++) {
            cifArr[i] = Cif.m33202try(this.f29217case.mo33075final(i));
        }
        return cifArr;
    }

    /* renamed from: catch, reason: not valid java name */
    public b1 m33194catch() {
        return this.f29221if;
    }

    /* renamed from: class, reason: not valid java name */
    public t62 m33195class() {
        return this.f29222new;
    }

    /* renamed from: const, reason: not valid java name */
    public Cgoto m33196const() {
        return this.f29218do;
    }

    /* renamed from: else, reason: not valid java name */
    public tg2 m33197else() {
        return this.f29220for;
    }

    /* renamed from: final, reason: not valid java name */
    public int m33198final() {
        Cgoto cgoto = this.f29218do;
        if (cgoto == null) {
            return 1;
        }
        return cgoto.m33044final().intValue() + 1;
    }

    /* renamed from: goto, reason: not valid java name */
    public t62 m33199goto() {
        return this.f29223try;
    }

    /* renamed from: new, reason: not valid java name */
    public y90 m33200new() {
        return this.f29219else;
    }

    /* renamed from: this, reason: not valid java name */
    public Enumeration m33201this() {
        Csuper csuper = this.f29217case;
        return csuper == null ? new Cfor() : new Cnew(csuper.mo33076super());
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        android.support.v4.Cimport cimport = new android.support.v4.Cimport();
        Cgoto cgoto = this.f29218do;
        if (cgoto != null) {
            cimport.m3516do(cgoto);
        }
        cimport.m3516do(this.f29221if);
        cimport.m3516do(this.f29220for);
        cimport.m3516do(this.f29222new);
        t62 t62Var = this.f29223try;
        if (t62Var != null) {
            cimport.m3516do(t62Var);
        }
        Csuper csuper = this.f29217case;
        if (csuper != null) {
            cimport.m3516do(csuper);
        }
        if (this.f29219else != null) {
            cimport.m3516do(new u(0, this.f29219else));
        }
        return new n(cimport);
    }
}
