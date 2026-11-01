package org.bouncycastle.asn1.cmc;

import android.support.v4.b1;
import android.support.v4.tg2;
import java.io.IOException;
import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.u;

/* renamed from: org.bouncycastle.asn1.cmc.case, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccase extends Cbreak {

    /* renamed from: new, reason: not valid java name */
    private static final Cgoto f28916new = new Cgoto(0);

    /* renamed from: do, reason: not valid java name */
    private final Cif f28917do;

    /* renamed from: for, reason: not valid java name */
    private final Cinstanceof f28918for;

    /* renamed from: if, reason: not valid java name */
    private final b1 f28919if;

    /* renamed from: org.bouncycastle.asn1.cmc.case$if, reason: invalid class name */
    public class Cif extends Cbreak {

        /* renamed from: do, reason: not valid java name */
        private final Cgoto f28920do;

        /* renamed from: for, reason: not valid java name */
        private final Csuper f28921for;

        /* renamed from: if, reason: not valid java name */
        private final tg2 f28922if;

        /* renamed from: new, reason: not valid java name */
        private final Cthrow f28923new;

        private Cif(tg2 tg2Var, b1 b1Var, Cinstanceof cinstanceof, Cthrow cthrow) {
            this.f28920do = Ccase.f28916new;
            this.f28922if = tg2Var;
            this.f28921for = new n(new ASN1Encodable[]{b1Var, cinstanceof});
            this.f28923new = cthrow;
        }

        private Cif(Csuper csuper) {
            if (csuper.size() != 4) {
                throw new IllegalArgumentException("incorrect sequence size for CertificationRequestInfo");
            }
            this.f28920do = Cgoto.m33040catch(csuper.mo33075final(0));
            this.f28922if = tg2.m7884else(csuper.mo33075final(1));
            Csuper csuperM33129catch = Csuper.m33129catch(csuper.mo33075final(2));
            this.f28921for = csuperM33129catch;
            if (csuperM33129catch.size() != 2) {
                throw new IllegalArgumentException("incorrect subjectPublicKeyInfo size for CertificationRequestInfo");
            }
            Cimport cimport = (Cimport) csuper.mo33075final(3);
            if (cimport.getTagNo() != 0) {
                throw new IllegalArgumentException("incorrect tag number on attributes for CertificationRequestInfo");
            }
            this.f28923new = Cthrow.m33152const(cimport, false);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: break, reason: not valid java name */
        public Csuper m32810break() {
            return this.f28921for;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: catch, reason: not valid java name */
        public Cgoto m32812catch() {
            return this.f28920do;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: goto, reason: not valid java name */
        public Cthrow m32814goto() {
            return this.f28923new;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: this, reason: not valid java name */
        public tg2 m32816this() {
            return this.f28922if;
        }

        @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
        public Cfinal toASN1Primitive() {
            android.support.v4.Cimport cimport = new android.support.v4.Cimport();
            cimport.m3516do(this.f28920do);
            cimport.m3516do(this.f28922if);
            cimport.m3516do(this.f28921for);
            cimport.m3516do(new u(false, 0, this.f28923new));
            return new n(cimport);
        }
    }

    public Ccase(tg2 tg2Var, b1 b1Var, Cinstanceof cinstanceof, Cthrow cthrow, b1 b1Var2, Cinstanceof cinstanceof2) {
        this.f28917do = new Cif(tg2Var, b1Var, cinstanceof, cthrow);
        this.f28919if = b1Var2;
        this.f28918for = cinstanceof2;
    }

    private Ccase(Csuper csuper) {
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f28917do = new Cif(Csuper.m33129catch(csuper.mo33075final(0)));
        this.f28919if = b1.m418try(csuper.mo33075final(1));
        this.f28918for = Cinstanceof.m33068public(csuper.mo33075final(2));
    }

    /* renamed from: case, reason: not valid java name */
    public static Ccase m32800case(Object obj) {
        if (obj instanceof Ccase) {
            return (Ccase) obj;
        }
        if (obj != null) {
            return new Ccase(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: break, reason: not valid java name */
    public Cinstanceof m32802break() {
        return Cinstanceof.m33068public(this.f28917do.m32810break().mo33075final(1));
    }

    /* renamed from: catch, reason: not valid java name */
    public b1 m32803catch() {
        return b1.m418try(this.f28917do.m32810break().mo33075final(0));
    }

    /* renamed from: class, reason: not valid java name */
    public BigInteger m32804class() {
        return this.f28917do.m32812catch().m33044final();
    }

    /* renamed from: const, reason: not valid java name */
    public Cfinal m32805const() throws IOException {
        return Cfinal.m33015else(m32802break().m33059super());
    }

    /* renamed from: else, reason: not valid java name */
    public Cinstanceof m32806else() {
        return this.f28918for;
    }

    /* renamed from: goto, reason: not valid java name */
    public b1 m32807goto() {
        return this.f28919if;
    }

    /* renamed from: this, reason: not valid java name */
    public tg2 m32808this() {
        return this.f28917do.m32816this();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        android.support.v4.Cimport cimport = new android.support.v4.Cimport();
        cimport.m3516do(this.f28917do);
        cimport.m3516do(this.f28919if);
        cimport.m3516do(this.f28918for);
        return new n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cthrow m32809try() {
        return this.f28917do.m32814goto();
    }
}
