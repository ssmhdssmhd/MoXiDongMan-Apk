package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class iw extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private Cclass f2906do;

    /* renamed from: for, reason: not valid java name */
    private Csuper f2907for;

    /* renamed from: if, reason: not valid java name */
    private v00 f2908if;

    public iw(u42 u42Var) {
        this.f2907for = new org.bouncycastle.asn1.n(u42Var);
    }

    public iw(v00 v00Var) {
        this.f2908if = v00Var;
    }

    public iw(Cclass cclass) {
        this.f2906do = cclass;
    }

    private iw(Csuper csuper) {
        this.f2907for = csuper;
    }

    public iw(byte[] bArr) {
        this.f2906do = new org.bouncycastle.asn1.j(bArr);
    }

    public iw(u42[] u42VarArr) {
        this.f2907for = new org.bouncycastle.asn1.n(u42VarArr);
    }

    /* renamed from: case, reason: not valid java name */
    public static iw m3622case(Cimport cimport, boolean z) {
        return m3623try(cimport.m33065const());
    }

    /* renamed from: try, reason: not valid java name */
    public static iw m3623try(Object obj) {
        if (obj instanceof iw) {
            return (iw) obj;
        }
        if (obj instanceof Cclass) {
            return new iw((Cclass) obj);
        }
        if (obj instanceof Csuper) {
            return new iw(v00.m8707case(obj));
        }
        if (obj instanceof Cimport) {
            return new iw(Csuper.m33130class((Cimport) obj, false));
        }
        throw new IllegalArgumentException("Unknown object submitted to getInstance: " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public Cclass m3624else() {
        return this.f2906do;
    }

    /* renamed from: goto, reason: not valid java name */
    public v00 m3625goto() {
        return this.f2908if;
    }

    /* renamed from: new, reason: not valid java name */
    public u42[] m3626new() {
        Csuper csuper = this.f2907for;
        if (csuper == null) {
            return null;
        }
        int size = csuper.size();
        u42[] u42VarArr = new u42[size];
        for (int i = 0; i != size; i++) {
            u42VarArr[i] = u42.m8237else(this.f2907for.mo33075final(i));
        }
        return u42VarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cclass cclass = this.f2906do;
        if (cclass != null) {
            return cclass.toASN1Primitive();
        }
        v00 v00Var = this.f2908if;
        return v00Var != null ? v00Var.toASN1Primitive() : new org.bouncycastle.asn1.u(false, 0, this.f2907for);
    }

    public String toString() {
        StringBuilder sb;
        Object obj;
        if (this.f2906do != null) {
            sb = new StringBuilder();
            sb.append("Data {\n");
            obj = this.f2906do;
        } else if (this.f2908if != null) {
            sb = new StringBuilder();
            sb.append("Data {\n");
            obj = this.f2908if;
        } else {
            sb = new StringBuilder();
            sb.append("Data {\n");
            obj = this.f2907for;
        }
        sb.append(obj);
        sb.append("}\n");
        return sb.toString();
    }
}
