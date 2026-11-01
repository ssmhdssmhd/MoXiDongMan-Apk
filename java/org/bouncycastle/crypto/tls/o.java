package org.bouncycastle.crypto.tls;

import android.support.v4.c52;
import android.support.v4.mw1;
import android.support.v4.n72;
import android.support.v4.ou;
import android.support.v4.ru;
import android.support.v4.wy;
import java.io.IOException;
import java.io.InputStream;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;

/* loaded from: classes3.dex */
public class o extends p {

    /* renamed from: catch, reason: not valid java name */
    public TlsSignerCredentials f30694catch;

    public o(int i, Vector vector, ou ouVar) {
        this(i, vector, new wy(), ouVar);
    }

    public o(int i, Vector vector, TlsDHVerifier tlsDHVerifier, ou ouVar) {
        super(i, vector, tlsDHVerifier, ouVar);
        this.f30694catch = null;
    }

    @Override // org.bouncycastle.crypto.tls.p, org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generateServerKeyExchange() throws IOException {
        if (this.f30696case == null) {
            throw new n72((short) 80);
        }
        Cstrictfp cstrictfp = new Cstrictfp();
        this.f30700this = q.m34255class(this.f30692for.getSecureRandom(), this.f30696case, cstrictfp);
        i iVarI = l0.i(this.f30692for, this.f30694catch);
        Digest digestM34210switch = l0.m34210switch(iVarI);
        mw1 securityParameters = this.f30692for.getSecurityParameters();
        byte[] bArr = securityParameters.f4054else;
        digestM34210switch.update(bArr, 0, bArr.length);
        byte[] bArr2 = securityParameters.f4057goto;
        digestM34210switch.update(bArr2, 0, bArr2.length);
        cstrictfp.m34356do(digestM34210switch);
        byte[] bArr3 = new byte[digestM34210switch.getDigestSize()];
        digestM34210switch.doFinal(bArr3, 0);
        new Cvolatile(iVarI, this.f30694catch.generateCertificateSignature(bArr3)).m34430do(cstrictfp);
        return cstrictfp.toByteArray();
    }

    /* renamed from: if, reason: not valid java name */
    public Signer m34230if(TlsSigner tlsSigner, i iVar, mw1 mw1Var) {
        Signer signerCreateVerifyer = tlsSigner.createVerifyer(iVar, this.f30697else);
        byte[] bArr = mw1Var.f4054else;
        signerCreateVerifyer.update(bArr, 0, bArr.length);
        byte[] bArr2 = mw1Var.f4057goto;
        signerCreateVerifyer.update(bArr2, 0, bArr2.length);
        return signerCreateVerifyer;
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCredentials(TlsCredentials tlsCredentials) throws IOException {
        if (!(tlsCredentials instanceof TlsSignerCredentials)) {
            throw new n72((short) 80);
        }
        processServerCertificate(tlsCredentials.getCertificate());
        this.f30694catch = (TlsSignerCredentials) tlsCredentials;
    }

    @Override // org.bouncycastle.crypto.tls.p, org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerKeyExchange(InputStream inputStream) throws IOException {
        mw1 securityParameters = this.f30692for.getSecurityParameters();
        j jVar = new j();
        c52 c52Var = new c52(inputStream, jVar);
        this.f30696case = q.m34267return(this.f30701try, c52Var);
        this.f30695break = new ru(q.m34274while(c52Var), this.f30696case);
        Cvolatile cvolatileM34229do = m34229do(inputStream);
        Signer signerM34230if = m34230if(this.f30699new, cvolatileM34229do.m34432if(), securityParameters);
        jVar.m34171do(signerM34230if);
        if (!signerM34230if.verifySignature(cvolatileM34229do.m34431for())) {
            throw new n72((short) 51);
        }
    }
}
