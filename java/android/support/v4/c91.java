package android.support.v4;

import java.io.IOException;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class c91 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private final ne f657do;

    /* renamed from: for, reason: not valid java name */
    private final s90 f658for;

    /* renamed from: if, reason: not valid java name */
    private final bd1 f659if;

    public c91(bd1 bd1Var) {
        this(null, bd1Var, null);
    }

    public c91(ne neVar) {
        this(neVar, null, null);
    }

    private c91(ne neVar, bd1 bd1Var, s90 s90Var) {
        this.f657do = neVar;
        this.f659if = bd1Var;
        this.f658for = s90Var;
    }

    public c91(s90 s90Var) {
        this(null, null, s90Var);
    }

    /* renamed from: new, reason: not valid java name */
    public static c91 m815new(Object obj) {
        if (obj instanceof c91) {
            return (c91) obj;
        }
        if (obj instanceof ASN1Encodable) {
            Cfinal aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof Cgoto) {
                return new c91(ne.m5154new(aSN1Primitive));
            }
            if (aSN1Primitive instanceof Csuper) {
                return ((Csuper) aSN1Primitive).mo33075final(0) instanceof Ccatch ? new c91(s90.m7305case(aSN1Primitive)) : new c91(bd1.m516new(aSN1Primitive));
            }
        } else if (obj instanceof byte[]) {
            try {
                return m815new(Cfinal.m33015else((byte[]) obj));
            } catch (IOException e) {
                throw new IllegalArgumentException("parsing error: " + e.getMessage());
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
    }

    /* renamed from: case, reason: not valid java name */
    public boolean m816case() {
        return this.f657do != null;
    }

    /* renamed from: else, reason: not valid java name */
    public boolean m817else() {
        return this.f659if != null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        bd1 bd1Var = this.f659if;
        if (bd1Var != null) {
            return bd1Var.toASN1Primitive();
        }
        ne neVar = this.f657do;
        return neVar != null ? neVar.toASN1Primitive() : this.f658for.toASN1Primitive();
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m818try() {
        return this.f658for != null;
    }
}
