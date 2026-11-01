package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;
import org.bouncycastle.math.field.PolynomialExtensionField;

/* loaded from: classes3.dex */
public class th2 extends Cbreak implements X9ObjectIdentifiers {

    /* renamed from: else, reason: not valid java name */
    private static final BigInteger f6535else = BigInteger.valueOf(1);

    /* renamed from: case, reason: not valid java name */
    private byte[] f6536case;

    /* renamed from: do, reason: not valid java name */
    private xh2 f6537do;

    /* renamed from: for, reason: not valid java name */
    private vh2 f6538for;

    /* renamed from: if, reason: not valid java name */
    private Cif f6539if;

    /* renamed from: new, reason: not valid java name */
    private BigInteger f6540new;

    /* renamed from: try, reason: not valid java name */
    private BigInteger f6541try;

    private th2(Csuper csuper) {
        if (!(csuper.mo33075final(0) instanceof Cgoto) || !((Cgoto) csuper.mo33075final(0)).m33044final().equals(f6535else)) {
            throw new IllegalArgumentException("bad version in X9ECParameters");
        }
        this.f6540new = ((Cgoto) csuper.mo33075final(4)).m33044final();
        if (csuper.size() == 6) {
            this.f6541try = ((Cgoto) csuper.mo33075final(5)).m33044final();
        }
        sh2 sh2Var = new sh2(xh2.m9519try(csuper.mo33075final(1)), this.f6540new, this.f6541try, Csuper.m33129catch(csuper.mo33075final(2)));
        this.f6539if = sh2Var.m7408new();
        ASN1Encodable aSN1EncodableMo33075final = csuper.mo33075final(3);
        if (aSN1EncodableMo33075final instanceof vh2) {
            this.f6538for = (vh2) aSN1EncodableMo33075final;
        } else {
            this.f6538for = new vh2(this.f6539if, (Cclass) aSN1EncodableMo33075final);
        }
        this.f6536case = sh2Var.m7409try();
    }

    public th2(Cif cif, vh2 vh2Var, BigInteger bigInteger, BigInteger bigInteger2) {
        this(cif, vh2Var, bigInteger, bigInteger2, (byte[]) null);
    }

    public th2(Cif cif, vh2 vh2Var, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        xh2 xh2Var;
        this.f6539if = cif;
        this.f6538for = vh2Var;
        this.f6540new = bigInteger;
        this.f6541try = bigInteger2;
        this.f6536case = q3.m6371final(bArr);
        if (Cdo.m35360final(cif)) {
            xh2Var = new xh2(cif.m35440static().getCharacteristic());
        } else {
            if (!Cdo.m35356class(cif)) {
                throw new IllegalArgumentException("'curve' is of an unsupported type");
            }
            int[] exponentsPresent = ((PolynomialExtensionField) cif.m35440static()).getMinimalPolynomial().getExponentsPresent();
            if (exponentsPresent.length == 3) {
                xh2Var = new xh2(exponentsPresent[2], exponentsPresent[1]);
            } else {
                if (exponentsPresent.length != 5) {
                    throw new IllegalArgumentException("Only trinomial and pentomial curves are supported");
                }
                xh2Var = new xh2(exponentsPresent[4], exponentsPresent[1], exponentsPresent[2], exponentsPresent[3]);
            }
        }
        this.f6537do = xh2Var;
    }

    public th2(Cif cif, Cnew cnew, BigInteger bigInteger) {
        this(cif, cnew, bigInteger, (BigInteger) null, (byte[]) null);
    }

    public th2(Cif cif, Cnew cnew, BigInteger bigInteger, BigInteger bigInteger2) {
        this(cif, cnew, bigInteger, bigInteger2, (byte[]) null);
    }

    public th2(Cif cif, Cnew cnew, BigInteger bigInteger, BigInteger bigInteger2, byte[] bArr) {
        this(cif, new vh2(cnew), bigInteger, bigInteger2, bArr);
    }

    /* renamed from: break, reason: not valid java name */
    public static th2 m7901break(Object obj) {
        if (obj instanceof th2) {
            return (th2) obj;
        }
        if (obj != null) {
            return new th2(Csuper.m33129catch(obj));
        }
        return null;
    }

    /* renamed from: case, reason: not valid java name */
    public sh2 m7902case() {
        return new sh2(this.f6539if, this.f6536case);
    }

    /* renamed from: catch, reason: not valid java name */
    public BigInteger m7903catch() {
        return this.f6540new;
    }

    /* renamed from: class, reason: not valid java name */
    public byte[] m7904class() {
        return q3.m6371final(this.f6536case);
    }

    /* renamed from: else, reason: not valid java name */
    public xh2 m7905else() {
        return this.f6537do;
    }

    /* renamed from: goto, reason: not valid java name */
    public Cnew m7906goto() {
        return this.f6538for.m8868new();
    }

    /* renamed from: new, reason: not valid java name */
    public vh2 m7907new() {
        return this.f6538for;
    }

    /* renamed from: this, reason: not valid java name */
    public BigInteger m7908this() {
        return this.f6541try;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        cimport.m3516do(new Cgoto(f6535else));
        cimport.m3516do(this.f6537do);
        cimport.m3516do(new sh2(this.f6539if, this.f6536case));
        cimport.m3516do(this.f6538for);
        cimport.m3516do(new Cgoto(this.f6540new));
        BigInteger bigInteger = this.f6541try;
        if (bigInteger != null) {
            cimport.m3516do(new Cgoto(bigInteger));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public Cif m7909try() {
        return this.f6539if;
    }
}
