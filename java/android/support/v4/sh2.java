package android.support.v4;

import java.math.BigInteger;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cinstanceof;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x9.X9ObjectIdentifiers;
import org.bouncycastle.math.ec.Cdo;
import org.bouncycastle.math.ec.Cif;

/* loaded from: classes3.dex */
public class sh2 extends Cbreak implements X9ObjectIdentifiers {

    /* renamed from: do, reason: not valid java name */
    private Cif f6153do;

    /* renamed from: for, reason: not valid java name */
    private Ccatch f6154for;

    /* renamed from: if, reason: not valid java name */
    private byte[] f6155if;

    public sh2(xh2 xh2Var, BigInteger bigInteger, BigInteger bigInteger2, Csuper csuper) {
        int iIntValue;
        int iIntValue2;
        int i;
        Cif ctry;
        this.f6154for = null;
        Ccatch ccatchM9521new = xh2Var.m9521new();
        this.f6154for = ccatchM9521new;
        if (ccatchM9521new.equals(X9ObjectIdentifiers.prime_field)) {
            ctry = new Cif.Ccase(((Cgoto) xh2Var.m9520case()).m33044final(), new BigInteger(1, Cclass.m32796catch(csuper.mo33075final(0)).mo5490const()), new BigInteger(1, Cclass.m32796catch(csuper.mo33075final(1)).mo5490const()), bigInteger, bigInteger2);
        } else {
            if (!this.f6154for.equals(X9ObjectIdentifiers.characteristic_two_field)) {
                throw new IllegalArgumentException("This type of ECCurve is not implemented");
            }
            Csuper csuperM33129catch = Csuper.m33129catch(xh2Var.m9520case());
            int iIntValue3 = ((Cgoto) csuperM33129catch.mo33075final(0)).m33044final().intValue();
            Ccatch ccatch = (Ccatch) csuperM33129catch.mo33075final(1);
            if (ccatch.equals(X9ObjectIdentifiers.tpBasis)) {
                iIntValue2 = Cgoto.m33040catch(csuperM33129catch.mo33075final(2)).m33044final().intValue();
                i = 0;
                iIntValue = 0;
            } else {
                if (!ccatch.equals(X9ObjectIdentifiers.ppBasis)) {
                    throw new IllegalArgumentException("This type of EC basis is not implemented");
                }
                Csuper csuperM33129catch2 = Csuper.m33129catch(csuperM33129catch.mo33075final(2));
                int iIntValue4 = Cgoto.m33040catch(csuperM33129catch2.mo33075final(0)).m33044final().intValue();
                int iIntValue5 = Cgoto.m33040catch(csuperM33129catch2.mo33075final(1)).m33044final().intValue();
                iIntValue = Cgoto.m33040catch(csuperM33129catch2.mo33075final(2)).m33044final().intValue();
                iIntValue2 = iIntValue4;
                i = iIntValue5;
            }
            ctry = new Cif.Ctry(iIntValue3, iIntValue2, i, iIntValue, new BigInteger(1, Cclass.m32796catch(csuper.mo33075final(0)).mo5490const()), new BigInteger(1, Cclass.m32796catch(csuper.mo33075final(1)).mo5490const()), bigInteger, bigInteger2);
        }
        this.f6153do = ctry;
        if (csuper.size() == 3) {
            this.f6155if = q3.m6371final(((Cinstanceof) csuper.mo33075final(2)).m33057const());
        }
    }

    public sh2(Cif cif) {
        this(cif, null);
    }

    public sh2(Cif cif, byte[] bArr) {
        this.f6154for = null;
        this.f6153do = cif;
        this.f6155if = q3.m6371final(bArr);
        m7407case();
    }

    /* renamed from: case, reason: not valid java name */
    private void m7407case() {
        Ccatch ccatch;
        if (Cdo.m35360final(this.f6153do)) {
            ccatch = X9ObjectIdentifiers.prime_field;
        } else {
            if (!Cdo.m35356class(this.f6153do)) {
                throw new IllegalArgumentException("This type of ECCurve is not implemented");
            }
            ccatch = X9ObjectIdentifiers.characteristic_two_field;
        }
        this.f6154for = ccatch;
    }

    /* renamed from: new, reason: not valid java name */
    public Cif m7408new() {
        return this.f6153do;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        Cimport cimport = new Cimport();
        if (this.f6154for.equals(X9ObjectIdentifiers.prime_field) || this.f6154for.equals(X9ObjectIdentifiers.characteristic_two_field)) {
            cimport.m3516do(new wh2(this.f6153do.m35443throw()).toASN1Primitive());
            wh2 wh2Var = new wh2(this.f6153do.m35432import());
            cimport.m3516do(wh2Var.toASN1Primitive());
        }
        if (this.f6155if != null) {
            cimport.m3516do(new Cinstanceof(this.f6155if));
        }
        return new org.bouncycastle.asn1.n(cimport);
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m7409try() {
        return q3.m6371final(this.f6155if);
    }
}
