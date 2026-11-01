package org.bouncycastle.crypto.tls;

import android.support.v4.a4;
import android.support.v4.h50;
import android.support.v4.k50;
import android.support.v4.l72;
import android.support.v4.n72;
import android.support.v4.rg;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.bouncycastle.crypto.util.Cconst;

/* loaded from: classes3.dex */
public class u extends Cnew {

    /* renamed from: break, reason: not valid java name */
    public h50 f30800break;

    /* renamed from: case, reason: not valid java name */
    public short[] f30801case;

    /* renamed from: catch, reason: not valid java name */
    public k50 f30802catch;

    /* renamed from: else, reason: not valid java name */
    public short[] f30803else;

    /* renamed from: goto, reason: not valid java name */
    public a4 f30804goto;

    /* renamed from: new, reason: not valid java name */
    public TlsSigner f30805new;

    /* renamed from: this, reason: not valid java name */
    public TlsAgreementCredentials f30806this;

    /* renamed from: try, reason: not valid java name */
    public int[] f30807try;

    public u(int i, Vector vector, int[] iArr, short[] sArr, short[] sArr2) {
        TlsSigner l72Var;
        super(i, vector);
        switch (i) {
            case 16:
            case 18:
            case 20:
                l72Var = null;
                break;
            case 17:
                l72Var = new l72();
                break;
            case 19:
                l72Var = new c0();
                break;
            default:
                throw new IllegalArgumentException("unsupported key exchange algorithm");
        }
        this.f30805new = l72Var;
        this.f30807try = iArr;
        this.f30801case = sArr;
        this.f30803else = sArr2;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void generateClientKeyExchange(OutputStream outputStream) throws IOException {
        if (this.f30806this == null) {
            this.f30800break = s.m34298const(this.f30692for.getSecureRandom(), this.f30803else, this.f30802catch.m7258if(), outputStream);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generatePremasterSecret() throws IOException {
        TlsAgreementCredentials tlsAgreementCredentials = this.f30806this;
        if (tlsAgreementCredentials != null) {
            return tlsAgreementCredentials.generateAgreement(this.f30802catch);
        }
        h50 h50Var = this.f30800break;
        if (h50Var != null) {
            return s.m34314new(this.f30802catch, h50Var);
        }
        throw new n72((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generateServerKeyExchange() throws IOException {
        if (!requiresServerKeyExchange()) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        this.f30800break = s.m34304final(this.f30692for.getSecureRandom(), this.f30807try, this.f30801case, byteArrayOutputStream);
        return byteArrayOutputStream.toByteArray();
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void init(TlsContext tlsContext) {
        super.init(tlsContext);
        TlsSigner tlsSigner = this.f30805new;
        if (tlsSigner != null) {
            tlsSigner.init(tlsContext);
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientCertificate(Cbreak cbreak) throws IOException {
        if (this.f30691do == 20) {
            throw new n72((short) 10);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientCredentials(TlsCredentials tlsCredentials) throws IOException {
        if (this.f30691do == 20) {
            throw new n72((short) 80);
        }
        if (tlsCredentials instanceof TlsAgreementCredentials) {
            this.f30806this = (TlsAgreementCredentials) tlsCredentials;
        } else if (!(tlsCredentials instanceof TlsSignerCredentials)) {
            throw new n72((short) 80);
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientKeyExchange(InputStream inputStream) throws IOException {
        if (this.f30802catch != null) {
            return;
        }
        byte[] bArrR = l0.R(inputStream);
        this.f30802catch = s.m34321strictfp(s.m34296catch(this.f30803else, this.f30800break.m7258if(), bArrR));
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCertificate(Cbreak cbreak) throws IOException {
        int i;
        if (this.f30691do == 20) {
            throw new n72((short) 10);
        }
        if (cbreak.m34013case()) {
            throw new n72((short) 42);
        }
        rg rgVarM34015for = cbreak.m34015for(0);
        try {
            a4 a4VarM34475for = Cconst.m34475for(rgVarM34015for.m6960const());
            this.f30804goto = a4VarM34475for;
            TlsSigner tlsSigner = this.f30805new;
            if (tlsSigner == null) {
                try {
                    this.f30802catch = s.m34321strictfp((k50) a4VarM34475for);
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
        this.f30802catch = s.m34321strictfp(s.m34296catch(this.f30801case, s.m34303extends(this.f30807try, this.f30801case, inputStream), l0.R(inputStream)));
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public boolean requiresServerKeyExchange() {
        int i = this.f30691do;
        return i == 17 || i == 19 || i == 20;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipServerCredentials() throws IOException {
        if (this.f30691do != 20) {
            throw new n72((short) 10);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void validateCertificateRequest(Ccatch ccatch) throws IOException {
        if (this.f30691do == 20) {
            throw new n72((short) 40);
        }
        for (short s : ccatch.m34031for()) {
            if (s != 1 && s != 2) {
                switch (s) {
                    case 64:
                    case 65:
                    case 66:
                        break;
                    default:
                        throw new n72((short) 47);
                }
            }
        }
    }
}
