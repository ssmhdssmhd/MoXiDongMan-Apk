package org.bouncycastle.jcajce.provider.symmetric.util;

import android.support.v4.q3;
import java.io.IOException;
import java.security.spec.AlgorithmParameterSpec;
import java.security.spec.InvalidParameterSpecException;
import javax.crypto.spec.IvParameterSpec;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.j;

/* renamed from: org.bouncycastle.jcajce.provider.symmetric.util.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis extends Cif {

    /* renamed from: do, reason: not valid java name */
    private byte[] f31524do;

    @Override // java.security.AlgorithmParametersSpi
    public byte[] engineGetEncoded() throws IOException {
        return engineGetEncoded("ASN.1");
    }

    @Override // java.security.AlgorithmParametersSpi
    public byte[] engineGetEncoded(String str) throws IOException {
        if (m34897do(str)) {
            return new j(engineGetEncoded("RAW")).getEncoded();
        }
        if (str.equals("RAW")) {
            return q3.m6371final(this.f31524do);
        }
        return null;
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(AlgorithmParameterSpec algorithmParameterSpec) throws InvalidParameterSpecException {
        if (!(algorithmParameterSpec instanceof IvParameterSpec)) {
            throw new InvalidParameterSpecException("IvParameterSpec required to initialise a IV parameters algorithm parameters object");
        }
        this.f31524do = ((IvParameterSpec) algorithmParameterSpec).getIV();
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(byte[] bArr) throws IOException {
        if (bArr.length % 8 != 0 && bArr[0] == 4 && bArr[1] == bArr.length - 2) {
            bArr = ((Cclass) Cfinal.m33015else(bArr)).mo5490const();
        }
        this.f31524do = q3.m6371final(bArr);
    }

    @Override // java.security.AlgorithmParametersSpi
    public void engineInit(byte[] bArr, String str) throws IOException {
        if (!m34897do(str)) {
            if (!str.equals("RAW")) {
                throw new IOException("Unknown parameters format in IV parameters object");
            }
            engineInit(bArr);
        } else {
            try {
                engineInit(((Cclass) Cfinal.m33015else(bArr)).mo5490const());
            } catch (Exception e) {
                throw new IOException("Exception decoding: " + e);
            }
        }
    }

    @Override // java.security.AlgorithmParametersSpi
    public String engineToString() {
        return "IV Parameters";
    }

    @Override // org.bouncycastle.jcajce.provider.symmetric.util.Cif
    /* renamed from: if */
    public AlgorithmParameterSpec mo1580if(Class cls) throws InvalidParameterSpecException {
        if (cls == IvParameterSpec.class || cls == AlgorithmParameterSpec.class) {
            return new IvParameterSpec(this.f31524do);
        }
        throw new InvalidParameterSpecException("unknown parameter spec passed to IV parameters object.");
    }
}
