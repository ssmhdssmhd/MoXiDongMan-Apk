package android.support.v4;

import java.io.IOException;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.Objects;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;

/* loaded from: classes3.dex */
public class d1 extends AlgorithmParametersSpi {

    /* renamed from: do, reason: not valid java name */
    public zk0 f908do;

    /* renamed from: do, reason: not valid java name */
    public boolean m1097do(String str) {
        return str == null || str.equals("ASN.1");
    }

    @Override // java.security.AlgorithmParametersSpi
    public byte[] engineGetEncoded() {
        try {
            Cimport cimport = new Cimport();
            if (this.f908do.m10231if() != null) {
                cimport.m3516do(new org.bouncycastle.asn1.u(false, 0, new org.bouncycastle.asn1.j(this.f908do.m10231if())));
            }
            if (this.f908do.m10230for() != null) {
                cimport.m3516do(new org.bouncycastle.asn1.u(false, 1, new org.bouncycastle.asn1.j(this.f908do.m10230for())));
            }
            cimport.m3516do(new Cgoto(this.f908do.m10232new()));
            if (this.f908do.m10233try() != null) {
                Cimport cimport2 = new Cimport();
                cimport2.m3516do(new Cgoto(this.f908do.m10228do()));
                cimport2.m3516do(new Cgoto(this.f908do.m10233try()));
                cimport.m3516do(new org.bouncycastle.asn1.n(cimport2));
            }
            return new org.bouncycastle.asn1.n(cimport).m32764do(ASN1Encoding.DER);
        } catch (IOException unused) {
            throw new RuntimeException("Error encoding IESParameters");
        }
    }

    @Override // java.security.AlgorithmParametersSpi
    public byte[] engineGetEncoded(String str) {
        if (m1097do(str) || str.equalsIgnoreCase("X.509")) {
            return engineGetEncoded();
        }
        return null;
    }

    @Override // java.security.AlgorithmParametersSpi
    public AlgorithmParameterSpec engineGetParameterSpec(Class cls) throws InvalidParameterSpecException {
        Objects.requireNonNull(cls, "argument to getParameterSpec must not be null");
        return m1098if(cls);
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        if (!(algorithmParameterSpec instanceof zk0)) {
            throw new InvalidParameterSpecException("IESParameterSpec required to initialise a IES algorithm parameters object");
        }
        this.f908do = (zk0) algorithmParameterSpec;
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(byte[] bArr) throws IOException {
        try {
            Csuper csuper = (Csuper) Cfinal.m33015else(bArr);
            if (csuper.size() == 1) {
                this.f908do = new zk0(null, null, Cgoto.m33040catch(csuper.mo33075final(0)).m33044final().intValue());
                return;
            }
            if (csuper.size() == 2) {
                Cimport cimportM33063catch = Cimport.m33063catch(csuper.mo33075final(0));
                this.f908do = cimportM33063catch.getTagNo() == 0 ? new zk0(Cclass.m32797class(cimportM33063catch, false).mo5490const(), null, Cgoto.m33040catch(csuper.mo33075final(1)).m33044final().intValue()) : new zk0(null, Cclass.m32797class(cimportM33063catch, false).mo5490const(), Cgoto.m33040catch(csuper.mo33075final(1)).m33044final().intValue());
            } else if (csuper.size() == 3) {
                this.f908do = new zk0(Cclass.m32797class(Cimport.m33063catch(csuper.mo33075final(0)), false).mo5490const(), Cclass.m32797class(Cimport.m33063catch(csuper.mo33075final(1)), false).mo5490const(), Cgoto.m33040catch(csuper.mo33075final(2)).m33044final().intValue());
            } else if (csuper.size() == 4) {
                Cimport cimportM33063catch2 = Cimport.m33063catch(csuper.mo33075final(0));
                Cimport cimportM33063catch3 = Cimport.m33063catch(csuper.mo33075final(1));
                Csuper csuperM33129catch = Csuper.m33129catch(csuper.mo33075final(3));
                this.f908do = new zk0(Cclass.m32797class(cimportM33063catch2, false).mo5490const(), Cclass.m32797class(cimportM33063catch3, false).mo5490const(), Cgoto.m33040catch(csuper.mo33075final(2)).m33044final().intValue(), Cgoto.m33040catch(csuperM33129catch.mo33075final(0)).m33044final().intValue(), Cclass.m32796catch(csuperM33129catch.mo33075final(1)).mo5490const());
            }
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IOException("Not a valid IES Parameter encoding.");
        } catch (ClassCastException unused2) {
            throw new IOException("Not a valid IES Parameter encoding.");
        }
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(byte[] bArr, String str) throws IOException {
        if (m1097do(str) || str.equalsIgnoreCase("X.509")) {
            engineInit(bArr);
            return;
        }
        throw new IOException("Unknown parameter format " + str);
    }

    @Override // java.security.AlgorithmParametersSpi
    public String engineToString() {
        return "IES Parameters";
    }

    /* renamed from: if, reason: not valid java name */
    public AlgorithmParameterSpec m1098if(Class cls) throws InvalidParameterSpecException {
        if (cls == zk0.class || cls == AlgorithmParameterSpec.class) {
            return this.f908do;
        }
        throw new InvalidParameterSpecException("unknown parameter spec passed to ElGamal parameters object.");
    }
}
