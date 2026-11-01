package org.bouncycastle.crypto.tls;

import android.support.v4.a4;
import android.support.v4.c52;
import android.support.v4.fr1;
import android.support.v4.gr1;
import android.support.v4.hr1;
import android.support.v4.jr1;
import android.support.v4.k72;
import android.support.v4.mw1;
import android.support.v4.n72;
import android.support.v4.q3;
import android.support.v4.rg;
import android.support.v4.s72;
import android.support.v4.xs;
import android.support.v4.xy;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.math.BigInteger;
import java.util.Vector;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.util.Cconst;
import org.bouncycastle.util.Cdo;

/* loaded from: classes3.dex */
public class e0 extends Cnew {

    /* renamed from: break, reason: not valid java name */
    public fr1 f30575break;

    /* renamed from: case, reason: not valid java name */
    public byte[] f30576case;

    /* renamed from: catch, reason: not valid java name */
    public hr1 f30577catch;

    /* renamed from: class, reason: not valid java name */
    public BigInteger f30578class;

    /* renamed from: const, reason: not valid java name */
    public BigInteger f30579const;

    /* renamed from: else, reason: not valid java name */
    public byte[] f30580else;

    /* renamed from: final, reason: not valid java name */
    public byte[] f30581final;

    /* renamed from: goto, reason: not valid java name */
    public a4 f30582goto;

    /* renamed from: new, reason: not valid java name */
    public TlsSigner f30583new;

    /* renamed from: super, reason: not valid java name */
    public TlsSignerCredentials f30584super;

    /* renamed from: this, reason: not valid java name */
    public gr1 f30585this;

    /* renamed from: try, reason: not valid java name */
    public TlsSRPGroupVerifier f30586try;

    public e0(int i, Vector vector, TlsSRPGroupVerifier tlsSRPGroupVerifier, byte[] bArr, byte[] bArr2) {
        super(i, vector);
        this.f30582goto = null;
        this.f30585this = null;
        this.f30575break = null;
        this.f30577catch = null;
        this.f30578class = null;
        this.f30579const = null;
        this.f30581final = null;
        this.f30584super = null;
        this.f30583new = m34059if(i);
        this.f30586try = tlsSRPGroupVerifier;
        this.f30576case = bArr;
        this.f30580else = bArr2;
        this.f30575break = new fr1();
    }

    public e0(int i, Vector vector, byte[] bArr, s72 s72Var) {
        super(i, vector);
        this.f30582goto = null;
        this.f30585this = null;
        this.f30575break = null;
        this.f30577catch = null;
        this.f30578class = null;
        this.f30579const = null;
        this.f30581final = null;
        this.f30584super = null;
        this.f30583new = m34059if(i);
        this.f30576case = bArr;
        this.f30577catch = new hr1();
        this.f30585this = s72Var.m7290do();
        this.f30579const = s72Var.m7291for();
        this.f30581final = s72Var.m7292if();
    }

    public e0(int i, Vector vector, byte[] bArr, byte[] bArr2) {
        this(i, vector, new xy(), bArr, bArr2);
    }

    /* renamed from: if, reason: not valid java name */
    public static TlsSigner m34059if(int i) {
        switch (i) {
            case 21:
                return null;
            case 22:
                return new k72();
            case 23:
                return new c0();
            default:
                throw new IllegalArgumentException("unsupported key exchange algorithm");
        }
    }

