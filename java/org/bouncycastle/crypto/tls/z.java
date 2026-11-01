package org.bouncycastle.crypto.tls;

import android.support.v4.a22;
import android.support.v4.a4;
import android.support.v4.ck1;
import android.support.v4.h50;
import android.support.v4.k50;
import android.support.v4.n72;
import android.support.v4.ou;
import android.support.v4.pu;
import android.support.v4.q3;
import android.support.v4.rg;
import android.support.v4.ru;
import android.support.v4.wy;
import android.support.v4.z0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Vector;
import org.bouncycastle.crypto.util.Cconst;

/* loaded from: classes3.dex */
public class z extends Cnew {

    /* renamed from: break, reason: not valid java name */
    public short[] f30843break;

    /* renamed from: case, reason: not valid java name */
    public TlsDHVerifier f30844case;

    /* renamed from: catch, reason: not valid java name */
    public byte[] f30845catch;

    /* renamed from: class, reason: not valid java name */
    public byte[] f30846class;

    /* renamed from: const, reason: not valid java name */
    public pu f30847const;

    /* renamed from: else, reason: not valid java name */
    public ou f30848else;

    /* renamed from: final, reason: not valid java name */
    public ru f30849final;

    /* renamed from: goto, reason: not valid java name */
    public int[] f30850goto;

    /* renamed from: import, reason: not valid java name */
    public ck1 f30851import;

    /* renamed from: native, reason: not valid java name */
    public TlsEncryptionCredentials f30852native;

    /* renamed from: new, reason: not valid java name */
    public TlsPSKIdentity f30853new;

    /* renamed from: public, reason: not valid java name */
    public byte[] f30854public;

    /* renamed from: super, reason: not valid java name */
    public h50 f30855super;

    /* renamed from: this, reason: not valid java name */
    public short[] f30856this;

    /* renamed from: throw, reason: not valid java name */
    public k50 f30857throw;

    /* renamed from: try, reason: not valid java name */
    public TlsPSKIdentityManager f30858try;

    /* renamed from: while, reason: not valid java name */
    public a4 f30859while;

    public z(int i, Vector vector, TlsPSKIdentity tlsPSKIdentity, TlsPSKIdentityManager tlsPSKIdentityManager, ou ouVar, int[] iArr, short[] sArr, short[] sArr2) {
        this(i, vector, tlsPSKIdentity, tlsPSKIdentityManager, new wy(), ouVar, iArr, sArr, sArr2);
    }

    public z(int i, Vector vector, TlsPSKIdentity tlsPSKIdentity, TlsPSKIdentityManager tlsPSKIdentityManager, TlsDHVerifier tlsDHVerifier, ou ouVar, int[] iArr, short[] sArr, short[] sArr2) {
        super(i, vector);
        this.f30845catch = null;
        this.f30846class = null;
        this.f30847const = null;
        this.f30849final = null;
        this.f30855super = null;
        this.f30857throw = null;
        this.f30859while = null;
        this.f30851import = null;
        this.f30852native = null;
        if (i != 24) {
            switch (i) {
                case 13:
                case 14:
                case 15:
                    break;
                default:
                    throw new IllegalArgumentException("unsupported key exchange algorithm");
            }
        }
        this.f30853new = tlsPSKIdentity;
        this.f30858try = tlsPSKIdentityManager;
        this.f30844case = tlsDHVerifier;
        this.f30848else = ouVar;
        this.f30850goto = iArr;
        this.f30856this = sArr;
        this.f30843break = sArr2;
    }

