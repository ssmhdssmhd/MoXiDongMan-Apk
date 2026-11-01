package android.support.v4;

import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class u42 extends Cbreak {

    /* renamed from: do, reason: not valid java name */
    private ag f6756do;

    /* renamed from: for, reason: not valid java name */
    private uc1 f6757for;

    /* renamed from: if, reason: not valid java name */
    private Csuper f6758if;

    public u42(ag agVar) {
        this(agVar, null, null);
    }

    public u42(ag agVar, uc1 uc1Var) {
        this(agVar, null, uc1Var);
    }

    public u42(ag agVar, ag[] agVarArr) {
        this(agVar, agVarArr, null);
    }

    public u42(ag agVar, ag[] agVarArr, uc1 uc1Var) {
        this.f6756do = agVar;
        if (agVarArr != null) {
            this.f6758if = new org.bouncycastle.asn1.n(agVarArr);
        }
        this.f6757for = uc1Var;
    }

    private u42(Csuper csuper) {
        this.f6756do = ag.m238case(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(1);
            if (aSN1EncodableMo33075final instanceof Cimport) {
                m8240try(aSN1EncodableMo33075final);
                return;
            }
            this.f6758if = Csuper.m33129catch(aSN1EncodableMo33075final);
            if (csuper.size() > 2) {
                m8240try(csuper.mo33075final(2));
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static u42 m8237else(Object obj) {
        if (obj instanceof u42) {
            return (u42) obj;
        }
        if (obj != null) {
            return new u42(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: goto, reason: not valid java name */
    public static u42 m8238goto(Cimport cimport, boolean z) {
        return m8237else(Csuper.m33130class(cimport, z));
    }

    /* renamed from: new, reason: not valid java name */
    public static u42[] m8239new(Csuper csuper) {
        int size = csuper.size();
        u42[] u42VarArr = new u42[size];
        for (int i = 0; i != size; i++) {
            u42VarArr[i] = m8237else(csuper.mo33075final(i));
        }
        return u42VarArr;
    }

    /* renamed from: try, reason: not valid java name */
    private void m8240try(ASN1Encodable aSN1Encodable) {
        Cimport cimportM33063catch = Cimport.m33063catch(aSN1Encodable);
        if (cimportM33063catch.getTagNo() == 0) {
            this.f6757for = uc1.m8363goto(cimportM33063catch, false);
            return;
        }
        throw new IllegalArgumentException("Unknown tag encountered: " + cimportM33063catch.getTagNo());
    }

    /* renamed from: break, reason: not valid java name */
    public ag m8241break() {
        return this.f6756do;
    }

    /* renamed from: case, reason: not valid java name */
    public ag[] m8242case() {
        Csuper csuper = this.f6758if;
        if (csuper != null) {
            return ag.m239new(csuper);
        }
        return null;
    }

    /* renamed from: this, reason: not valid java name */
    public uc1 m8243this() {
        return this.f6757for;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6756do);
        Csuper csuper = this.f6758if;
        if (csuper != null) {
            cimport.m3516do(csuper);
        }
        if (this.f6757for != null) {
            cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, this.f6757for));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("TargetEtcChain {\n");
        stringBuffer.append("target: " + this.f6756do + "\n");
        if (this.f6758if != null) {
            stringBuffer.append("chain: " + this.f6758if + "\n");
        }
        if (this.f6757for != null) {
            stringBuffer.append("pathProcInput: " + this.f6757for + "\n");
        }
        stringBuffer.append("}\n");
        return stringBuffer.toString();
    }
}
