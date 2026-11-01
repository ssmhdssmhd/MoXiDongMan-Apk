package org.bouncycastle.crypto.tls;

import android.support.v4.a22;
import android.support.v4.a4;
import android.support.v4.ck1;
import android.support.v4.n72;
import android.support.v4.rg;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.bouncycastle.crypto.util.Cconst;

/* loaded from: classes3.dex */
public class b0 extends Cnew {

    /* renamed from: case, reason: not valid java name */
    public TlsEncryptionCredentials f30530case;

    /* renamed from: else, reason: not valid java name */
    public byte[] f30531else;

    /* renamed from: new, reason: not valid java name */
    public a4 f30532new;

    /* renamed from: try, reason: not valid java name */
    public ck1 f30533try;

    public b0(Vector vector) {
        super(1, vector);
        this.f30532new = null;
        this.f30533try = null;
        this.f30530case = null;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void generateClientKeyExchange(OutputStream outputStream) throws IOException {
        this.f30531else = d0.m34051do(this.f30692for, this.f30533try, outputStream);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generatePremasterSecret() throws IOException {
        byte[] bArr = this.f30531else;
        if (bArr == null) {
            throw new n72((short) 80);
        }
        this.f30531else = null;
        return bArr;
    }

    /* renamed from: if, reason: not valid java name */
    public ck1 m34011if(ck1 ck1Var) throws IOException {
        if (ck1Var.m955if().isProbablePrime(2)) {
            return ck1Var;
        }
        throw new n72((short) 47);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientCredentials(TlsCredentials tlsCredentials) throws IOException {
        if (!(tlsCredentials instanceof TlsSignerCredentials)) {
            throw new n72((short) 80);
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientKeyExchange(InputStream inputStream) throws IOException {
        this.f30531else = this.f30530case.decryptPreMasterSecret(l0.q(this.f30692for) ? a22.m23new(inputStream) : l0.P(inputStream));
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCertificate(Cbreak cbreak) throws IOException {
        if (cbreak.m34013case()) {
            throw new n72((short) 42);
        }
        rg rgVarM34015for = cbreak.m34015for(0);
        try {
            a4 a4VarM34475for = Cconst.m34475for(rgVarM34015for.m6960const());
            this.f30532new = a4VarM34475for;
            if (a4VarM34475for.m33do()) {
                throw new n72((short) 80);
            }
            this.f30533try = m34011if((ck1) this.f30532new);
            l0.k0(rgVarM34015for, 32);
            super.processServerCertificate(cbreak);
        } catch (RuntimeException e) {
            throw new n72((short) 43, e);
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCredentials(TlsCredentials tlsCredentials) throws IOException {
        if (!(tlsCredentials instanceof TlsEncryptionCredentials)) {
            throw new n72((short) 80);
        }
        processServerCertificate(tlsCredentials.getCertificate());
        this.f30530case = (TlsEncryptionCredentials) tlsCredentials;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipServerCredentials() throws IOException {
        throw new n72((short) 10);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void validateCertificateRequest(Ccatch ccatch) throws IOException {
        for (short s : ccatch.m34031for()) {
            if (s != 1 && s != 2 && s != 64) {
                throw new n72((short) 47);
            }
        }
    }
}
