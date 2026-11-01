package org.bouncycastle.jcajce.provider.asymmetric.gost;

import android.support.v4.cg0;
import android.support.v4.dg0;
import android.support.v4.wf0;
import java.io.IOException;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.Objects;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.gost.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends AlgorithmParametersSpi {

    /* renamed from: do, reason: not valid java name */
    public wf0 f31197do;

    /* renamed from: do, reason: not valid java name */
    public boolean m34711do(String str) {
        return str == null || str.equals("ASN.1");
    }

    @Override // java.security.AlgorithmParametersSpi
    public byte[] engineGetEncoded() {
        try {
            return new cg0(new Ccatch(this.f31197do.getPublicKeyParamSetOID()), new Ccatch(this.f31197do.getDigestParamSetOID()), new Ccatch(this.f31197do.getEncryptionParamSetOID())).m32764do(ASN1Encoding.DER);
        } catch (IOException unused) {
            throw new RuntimeException("Error encoding GOST3410Parameters");
        }
    }

    @Override // java.security.AlgorithmParametersSpi
    public byte[] engineGetEncoded(String str) {
        if (m34711do(str) || str.equalsIgnoreCase("X.509")) {
            return engineGetEncoded();
        }
        return null;
    }

    @Override // java.security.AlgorithmParametersSpi
    public AlgorithmParameterSpec engineGetParameterSpec(Class cls) throws InvalidParameterSpecException {
        Objects.requireNonNull(cls, "argument to getParameterSpec must not be null");
        return m34712if(cls);
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        if (!(algorithmParameterSpec instanceof wf0)) {
            throw new InvalidParameterSpecException("GOST3410ParameterSpec required to initialise a GOST3410 algorithm parameters object");
        }
        this.f31197do = (wf0) algorithmParameterSpec;
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(byte[] bArr) throws IOException {
        try {
            this.f31197do = wf0.m9137do(new cg0((Csuper) Cfinal.m33015else(bArr)));
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IOException("Not a valid GOST3410 Parameter encoding.");
        } catch (ClassCastException unused2) {
            throw new IOException("Not a valid GOST3410 Parameter encoding.");
        }
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(byte[] bArr, String str) throws IOException {
        if (m34711do(str) || str.equalsIgnoreCase("X.509")) {
            engineInit(bArr);
            return;
        }
        throw new IOException("Unknown parameter format " + str);
    }

    @Override // java.security.AlgorithmParametersSpi
    public String engineToString() {
        return "GOST3410 Parameters";
    }

    /* renamed from: if, reason: not valid java name */
    public AlgorithmParameterSpec m34712if(Class cls) throws InvalidParameterSpecException {
        if (cls == dg0.class || cls == AlgorithmParameterSpec.class) {
            return this.f31197do;
        }
        throw new InvalidParameterSpecException("unknown parameter spec passed to GOST3410 parameters object.");
    }
}
