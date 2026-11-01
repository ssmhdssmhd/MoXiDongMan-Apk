package org.bouncycastle.jcajce.provider.asymmetric.dh;

import android.support.v4.nu;
import java.io.IOException;
import java.security.AlgorithmParametersSpi;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import java.util.Objects;
import javax.crypto.spec.DHParameterSpec;
import org.bouncycastle.asn1.ASN1Encoding;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.dh.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif extends AlgorithmParametersSpi {

    /* renamed from: do, reason: not valid java name */
    public DHParameterSpec f31020do;

    /* renamed from: do, reason: not valid java name */
    public boolean m34639do(String str) {
        return str == null || str.equals("ASN.1");
    }

    @Override // java.security.AlgorithmParametersSpi
    public byte[] engineGetEncoded() {
        try {
            return new nu(this.f31020do.getP(), this.f31020do.getG(), this.f31020do.getL()).m32764do(ASN1Encoding.DER);
        } catch (IOException unused) {
            throw new RuntimeException("Error encoding DHParameters");
        }
    }

    @Override // java.security.AlgorithmParametersSpi
    public byte[] engineGetEncoded(String str) {
        if (m34639do(str)) {
            return engineGetEncoded();
        }
        return null;
    }

    @Override // java.security.AlgorithmParametersSpi
    public AlgorithmParameterSpec engineGetParameterSpec(Class cls) throws InvalidParameterSpecException {
        Objects.requireNonNull(cls, "argument to getParameterSpec must not be null");
        return m34640if(cls);
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        if (!(algorithmParameterSpec instanceof DHParameterSpec)) {
            throw new InvalidParameterSpecException("DHParameterSpec required to initialise a Diffie-Hellman algorithm parameters object");
        }
        this.f31020do = (DHParameterSpec) algorithmParameterSpec;
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(byte[] bArr) throws IOException {
        try {
            nu nuVarM5370try = nu.m5370try(bArr);
            this.f31020do = nuVarM5370try.m5371case() != null ? new DHParameterSpec(nuVarM5370try.m5372else(), nuVarM5370try.m5373new(), nuVarM5370try.m5371case().intValue()) : new DHParameterSpec(nuVarM5370try.m5372else(), nuVarM5370try.m5373new());
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IOException("Not a valid DH Parameter encoding.");
        } catch (ClassCastException unused2) {
            throw new IOException("Not a valid DH Parameter encoding.");
        }
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(byte[] bArr, String str) throws IOException {
        if (m34639do(str)) {
            engineInit(bArr);
            return;
        }
        throw new IOException("Unknown parameter format " + str);
    }

    @Override // java.security.AlgorithmParametersSpi
    public String engineToString() {
        return "Diffie-Hellman Parameters";
    }

    /* renamed from: if, reason: not valid java name */
    public AlgorithmParameterSpec m34640if(Class cls) throws InvalidParameterSpecException {
        if (cls == DHParameterSpec.class || cls == AlgorithmParameterSpec.class) {
            return this.f31020do;
        }
        throw new InvalidParameterSpecException("unknown parameter spec passed to DH parameters object.");
    }
}
