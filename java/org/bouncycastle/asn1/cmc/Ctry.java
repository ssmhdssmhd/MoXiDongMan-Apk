package org.bouncycastle.asn1.cmc;

import android.support.v4.Cimport;
import android.support.v4.c91;
import android.support.v4.pe;
import android.support.v4.ta;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.n;
import org.bouncycastle.asn1.v;

/* renamed from: org.bouncycastle.asn1.cmc.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private final pe f28938do;

    /* renamed from: for, reason: not valid java name */
    private final v f28939for;

    /* renamed from: if, reason: not valid java name */
    private final Csuper f28940if;

    /* renamed from: new, reason: not valid java name */
    private final c91 f28941new;

    public Ctry(pe peVar, Csuper csuper, v vVar, c91 c91Var) {
        this.f28938do = peVar;
        this.f28940if = csuper;
        this.f28939for = vVar;
        this.f28941new = c91Var;
    }

    private Ctry(Csuper csuper) {
        ASN1Encodable aSN1EncodableMo33075final;
        if (csuper.size() < 2 || csuper.size() > 4) {
            throw new IllegalArgumentException("incorrect sequence size");
        }
        this.f28938do = pe.m5954new(csuper.mo33075final(0));
        this.f28940if = Csuper.m33129catch(csuper.mo33075final(1));
        if (csuper.size() > 2) {
            if (csuper.size() == 4) {
                this.f28939for = v.m33177catch(csuper.mo33075final(2));
                aSN1EncodableMo33075final = csuper.mo33075final(3);
            } else if (csuper.mo33075final(2) instanceof v) {
                this.f28939for = v.m33177catch(csuper.mo33075final(2));
            } else {
                this.f28939for = null;
                aSN1EncodableMo33075final = csuper.mo33075final(2);
            }
            this.f28941new = c91.m815new(aSN1EncodableMo33075final);
            return;
        }
        this.f28939for = null;
        this.f28941new = null;
    }

    /* renamed from: try, reason: not valid java name */
    public static Ctry m32843try(Object obj) {
        if (obj instanceof Ctry) {
            return (Ctry) obj;
        }
        if (obj != null) {
            return new Ctry(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public c91 m32844case() {
        return this.f28941new;
    }

    /* renamed from: else, reason: not valid java name */
    public v m32845else() {
        return this.f28939for;
    }

    /* renamed from: goto, reason: not valid java name */
    public pe m32846goto() {
        return this.f28938do;
    }

    /* renamed from: new, reason: not valid java name */
    public ta[] m32847new() {
        return Cgoto.m32834for(this.f28940if);
    }

    /* renamed from: this, reason: not valid java name */
    public boolean m32848this() {
        return this.f28941new != null;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f28938do);
        cimport.m3516do(this.f28940if);
        v vVar = this.f28939for;
        if (vVar != null) {
            cimport.m3516do(vVar);
        }
        c91 c91Var = this.f28941new;
        if (c91Var != null) {
            cimport.m3516do(c91Var);
        }
        return new n(cimport);
    }
}