    /* renamed from: for, reason: not valid java name */
    public ck1 m34450for(ck1 ck1Var) throws IOException {
        if (ck1Var.m955if().isProbablePrime(2)) {
            return ck1Var;
        }
        throw new n72((short) 47);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void generateClientKeyExchange(OutputStream outputStream) throws IOException {
        byte[] bArr = this.f30845catch;
        if (bArr == null) {
            this.f30853new.skipIdentityHint();
        } else {
            this.f30853new.notifyIdentityHint(bArr);
        }
        byte[] pSKIdentity = this.f30853new.getPSKIdentity();
        if (pSKIdentity == null) {
            throw new n72((short) 80);
        }
        byte[] psk = this.f30853new.getPSK();
        this.f30846class = psk;
        if (psk == null) {
            throw new n72((short) 80);
        }
        l0.o0(pSKIdentity, outputStream);
        this.f30692for.getSecurityParameters().f4048break = q3.m6371final(pSKIdentity);
        int i = this.f30691do;
        if (i == 14) {
            this.f30847const = q.m34254catch(this.f30692for.getSecureRandom(), this.f30848else, outputStream);
        } else if (i == 24) {
            this.f30855super = s.m34298const(this.f30692for.getSecureRandom(), this.f30843break, this.f30857throw.m7258if(), outputStream);
        } else if (i == 15) {
            this.f30854public = d0.m34051do(this.f30692for, this.f30851import, outputStream);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generatePremasterSecret() throws IOException {
        byte[] bArrM34451if = m34451if(this.f30846class.length);
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream(bArrM34451if.length + 4 + this.f30846class.length);
        l0.o0(bArrM34451if, byteArrayOutputStream);
        l0.o0(this.f30846class, byteArrayOutputStream);
        q3.c(this.f30846class, (byte) 0);
        this.f30846class = null;
        return byteArrayOutputStream.toByteArray();
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public byte[] generateServerKeyExchange() throws IOException {
        byte[] hint = this.f30858try.getHint();
        this.f30845catch = hint;
        if (hint == null && !requiresServerKeyExchange()) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        byte[] bArr = this.f30845catch;
        if (bArr == null) {
            l0.o0(l0.f30675do, byteArrayOutputStream);
        } else {
            l0.o0(bArr, byteArrayOutputStream);
        }
        int i = this.f30691do;
        if (i == 14) {
            if (this.f30848else == null) {
                throw new n72((short) 80);
            }
            this.f30847const = q.m34255class(this.f30692for.getSecureRandom(), this.f30848else, byteArrayOutputStream);
        } else if (i == 24) {
            this.f30855super = s.m34304final(this.f30692for.getSecureRandom(), this.f30850goto, this.f30856this, byteArrayOutputStream);
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: if, reason: not valid java name */
    public byte[] m34451if(int i) throws IOException {
        int i2 = this.f30691do;
        if (i2 == 14) {
            pu puVar = this.f30847const;
            if (puVar != null) {
                return q.m34265new(this.f30849final, puVar);
            }
            throw new n72((short) 80);
        }
        if (i2 != 24) {
            return i2 == 15 ? this.f30854public : new byte[i];
        }
        h50 h50Var = this.f30855super;
        if (h50Var != null) {
            return s.m34314new(this.f30857throw, h50Var);
        }
        throw new n72((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientCredentials(TlsCredentials tlsCredentials) throws IOException {
        throw new n72((short) 80);
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processClientKeyExchange(InputStream inputStream) throws IOException {
        byte[] bArrP = l0.P(inputStream);
        byte[] psk = this.f30858try.getPSK(bArrP);
        this.f30846class = psk;
        if (psk == null) {
            throw new n72(z0.f8381abstract);
        }
        this.f30692for.getSecurityParameters().f4048break = bArrP;
        int i = this.f30691do;
        if (i == 14) {
            this.f30849final = new ru(q.m34274while(inputStream), this.f30848else);
            return;
        }
        if (i == 24) {
            this.f30857throw = s.m34321strictfp(s.m34296catch(this.f30843break, this.f30855super.m7258if(), l0.R(inputStream)));
        } else if (i == 15) {
            this.f30854public = this.f30852native.decryptPreMasterSecret(l0.q(this.f30692for) ? a22.m23new(inputStream) : l0.P(inputStream));
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerCertificate(Cbreak cbreak) throws IOException {
        if (this.f30691do != 15) {
            throw new n72((short) 10);
        }
        if (cbreak.m34013case()) {
            throw new n72((short) 42);
        }
        rg rgVarM34015for = cbreak.m34015for(0);
        try {
            a4 a4VarM34475for = Cconst.m34475for(rgVarM34015for.m6960const());
            this.f30859while = a4VarM34475for;
            if (a4VarM34475for.m33do()) {
                throw new n72((short) 80);
            }
            this.f30851import = m34450for((ck1) this.f30859while);
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
        this.f30852native = (TlsEncryptionCredentials) tlsCredentials;
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public void processServerKeyExchange(InputStream inputStream) throws IOException {
        this.f30845catch = l0.P(inputStream);
        int i = this.f30691do;
        if (i == 14) {
            this.f30848else = q.m34267return(this.f30844case, inputStream);
            this.f30849final = new ru(q.m34274while(inputStream), this.f30848else);
        } else if (i == 24) {
            this.f30857throw = s.m34321strictfp(s.m34296catch(this.f30856this, s.m34303extends(this.f30850goto, this.f30856this, inputStream), l0.R(inputStream)));
        }
    }

    @Override // org.bouncycastle.crypto.tls.Cnew, org.bouncycastle.crypto.tls.TlsKeyExchange
    public boolean requiresServerKeyExchange() {
        int i = this.f30691do;
        return i == 14 || i == 24;
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void skipServerCredentials() throws IOException {
        if (this.f30691do == 15) {
            throw new n72((short) 10);
        }
    }

    @Override // org.bouncycastle.crypto.tls.TlsKeyExchange
    public void validateCertificateRequest(Ccatch ccatch) throws IOException {
        throw new n72((short) 10);
    }
}
