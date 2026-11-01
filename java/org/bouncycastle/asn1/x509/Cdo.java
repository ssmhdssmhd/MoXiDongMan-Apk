package org.bouncycastle.asn1.x509;

import android.support.v4.b1;
import android.support.v4.t62;
import android.support.v4.tg2;
import java.util.Enumeration;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.x509.Ccase;

/* renamed from: org.bouncycastle.asn1.x509.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    public Ccase f29229do;

    /* renamed from: for, reason: not valid java name */
    public Cinstanceof f29230for;

    /* renamed from: if, reason: not valid java name */
    public b1 f29231if;

    /* renamed from: new, reason: not valid java name */
    public boolean f29232new = false;

    /* renamed from: try, reason: not valid java name */
    public int f29233try;

    public Cdo(Csuper csuper) {
        if (csuper.size() != 3) {
            throw new IllegalArgumentException("sequence wrong size for CertificateList");
        }
        this.f29229do = Ccase.m33192try(csuper.mo33075final(0));
        this.f29231if = b1.m418try(csuper.mo33075final(1));
        this.f29230for = Cinstanceof.m33068public(csuper.mo33075final(2));
    }

    /* renamed from: new, reason: not valid java name */
    public static Cdo m33207new(Object obj) {
        if (obj instanceof Cdo) {
            return (Cdo) obj;
        }
        if (obj != null) {
            return new Cdo(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: try, reason: not valid java name */
    public static Cdo m33208try(Cimport cimport, boolean z) {
        return m33207new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: break, reason: not valid java name */
    public Cinstanceof m33209break() {
        return this.f29230for;
    }

    /* renamed from: case, reason: not valid java name */
    public tg2 m33210case() {
        return this.f29229do.m33197else();
    }

    /* renamed from: catch, reason: not valid java name */
    public b1 m33211catch() {
        return this.f29231if;
    }

    /* renamed from: class, reason: not valid java name */
    public Ccase m33212class() {
        return this.f29229do;
    }

    /* renamed from: const, reason: not valid java name */
    public t62 m33213const() {
        return this.f29229do.m33195class();
    }

    /* renamed from: else, reason: not valid java name */
    public t62 m33214else() {
        return this.f29229do.m33199goto();
    }

    /* renamed from: final, reason: not valid java name */
    public int m33215final() {
        return this.f29229do.m33198final();
    }

    /* renamed from: goto, reason: not valid java name */
    public Enumeration m33216goto() {
        return this.f29229do.m33201this();
    }

    @Override // org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        if (!this.f29232new) {
            this.f29233try = super.hashCode();
            this.f29232new = true;
        }
        return this.f29233try;
    }

    /* renamed from: this, reason: not valid java name */
    public Ccase.Cif[] m33217this() {
        return this.f29229do.m33193break();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        android.support.v4.Cimport cimport = new android.support.v4.Cimport();
        cimport.m3516do(this.f29229do);
        cimport.m3516do(this.f29231if);
        cimport.m3516do(this.f29230for);
        return new n(cimport);
    }
}
