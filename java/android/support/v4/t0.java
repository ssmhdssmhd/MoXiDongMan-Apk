package android.support.v4;

import java.util.Enumeration;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class t0 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private tg0 f6347do;

    /* renamed from: if, reason: not valid java name */
    private Csuper f6348if;

    public t0(tg0 tg0Var, Csuper csuper) {
        this.f6347do = tg0Var;
        this.f6348if = csuper;
    }

    private t0(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final;
        int size = csuper.size();
        if (size == 1) {
            aSN1EncodableMo33075final = csuper.mo33075final(0);
        } else {
            if (size != 2) {
                throw new IllegalArgumentException("Bad sequence size: " + csuper.size());
            }
            this.f6347do = tg0.m7877try(csuper.mo33075final(0));
            aSN1EncodableMo33075final = csuper.mo33075final(1);
        }
        this.f6348if = Csuper.m33129catch(aSN1EncodableMo33075final);
    }

    /* renamed from: case, reason: not valid java name */
    public static t0 m7667case(Object obj) {
        if (obj == null || (obj instanceof t0)) {
            return (t0) obj;
        }
        if (obj instanceof Csuper) {
            return new t0((Csuper) obj);
        }
        throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: new, reason: not valid java name */
    public tg0 m7668new() {
        return this.f6347do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        tg0 tg0Var = this.f6347do;
        if (tg0Var != null) {
            cimport.m3516do(tg0Var);
        }
        cimport.m3516do(this.f6348if);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public u0[] m7669try() {
        u0[] u0VarArr = new u0[this.f6348if.size()];
        Enumeration enumerationMo33076super = this.f6348if.mo33076super();
        int i = 0;
        while (enumerationMo33076super.hasMoreElements()) {
            u0VarArr[i] = u0.m8164try(enumerationMo33076super.nextElement());
            i++;
        }
        return u0VarArr;
    }
}
