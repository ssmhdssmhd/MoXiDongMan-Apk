package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1String;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class c21 extends Cbreak implements ASN1Choice {

    /* renamed from: do, reason: not valid java name */
    private g10 f581do;

    /* renamed from: for, reason: not valid java name */
    private Csuper f582for;

    /* renamed from: if, reason: not valid java name */
    private g10 f583if;

    public c21(g10 g10Var) {
        this.f581do = g10Var;
    }

    public c21(g10 g10Var, Csuper csuper) {
        this.f583if = g10Var;
        this.f582for = csuper;
    }

    public c21(String str) {
        this(new g10(str));
    }

    private c21(Csuper csuper) {
        if (csuper.size() != 2) {
            throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
        }
        if (csuper.mo33075final(0) instanceof ASN1String) {
            this.f583if = g10.m2502new(csuper.mo33075final(0));
            this.f582for = Csuper.m33129catch(csuper.mo33075final(1));
        } else {
            throw new IllegalArgumentException("Bad object encountered: " + csuper.mo33075final(0).getClass());
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static c21 m716try(Object obj) {
        if (obj == null || (obj instanceof c21)) {
            return (c21) obj;
        }
        if (obj instanceof ASN1String) {
            return new c21(g10.m2502new(obj));
        }
        if (obj instanceof Csuper) {
            return new c21((Csuper) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: case, reason: not valid java name */
    public g10 m717case() {
        return this.f581do;
    }

    /* renamed from: else, reason: not valid java name */
    public g10 m718else() {
        return this.f583if;
    }

    /* renamed from: new, reason: not valid java name */
    public g10[] m719new() {
        g10[] g10VarArr = new g10[this.f582for.size()];
        Enumeration enumerationMo33076super = this.f582for.mo33076super();
        int i = 0;
        while (enumerationMo33076super.hasMoreElements()) {
            g10VarArr[i] = g10.m2502new(enumerationMo33076super.nextElement());
            i++;
        }
        return g10VarArr;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        g10 g10Var = this.f581do;
        if (g10Var != null) {
            return g10Var.toASN1Primitive();
        }
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f583if);
        cimport.m3516do(this.f582for);
        return new org.bouncycastle.asn1.n(cimport);
    }
}
