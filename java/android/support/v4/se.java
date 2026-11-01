package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class se extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private rg f6130do;

    /* renamed from: for, reason: not valid java name */
    private Cbreak f6131for;

    /* renamed from: if, reason: not valid java name */
    private int f6132if;

    public se(int i, Cbreak cbreak) {
        this.f6132if = i;
        this.f6131for = cbreak;
    }

    public se(q4 q4Var) {
        this(1, q4Var);
    }

    public se(rg rgVar) {
        if (rgVar.m6967throw() != 3) {
            throw new IllegalArgumentException("only version 3 certificates allowed");
        }
        this.f6130do = rgVar;
    }

    /* renamed from: new, reason: not valid java name */
    public static se m7371new(Object obj) {
        if (obj == null || (obj instanceof se)) {
            return (se) obj;
        }
        if (obj instanceof byte[]) {
            try {
                obj = Cfinal.m33015else((byte[]) obj);
            } catch (IOException unused) {
                throw new IllegalArgumentException("Invalid encoding in CMPCertificate");
            }
        }
        if (obj instanceof Csuper) {
            return new se(rg.m6956try(obj));
        }
        if (obj instanceof Cimport) {
            Cimport cimport = (Cimport) obj;
            return new se(cimport.getTagNo(), cimport.m33065const());
        }
        throw new IllegalArgumentException("Invalid object: " + obj.getClass().getName());
    }

    /* renamed from: case, reason: not valid java name */
    public int m7372case() {
        return this.f6132if;
    }

    /* renamed from: else, reason: not valid java name */
    public q4 m7373else() {
        return q4.m6399try(this.f6131for);
    }

    /* renamed from: goto, reason: not valid java name */
    public rg m7374goto() {
        return this.f6130do;
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m7375this() {
        return this.f6130do != null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f6131for != null ? new org.bouncycastle.asn1.u(true, this.f6132if, this.f6131for) : this.f6130do.toASN1Primitive();
    }

    /* renamed from: try, reason: not valid java name */
    public Cbreak m7376try() {
        return this.f6131for;
    }
}
