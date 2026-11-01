package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class ua1 extends Cbreak {

    /* renamed from: for, reason: not valid java name */
    public static final Cgoto f6812for = new Cgoto(0);

    /* renamed from: new, reason: not valid java name */
    public static final Cgoto f6813new = new Cgoto(1);

    /* renamed from: do, reason: not valid java name */
    private Cgoto f6814do;

    /* renamed from: if, reason: not valid java name */
    private Csuper f6815if;

    public ua1(zz1 zz1Var) {
        this(zz1Var != null ? new zz1[]{zz1Var} : null);
    }

    public ua1(BigInteger bigInteger) {
        this(new Cgoto(bigInteger));
    }

    public ua1(Cgoto cgoto) {
        this.f6814do = cgoto;
    }

    private ua1(Csuper csuper) {
        this.f6814do = Cgoto.m33040catch(csuper.mo33075final(0));
        if (csuper.size() > 1) {
            this.f6815if = Csuper.m33129catch(csuper.mo33075final(1));
        }
    }

    public ua1(zz1[] zz1VarArr) {
        this.f6814do = f6813new;
        if (zz1VarArr != null) {
            this.f6815if = new org.bouncycastle.asn1.n(zz1VarArr);
        } else {
            this.f6815if = null;
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static ua1 m8314try(Object obj) {
        if (obj instanceof ua1) {
            return (ua1) obj;
        }
        if (obj != null) {
            return new ua1(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public zz1[] m8315case() {
        Csuper csuper = this.f6815if;
        if (csuper == null) {
            return null;
        }
        int size = csuper.size();
        zz1[] zz1VarArr = new zz1[size];
        for (int i = 0; i != size; i++) {
            zz1VarArr[i] = zz1.m10331new(this.f6815if.mo33075final(i));
        }
        return zz1VarArr;
    }

    /* renamed from: new, reason: not valid java name */
    public Cgoto m8316new() {
        return this.f6814do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(this.f6814do);
        Csuper csuper = this.f6815if;
        if (csuper != null) {
            cimport.m3516do(csuper);
        }
        return new org.bouncycastle.asn1.n(cimport);
    }
}
