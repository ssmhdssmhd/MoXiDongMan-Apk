package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.field.PolynomialExtensionField;

/* loaded from: classes3.dex */
public class pv extends Cbreak {

    /* renamed from: case, reason: not valid java name */
    public Cclass f5198case;

    /* renamed from: do, reason: not valid java name */
    public BigInteger f5199do;

    /* renamed from: for, reason: not valid java name */
    public Cgoto f5200for;

    /* renamed from: if, reason: not valid java name */
    public ov f5201if;

    /* renamed from: new, reason: not valid java name */
    public Cclass f5202new;

    /* renamed from: try, reason: not valid java name */
    public Cgoto f5203try;

    public pv(e40 e40Var) {
        ov ovVar;
        this.f5199do = BigInteger.valueOf(0L);
        Cif cifM1646do = e40Var.m1646do();
        if (!Cdo.m35356class(cifM1646do)) {
            throw new IllegalArgumentException("only binary domain is possible");
        }
        int[] exponentsPresent = ((PolynomialExtensionField) cifM1646do.m35440static()).getMinimalPolynomial().getExponentsPresent();
        if (exponentsPresent.length == 3) {
            ovVar = new ov(exponentsPresent[2], exponentsPresent[1]);
        } else {
            if (exponentsPresent.length != 5) {
                throw new IllegalArgumentException("curve must have a trinomial or pentanomial basis");
            }
            ovVar = new ov(exponentsPresent[4], exponentsPresent[1], exponentsPresent[2], exponentsPresent[3]);
        }
        this.f5201if = ovVar;
        this.f5200for = new Cgoto(cifM1646do.m35443throw().mo339static());
        this.f5202new = new org.bouncycastle.asn1.j(cifM1646do.m35432import().m35379try());
        this.f5203try = new Cgoto(e40Var.m1650try());
        this.f5198case = new org.bouncycastle.asn1.j(vv.m8961if(e40Var.m1648if()));
    }

    private pv(Csuper csuper) {
        this.f5199do = BigInteger.valueOf(0L);
        int i = 0;
        if (csuper.mo33075final(0) instanceof Cimport) {
            Cimport cimport = (Cimport) csuper.mo33075final(0);
            if (!cimport.m33066final() || cimport.getTagNo() != 0) {
                throw new IllegalArgumentException("object parse error");
            }
            this.f5199do = Cgoto.m33040catch(cimport.getLoadedObject()).m33044final();
            i = 1;
        }
        this.f5201if = ov.m5779new(csuper.mo33075final(i));
        int i2 = i + 1;
        this.f5200for = Cgoto.m33040catch(csuper.mo33075final(i2));
        int i3 = i2 + 1;
        this.f5202new = Cclass.m32796catch(csuper.mo33075final(i3));
        int i4 = i3 + 1;
        this.f5203try = Cgoto.m33040catch(csuper.mo33075final(i4));
        this.f5198case = Cclass.m32796catch(csuper.mo33075final(i4 + 1));
    }

    /* renamed from: goto, reason: not valid java name */
    public static pv m6223goto(Object obj) {
        if (obj instanceof pv) {
            return (pv) obj;
        }
        if (obj != null) {
            return new pv(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public ov m6224case() {
        return this.f5201if;
    }

    /* renamed from: else, reason: not valid java name */
    public byte[] m6225else() {
        return q3.m6371final(this.f5198case.mo5490const());
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m6226new() {
        return this.f5200for.m33044final();
    }

    /* renamed from: this, reason: not valid java name */
    public BigInteger m6227this() {
        return this.f5203try.m33044final();
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f5199do.compareTo(BigInteger.valueOf(0L)) != 0) {
            cimport.m3516do(new org.bouncycastle.asn1.u(true, 0, new Cgoto(this.f5199do)));
        }
        cimport.m3516do(this.f5201if);
        cimport.m3516do(this.f5200for);
        cimport.m3516do(this.f5202new);
        cimport.m3516do(this.f5203try);
        cimport.m3516do(this.f5198case);
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m6228try() {
        return q3.m6371final(this.f5202new.mo5490const());
    }
}