    /* renamed from: for, reason: not valid java name */
    public Signer m34060for(TlsSigner tlsSigner, i iVar, mw1 mw1Var) {
        Signer signerCreateVerifyer = tlsSigner.createVerifyer(iVar, this.f30582goto);
        byte[] bArr = mw1Var.f4054else;
        signerCreateVerifyer.update(bArr, 0, bArr.length);
        byte[] bArr2 = mw1Var.f4057goto;
        signerCreateVerifyer.update(bArr2, 0, bArr2.length);
        return signerCreateVerifyer;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void generateClientKeyExchange(OutputStream outputStream) throws IOException {
        f0.m34090else(this.f30575break.m2400try(this.f30581final, this.f30576case, this.f30580else), outputStream);
        this.f30692for.getSecurityParameters().f4050catch = q3.m6371final(this.f30576case);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generatePremasterSecret() throws IOException {
        try {
            hr1 hr1Var = this.f30577catch;
            return Cdo.m36313if(hr1Var != null ? hr1Var.m3115if(this.f30578class) : this.f30575break.m2396for(this.f30578class));
        } catch (xs e) {
            throw new n72((short) 47, e);
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generateServerKeyExchange() throws IOException {
        this.f30577catch.m3111case(this.f30585this, this.f30579const, l0.m34214throws((short) 2), this.f30692for.getSecureRandom());
        g gVar = new g(this.f30585this.m2772if(), this.f30585this.m2771do(), this.f30581final, this.f30577catch.m3118try());
        Cstrictfp cstrictfp = new Cstrictfp();
        gVar.m34110do(cstrictfp);
        TlsSignerCredentials tlsSignerCredentials = this.f30584super;
        if (tlsSignerCredentials != null) {
            i iVarI = l0.i(this.f30692for, tlsSignerCredentials);
            Digest digestM34210switch = l0.m34210switch(iVarI);
            mw1 securityParameters = this.f30692for.getSecurityParameters();
            byte[] bArr = securityParameters.f4054else;
            digestM34210switch.update(bArr, 0, bArr.length);
            byte[] bArr2 = securityParameters.f4057goto;
            digestM34210switch.update(bArr2, 0, bArr2.length);
            cstrictfp.m34356do(digestM34210switch);
            byte[] bArr3 = new byte[digestM34210switch.getDigestSize()];
            digestM34210switch.doFinal(bArr3, 0);
            new Cvolatile(iVarI, this.f30584super.generateCertificateSignature(bArr3)).m34430do(cstrictfp);
        }
        return cstrictfp.toByteArray();
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void init(TlsContext tlsContext) {
        super.init(tlsContext);
        TlsSigner tlsSigner = this.f30583new;
        if (tlsSigner != null) {
            tlsSigner.init(tlsContext);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientCredentials(TlsCredentials tlsCredentials) throws IOException {
        throw new n72((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientKeyExchange(InputStream inputStream) throws IOException {
        try {
            this.f30578class = jr1.m4076catch(this.f30585this.m2772if(), f0.m34088case(inputStream));
            this.f30692for.getSecurityParameters().f4050catch = q3.m6371final(this.f30576case);
        } catch (xs e) {
            throw new n72((short) 47, e);
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCertificate(Cbreak cbreak) throws IOException {
        if (this.f30583new == null) {
            throw new n72((short) 10);
        }
        if (cbreak.m34013case()) {
            throw new n72((short) 42);
        }
        rg rgVarM34015for = cbreak.m34015for(0);
        try {
            a4 a4VarM34475for = Cconst.m34475for(rgVarM34015for.m6960const());
            this.f30582goto = a4VarM34475for;
            if (!this.f30583new.isValidPublicKey(a4VarM34475for)) {
                throw new n72((short) 46);
            }
            l0.k0(rgVarM34015for, 128);
            super.processServerCertificate(cbreak);
        } catch (RuntimeException e) {
            throw new n72((short) 43, e);
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCredentials(TlsCredentials tlsCredentials) throws IOException {
        if (this.f30691do == 21 || !(tlsCredentials instanceof TlsSignerCredentials)) {
            throw new n72((short) 80);
        }
        processServerCertificate(tlsCredentials.getCertificate());
        this.f30584super = (TlsSignerCredentials) tlsCredentials;
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerKeyExchange(InputStream inputStream) throws IOException {
        j jVar;
        InputStream c52Var;
        mw1 securityParameters = this.f30692for.getSecurityParameters();
        if (this.f30583new != null) {
            jVar = new j();
            c52Var = new c52(inputStream, jVar);
        } else {
            jVar = null;
            c52Var = inputStream;
        }
        g gVarM34109case = g.m34109case(c52Var);
        if (jVar != null) {
            Cvolatile cvolatileM34229do = m34229do(inputStream);
            Signer signerM34060for = m34060for(this.f30583new, cvolatileM34229do.m34432if(), securityParameters);
            jVar.m34171do(signerM34060for);
            if (!signerM34060for.verifySignature(cvolatileM34229do.m34431for())) {
                throw new n72((short) 51);
            }
        }
        gr1 gr1Var = new gr1(gVarM34109case.m34113new(), gVarM34109case.m34111for());
        this.f30585this = gr1Var;
        if (!this.f30586try.accept(gr1Var)) {
            throw new n72((short) 71);
        }
        this.f30581final = gVarM34109case.m34114try();
        try {
            this.f30578class = jr1.m4076catch(this.f30585this.m2772if(), gVarM34109case.m34112if());
            this.f30575break.m2393case(this.f30585this, l0.m34214throws((short) 2), this.f30692for.getSecureRandom());
        } catch (xs e) {
            throw new n72((short) 47, e);
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public boolean requiresServerKeyExchange() {
        return true;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipServerCredentials() throws IOException {
        if (this.f30583new != null) {
            throw new n72((short) 10);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void validateCertificateRequest(Ccatch ccatch) throws IOException {
        throw new n72((short) 10);
    }
}
