package android.support.v4;

import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class uq0 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private bo0 f6964do;

    /* renamed from: if, reason: not valid java name */
    private pl1 f6965if;

    public uq0(bo0 bo0Var) {
        this.f6964do = bo0Var;
        this.f6965if = null;
    }

    public uq0(pl1 pl1Var) {
        this.f6964do = null;
        this.f6965if = pl1Var;
    }

    /* renamed from: new, reason: not valid java name */
    public static uq0 m8589new(Object obj) {
        if (obj == null || (obj instanceof uq0)) {
            return (uq0) obj;
        }
        if (obj instanceof Csuper) {
            return new uq0(bo0.m601new(obj));
        }
        if (obj instanceof Cimport) {
            Cimport cimport = (Cimport) obj;
            if (cimport.getTagNo() == 0) {
                return new uq0(pl1.m6111case(cimport, false));
            }
        }
        throw new IllegalArgumentException("Invalid KeyAgreeRecipientIdentifier: " + obj.getClass().getName());
    }

    /* renamed from: try, reason: not valid java name */
    public static uq0 m8590try(Cimport cimport, boolean z) {
        return m8589new(Csuper.m33130class(cimport, z));
    }

    /* renamed from: case, reason: not valid java name */
    public bo0 m8591case() {
        return this.f6964do;
    }

    /* renamed from: else, reason: not valid java name */
    public pl1 m8592else() {
        return this.f6965if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        bo0 bo0Var = this.f6964do;
        return bo0Var != null ? bo0Var.toASN1Primitive() : new org.bouncycastle.asn1.u(false, 0, this.f6965if);
    }
}
