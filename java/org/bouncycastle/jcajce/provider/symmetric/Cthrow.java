package org.bouncycastle.jcajce.provider.symmetric;

import android.support.v4.ea1;
import android.support.v4.f1;
import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.PBEParameterSpec;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.jcajce.provider.config.ConfigurableProvider;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.throw, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrow {

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throw$do, reason: invalid class name */
    public static class Cdo extends org.bouncycastle.jcajce.provider.symmetric.util.Cif {

        /* renamed from: do, reason: not valid java name */
        public ea1 f31462do;

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded() {
            try {
                return this.f31462do.m32764do(ASN1Encoding.DER);
            } catch (IOException e) {
                throw new RuntimeException("Oooops! " + e.toString());
            }
        }

        @Override // java.security.AlgorithmParametersSpi
        public byte[] engineGetEncoded(String str) {
            if (m34897do(str)) {
                return engineGetEncoded();
            }
            return null;
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
            if (!(algorithmParameterSpec instanceof PBEParameterSpec)) {
                throw new InvalidParameterSpecException("PBEParameterSpec required to initialise a PKCS12 PBE parameters algorithm parameters object");
            }
            PBEParameterSpec pBEParameterSpec = (PBEParameterSpec) algorithmParameterSpec;
            this.f31462do = new ea1(pBEParameterSpec.getSalt(), pBEParameterSpec.getIterationCount());
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr) throws IOException {
            this.f31462do = ea1.m1712try(Cfinal.m33015else(bArr));
        }

        @Override // java.security.AlgorithmParametersSpi
        public void engineInit(byte[] bArr, String str) throws IOException {
            if (!m34897do(str)) {
                throw new IOException("Unknown parameters format in PKCS12 PBE parameters object");
            }
            engineInit(bArr);
        }

        @Override // java.security.AlgorithmParametersSpi
        public String engineToString() {
            return "PKCS12 PBE Parameters";
        }

        @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cif
        /* renamed from: if */
        public AlgorithmParameterSpec mo1580if(Class cls) throws InvalidParameterSpecException {
            if (cls == PBEParameterSpec.class) {
                return new PBEParameterSpec(this.f31462do.m1714new(), this.f31462do.m1713case().intValue());
            }
            throw new InvalidParameterSpecException("unknown parameter spec passed to PKCS12 PBE parameters object.");
        }
    }

    /* renamed from: org.bouncycastle.jcajce.provider.symmetric.throw$if, reason: invalid class name */
    public static class Cif extends f1 {

        /* renamed from: do, reason: not valid java name */
        private static final String f31463do = Cthrow.class.getName();

        @Override // android.support.v4.f1
        /* renamed from: do */
        public void mo252do(ConfigurableProvider configurableProvider) {
            configurableProvider.addAlgorithm("AlgorithmParameters.PKCS12PBE", f31463do + "$AlgParams");
        }
    }

    private Cthrow() {
    }
}
