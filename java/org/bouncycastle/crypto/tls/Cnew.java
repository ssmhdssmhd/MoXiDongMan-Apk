package org.bouncycastle.crypto.tls;

import android.support.v4.n72;
import java.io.IOException;
import java.io.InputStream;
import java.util.Vector;

/* renamed from: org.bouncycastle.crypto.tls.new, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cnew implements TlsKeyExchange {

    /* renamed from: do, reason: not valid java name */
    public int f30691do;

    /* renamed from: for, reason: not valid java name */
    public TlsContext f30692for;

    /* renamed from: if, reason: not valid java name */
    public Vector f30693if;

    public Cnew(int i, Vector vector) {
        this.f30691do = i;
        this.f30693if = vector;
    }

    /* renamed from: do, reason: not valid java name */
    public Cvolatile m34229do(InputStream inputStream) throws IOException {
        Cvolatile cvolatileM34429new = Cvolatile.m34429new(this.f30692for, inputStream);
        i iVarM34432if = cvolatileM34429new.m34432if();
        if (iVarM34432if != null) {
            l0.m0(this.f30693if, iVarM34432if);
        }
        return cvolatileM34429new;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generateServerKeyExchange() throws IOException {
        if (requiresServerKeyExchange()) {
            throw new n72((short) 80);
        }
        return null;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x003a  */
    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void init(TlsContext tlsContext) {
        Vector vectorM34198instanceof;
        this.f30692for = tlsContext;
        a clientVersion = tlsContext.getClientVersion();
        if (!l0.r(clientVersion)) {
            if (this.f30693if == null) {
                return;
            }
            throw new IllegalStateException("supported_signature_algorithms not allowed for " + clientVersion);
        }
        if (this.f30693if == null) {
            int i = this.f30691do;
            if (i == 1) {
                vectorM34198instanceof = l0.m34198instanceof();
            } else if (i == 3) {
                vectorM34198instanceof = l0.m34215transient();
            } else if (i != 5) {
                if (i != 7) {
                    if (i != 9) {
                        switch (i) {
                            case 13:
                            case 14:
                                return;
                            case 15:
                            case 18:
                            case 19:
                                break;
                            case 16:
                            case 17:
                                vectorM34198instanceof = l0.m34196implements();
                                break;
                            default:
                                switch (i) {
                                    case 21:
                                    case 24:
                                        return;
                                    case 22:
                                        break;
                                    case 23:
                                        break;
                                    default:
                                        throw new IllegalStateException("unsupported key exchange algorithm");
                                }
                        }
                    }
                }
            }
            this.f30693if = vectorM34198instanceof;
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientCertificate(Cbreak cbreak) throws IOException {
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientKeyExchange(InputStream inputStream) throws IOException {
        throw new n72((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCertificate(Cbreak cbreak) throws IOException {
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCredentials(TlsCredentials tlsCredentials) throws IOException {
        processServerCertificate(tlsCredentials.getCertificate());
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerKeyExchange(InputStream inputStream) throws IOException {
        if (!requiresServerKeyExchange()) {
            throw new n72((short) 10);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public boolean requiresServerKeyExchange() {
        return false;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipClientCredentials() throws IOException {
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipServerKeyExchange() throws IOException {
        if (requiresServerKeyExchange()) {
            throw new n72((short) 10);
        }
    }
}
