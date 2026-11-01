package org.bouncycastle.crypto.tls;

import android.support.v4.a4;
import android.support.v4.k72;
import android.support.v4.n72;
import android.support.v4.ou;
import android.support.v4.pu;
import android.support.v4.rg;
import android.support.v4.ru;
import android.support.v4.wy;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.bouncycastle.crypto.util.Cconst;

/* loaded from: classes3.dex */
public class p extends Cnew {

    /* renamed from: break, reason: not valid java name */
    public ru f30695break;

    /* renamed from: case, reason: not valid java name */
    public ou f30696case;

    /* renamed from: else, reason: not valid java name */
    public a4 f30697else;

    /* renamed from: goto, reason: not valid java name */
    public TlsAgreementCredentials f30698goto;

    /* renamed from: new, reason: not valid java name */
    public TlsSigner f30699new;

    /* renamed from: this, reason: not valid java name */
    public pu f30700this;

    /* renamed from: try, reason: not valid java name */
    public TlsDHVerifier f30701try;

    public p(int i, Vector vector, ou ouVar) {
        this(i, vector, new wy(), ouVar);
    }

    public p(int i, Vector vector, TlsDHVerifier tlsDHVerifier, ou ouVar) {
        TlsSigner k72Var;
        super(i, vector);
        if (i == 3) {
            k72Var = new k72();
        } else if (i == 5) {
            k72Var = new c0();
        } else {
            if (i != 7 && i != 9 && i != 11) {
                throw new IllegalArgumentException("unsupported key exchange algorithm");
            }
            k72Var = null;
        }
        this.f30699new = k72Var;
        this.f30701try = tlsDHVerifier;
        this.f30696case = ouVar;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void generateClientKeyExchange(OutputStream outputStream) throws IOException {
        if (this.f30698goto == null) {
            this.f30700this = q.m34254catch(this.f30692for.getSecureRandom(), this.f30696case, outputStream);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generatePremasterSecret() throws IOException {
        TlsAgreementCredentials tlsAgreementCredentials = this.f30698goto;
        if (tlsAgreementCredentials != null) {
            return tlsAgreementCredentials.generateAgreement(this.f30695break);
        }
        pu puVar = this.f30700this;
        if (puVar != null) {
            return q.m34265new(this.f30695break, puVar);
        }
        throw new n72((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generateServerKeyExchange() throws IOException {
        if (!requiresServerKeyExchange()) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f30700this = q.m34255class(this.f30692for.getSecureRandom(), this.f30696case, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void init(TlsContext tlsContext) {
        super.init(tlsContext);
        TlsSigner tlsSigner = this.f30699new;
        if (tlsSigner != null) {
            tlsSigner.init(tlsContext);
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientCertificate(Cbreak cbreak) throws IOException {
        if (this.f30691do == 11) {
            throw new n72((short) 10);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientCredentials(TlsCredentials tlsCredentials) throws IOException {
        if (this.f30691do == 11) {
            throw new n72((short) 80);
        }
        if (tlsCredentials instanceof TlsAgreementCredentials) {
            this.f30698goto = (TlsAgreementCredentials) tlsCredentials;
        } else if (!(tlsCredentials instanceof TlsSignerCredentials)) {
            throw new n72((short) 80);
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientKeyExchange(InputStream inputStream) throws IOException {
        if (this.f30695break != null) {
            return;
        }
        this.f30695break = new ru(q.m34274while(inputStream), this.f30696case);
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCertificate(Cbreak cbreak) throws IOException {
        int i;
        if (this.f30691do == 11) {
            throw new n72((short) 10);
        }
        if (cbreak.m34013case()) {
            throw new n72((short) 42);
        }
        rg rgVarM34015for = cbreak.m34015for(0);
        try {
            a4 a4VarM34475for = Cconst.m34475for(rgVarM34015for.m6960const());
            this.f30697else = a4VarM34475for;
            TlsSigner tlsSigner = this.f30699new;
            if (tlsSigner == null) {
                try {
                    ru ruVar = (ru) a4VarM34475for;
                    this.f30695break = ruVar;
                    this.f30696case = ruVar.m4512if();
                    i = 8;
                } catch (ClassCastException e) {
                    throw new n72((short) 46, e);
                }
            } else {
                if (!tlsSigner.isValidPublicKey(a4VarM34475for)) {
                    throw new n72((short) 46);
                }
                i = 128;
            }
            l0.k0(rgVarM34015for, i);
            super.processServerCertificate(cbreak);
        } catch (RuntimeException e2) {
            throw new n72((short) 43, e2);
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerKeyExchange(InputStream inputStream) throws IOException {
        if (!requiresServerKeyExchange()) {
            throw new n72((short) 10);
        }
        this.f30696case = q.m34267return(this.f30701try, inputStream);
        this.f30695break = new ru(q.m34274while(inputStream), this.f30696case);
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public boolean requiresServerKeyExchange() {
        int i = this.f30691do;
        return i == 3 || i == 5 || i == 11;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipServerCredentials() throws IOException {
        if (this.f30691do != 11) {
            throw new n72((short) 10);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void validateCertificateRequest(Ccatch ccatch) throws IOException {
        if (this.f30691do == 11) {
            throw new n72((short) 40);
        }
        for (short s : ccatch.m34031for()) {
            if (s != 1 && s != 2 && s != 3 && s != 4 && s != 64) {
                throw new n72((short) 47);
            }
        }
    }
}
