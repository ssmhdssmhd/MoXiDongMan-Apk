package org.bouncycastle.asn1.cmc;

import android.support.v4.Cimport;
import android.support.v4.bd1;
import android.support.v4.ne;
import android.support.v4.pe;
import android.support.v4.ta;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.v;

/* renamed from: org.bouncycastle.asn1.cmc.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final pe f28927do;

    /* renamed from: for, reason: not valid java name */
    private final v f28928for;

    /* renamed from: if, reason: not valid java name */
    private final Csuper f28929if;

    /* renamed from: new, reason: not valid java name */
    private final Cdo f28930new;

    /* renamed from: org.bouncycastle.asn1.cmc.for$do, reason: invalid class name */
    public static class Cdo extends Cbreak implements ASN1Choice {

        /* renamed from: do, reason: not valid java name */
        private final ne f28931do;

        /* renamed from: if, reason: not valid java name */
        private final bd1 f28932if;

        public Cdo(bd1 bd1Var) {
            this(null, bd1Var);
        }

        public Cdo(ne neVar) {
            this(neVar, null);
        }

        private Cdo(ne neVar, bd1 bd1Var) {
            this.f28931do = neVar;
            this.f28932if = bd1Var;
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: try, reason: not valid java name */
        public static Cdo m32831try(Object obj) {
            if (obj instanceof Cdo) {
                return (Cdo) obj;
            }
            if (obj instanceof ASN1Encodable) {
                Cfinal aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
                if (aSN1Primitive instanceof Cgoto) {
                    return new Cdo(ne.m5154new(aSN1Primitive));
                }
                if (aSN1Primitive instanceof Csuper) {
                    return new Cdo(bd1.m516new(aSN1Primitive));
                }
            }
            throw new IllegalArgumentException("unknown object in getInstance(): " + obj.getClass().getName());
        }

        /* renamed from: case, reason: not valid java name */
        public boolean m32832case() {
            return this.f28931do != null;
        }

        @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
        public Cfinal toASN1Primitive() {
            bd1 bd1Var = this.f28932if;
            return bd1Var != null ? bd1Var.toASN1Primitive() : this.f28931do.toASN1Primitive();
        }
    }

    public Cfor(pe peVar, Csuper csuper, v vVar, Cdo cdo) {
        this.f28927do = peVar;
        this.f28929if = csuper;
        this.f28928for = vVar;
        this.f28930new = cdo;
    }

    private Cfor(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final;
        if (csuper.size() < 2 || csuper.size() > 4) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f28927do = pe.m5954new(csuper.mo33075final(0));
        this.f28929if = Csuper.m33129catch(csuper.mo33075final(1));
        if (csuper.size() <= 3) {
            if (csuper.size() <= 2) {
                this.f28928for = null;
            } else if (csuper.mo33075final(2) instanceof v) {
                this.f28928for = v.m33177catch(csuper.mo33075final(2));
            } else {
                this.f28928for = null;
                aSN1EncodableMo33075final = csuper.mo33075final(2);
            }
            this.f28930new = null;
            return;
        }
        this.f28928for = v.m33177catch(csuper.mo33075final(2));
        aSN1EncodableMo33075final = csuper.mo33075final(3);
        this.f28930new = Cdo.m32831try(aSN1EncodableMo33075final);
    }

    /* renamed from: case, reason: not valid java name */
    public static Cfor m32824case(Object obj) {
        if (obj instanceof Cfor) {
            return (Cfor) obj;
        }
        if (obj != null) {
            return new Cfor(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    public Cdo m32825else() {
        return this.f28930new;
    }

    /* renamed from: goto, reason: not valid java name */
    public v m32826goto() {
        return this.f28928for;
    }

    /* renamed from: new, reason: not valid java name */
    public ta[] m32827new() {
        return Cgoto.m32834for(this.f28929if);
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m32828this() {
        return this.f28930new != null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f28927do);
        cimport.m3516do(this.f28929if);
        v vVar = this.f28928for;
        if (vVar != null) {
            cimport.m3516do(vVar);
        }
        Cdo cdo = this.f28930new;
        if (cdo != null) {
            cimport.m3516do(cdo);
        }
        return new n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public pe m32829try() {
        return this.f28927do;
    }
}
