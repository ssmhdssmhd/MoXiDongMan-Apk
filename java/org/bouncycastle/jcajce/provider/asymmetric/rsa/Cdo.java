package org.bouncycastle.jcajce.provider.asymmetric.rsa;

import android.support.v4.b1;
import android.support.v4.jk1;
import android.support.v4.t00;
import android.support.v4.tz0;
import android.support.v4.yj1;
import java.io.IOException;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.security.spec.MGF1ParameterSpec;
import java.security.spec.PSSParameterSpec;
import java.util.Objects;
import javax.crypto.spec.OAEPParameterSpec;
import javax.crypto.spec.PSource;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.j;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.do, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cdo extends AlgorithmParametersSpi {

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.do$do, reason: invalid class name and collision with other inner class name */
    public static class C0423do extends Cdo {

        /* renamed from: do, reason: not valid java name */
        public OAEPParameterSpec f31220do;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            Ccatch ccatchM7672if = t00.m7672if(this.f31220do.getDigestAlgorithm());
            h hVar = h.f29080do;
            try {
                return new yj1(new b1(ccatchM7672if, hVar), new b1(PKCSObjectIdentifiers.id_mgf1, new b1(t00.m7672if(((MGF1ParameterSpec) this.f31220do.getMGFParameters()).getDigestAlgorithm()), hVar)), new b1(PKCSObjectIdentifiers.id_pSpecified, new j(((PSource.PSpecified) this.f31220do.getPSource()).getValue()))).m32764do(ASN1Encoding.DER);
            } catch (IOException unused) {
                throw new RuntimeException("Error encoding OAEPParameters");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (m34720do(str) || str.equalsIgnoreCase("X.509")) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (!(algorithmParameterSpec instanceof OAEPParameterSpec)) {
                throw new InvalidParameterSpecException("OAEPParameterSpec required to initialise an OAEP algorithm parameters object");
            }
            this.f31220do = (OAEPParameterSpec) algorithmParameterSpec;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) throws IOException {
            try {
                yj1 yj1VarM9878try = yj1.m9878try(bArr);
                if (yj1VarM9878try.m9879case().m420new().equals(PKCSObjectIdentifiers.id_mgf1)) {
                    this.f31220do = new OAEPParameterSpec(tz0.m8163do(yj1VarM9878try.m9881new().m420new()), OAEPParameterSpec.DEFAULT.getMGFAlgorithm(), new MGF1ParameterSpec(tz0.m8163do(b1.m418try(yj1VarM9878try.m9879case().m419else()).m420new())), new PSource.PSpecified(Cclass.m32796catch(yj1VarM9878try.m9880else().m419else()).mo5490const()));
                    return;
                }
                throw new IOException("unknown mask generation function: " + yj1VarM9878try.m9879case().m420new());
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IOException("Not a valid OAEP Parameter encoding.");
            } catch (ClassCastException unused2) {
                throw new IOException("Not a valid OAEP Parameter encoding.");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (str.equalsIgnoreCase("X.509") || str.equalsIgnoreCase("ASN.1")) {
                engineInit(bArr);
                return;
            }
            throw new IOException("Unknown parameter format " + str);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "OAEP Parameters";
        }

        @Override // org.bouncycastle.jcajce.provider.asymmetric.rsa.Cdo
        /* renamed from: if */
        public AlgorithmParameterSpec mo34721if(Class cls) throws InvalidParameterSpecException {
            if (cls == OAEPParameterSpec.class || cls == AlgorithmParameterSpec.class) {
                return this.f31220do;
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to OAEP parameters object.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.asymmetric.rsa.do$if, reason: invalid class name */
    public static class Cif extends Cdo {

        /* renamed from: do, reason: not valid java name */
        public PSSParameterSpec f31221do;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() throws IOException {
            PSSParameterSpec pSSParameterSpec = this.f31221do;
            Ccatch ccatchM7672if = t00.m7672if(pSSParameterSpec.getDigestAlgorithm());
            h hVar = h.f29080do;
            return new jk1(new b1(ccatchM7672if, hVar), new b1(PKCSObjectIdentifiers.id_mgf1, new b1(t00.m7672if(((MGF1ParameterSpec) pSSParameterSpec.getMGFParameters()).getDigestAlgorithm()), hVar)), new Cgoto(pSSParameterSpec.getSaltLength()), new Cgoto(pSSParameterSpec.getTrailerField())).m32764do(ASN1Encoding.DER);
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) throws IOException {
            if (str.equalsIgnoreCase("X.509") || str.equalsIgnoreCase("ASN.1")) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (!(algorithmParameterSpec instanceof PSSParameterSpec)) {
                throw new InvalidParameterSpecException("PSSParameterSpec required to initialise an PSS algorithm parameters object");
            }
            this.f31221do = (PSSParameterSpec) algorithmParameterSpec;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) throws IOException {
            try {
                jk1 jk1VarM3909try = jk1.m3909try(bArr);
                if (jk1VarM3909try.m3910case().m420new().equals(PKCSObjectIdentifiers.id_mgf1)) {
                    this.f31221do = new PSSParameterSpec(tz0.m8163do(jk1VarM3909try.m3913new().m420new()), PSSParameterSpec.DEFAULT.getMGFAlgorithm(), new MGF1ParameterSpec(tz0.m8163do(b1.m418try(jk1VarM3909try.m3910case().m419else()).m420new())), jk1VarM3909try.m3911else().intValue(), jk1VarM3909try.m3912goto().intValue());
                    return;
                }
                throw new IOException("unknown mask generation function: " + jk1VarM3909try.m3910case().m420new());
            } catch (ArrayIndexOutOfBoundsException unused) {
                throw new IOException("Not a valid PSS Parameter encoding.");
            } catch (ClassCastException unused2) {
                throw new IOException("Not a valid PSS Parameter encoding.");
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (m34720do(str) || str.equalsIgnoreCase("X.509")) {
                engineInit(bArr);
                return;
            }
            throw new IOException("Unknown parameter format " + str);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "PSS Parameters";
        }

        @Override // org.bouncycastle.jcajce.provider.asymmetric.rsa.Cdo
        /* renamed from: if */
        public AlgorithmParameterSpec mo34721if(Class cls) throws InvalidParameterSpecException {
            if (cls == PSSParameterSpec.class || cls == AlgorithmParameterSpec.class) {
                return this.f31221do;
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to PSS parameters object.");
        }
    }

    /* renamed from: do, reason: not valid java name */
    public boolean m34720do(String str) {
        return str == null || str.equals("ASN.1");
    }

    @Override // java.security.AlgorithmParametersSpi
    public AlgorithmParameterSpec engineGetParameterSpec(Class cls) throws InvalidParameterSpecException {
        Objects.requireNonNull(cls, "argument to getParameterSpec must not be null");
        return mo34721if(cls);
    }

    /* renamed from: if, reason: not valid java name */
    public abstract AlgorithmParameterSpec mo34721if(Class cls) throws InvalidParameterSpecException;
}
