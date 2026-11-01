package org.bouncycastle.crypto.tls;

import android.support.v4.c52;
import android.support.v4.e40;
import android.support.v4.mw1;
import android.support.v4.n72;
import java.io.IOException;
import java.io.InputStream;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;

/* loaded from: classes3.dex */
public class t extends u {

    /* renamed from: class, reason: not valid java name */
    public TlsSignerCredentials f30774class;

    public t(int i, Vector vector, int[] iArr, short[] sArr, short[] sArr2) {
        super(i, vector, iArr, sArr, sArr2);
        this.f30774class = null;
    }

    @Override // org.bouncycastle.crypto.tls.u, org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generateServerKeyExchange() throws IOException {
        Cstrictfp cstrictfp = new Cstrictfp();
        this.f30800break = s.m34304final(this.f30692for.getSecureRandom(), this.f30807try, this.f30801case, cstrictfp);
        i iVarI = l0.i(this.f30692for, this.f30774class);
        Digest digestM34210switch = l0.m34210switch(iVarI);
        mw1 securityParameters = this.f30692for.getSecurityParameters();
        byte[] bArr = securityParameters.f4054else;
        digestM34210switch.update(bArr, 0, bArr.length);
        byte[] bArr2 = securityParameters.f4057goto;
        digestM34210switch.update(bArr2, 0, bArr2.length);
        cstrictfp.m34356do(digestM34210switch);
        byte[] bArr3 = new byte[digestM34210switch.getDigestSize()];
        digestM34210switch.doFinal(bArr3, 0);
        new Cvolatile(iVarI, this.f30774class.generateCertificateSignature(bArr3)).m34430do(cstrictfp);
        return cstrictfp.toByteArray();
    }

    /* renamed from: if, reason: not valid java name */
    public Signer m34370if(TlsSigner tlsSigner, i iVar, mw1 mw1Var) {
        Signer signerCreateVerifyer = tlsSigner.createVerifyer(iVar, this.f30804goto);
        byte[] bArr = mw1Var.f4054else;
        signerCreateVerifyer.update(bArr, 0, bArr.length);
        byte[] bArr2 = mw1Var.f4057goto;
        signerCreateVerifyer.update(bArr2, 0, bArr2.length);
        return signerCreateVerifyer;
    }

    @Override // org.bouncycastle.crypto.tls.u, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientCredentials(TlsCredentials tlsCredentials) throws IOException {
        if (!(tlsCredentials instanceof TlsSignerCredentials)) {
            throw new n72((short) 80);
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCredentials(TlsCredentials tlsCredentials) throws IOException {
        if (!(tlsCredentials instanceof TlsSignerCredentials)) {
            throw new n72((short) 80);
        }
        processServerCertificate(tlsCredentials.getCertificate());
        this.f30774class = (TlsSignerCredentials) tlsCredentials;
    }

    @Override // org.bouncycastle.crypto.tls.u, org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerKeyExchange(InputStream inputStream) throws IOException {
        mw1 securityParameters = this.f30692for.getSecurityParameters();
        j jVar = new j();
        c52 c52Var = new c52(inputStream, jVar);
        e40 e40VarM34303extends = s.m34303extends(this.f30807try, this.f30801case, c52Var);
        byte[] bArrR = l0.R(c52Var);
        Cvolatile cvolatileM34229do = m34229do(inputStream);
        Signer signerM34370if = m34370if(this.f30805new, cvolatileM34229do.m34432if(), securityParameters);
        jVar.m34171do(signerM34370if);
        if (!signerM34370if.verifySignature(cvolatileM34229do.m34431for())) {
            throw new n72((short) 51);
        }
        this.f30802catch = s.m34321strictfp(s.m34296catch(this.f30801case, e40VarM34303extends, bArrR));
    }

    @Override // org.bouncycastle.crypto.tls.u, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void validateCertificateRequest(Ccatch ccatch) throws IOException {
        for (short s : ccatch.m34031for()) {
            if (s != 1 && s != 2 && s != 64) {
                throw new n72((short) 47);
            }
        }
    }
}
