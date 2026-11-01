package org.bouncycastle.crypto.signers;

import android.support.v4.a4;
import android.support.v4.b1;
import android.support.v4.cc1;
import android.support.v4.q3;
import android.support.v4.qy0;
import android.support.v4.tw;
import android.support.v4.v00;
import android.support.v4.xs;
import android.support.v4.zq1;
import java.io.IOException;
import java.util.Hashtable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.h;
import org.bouncycastle.asn1.nist.NISTObjectIdentifiers;
import org.bouncycastle.asn1.pkcs.PKCSObjectIdentifiers;
import org.bouncycastle.asn1.teletrust.TeleTrusTObjectIdentifiers;
import org.bouncycastle.asn1.x509.X509ObjectIdentifiers;
import org.bouncycastle.crypto.AsymmetricBlockCipher;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.crypto.Digest;
import org.bouncycastle.crypto.Signer;
import org.bouncycastle.crypto.encodings.Cfor;
import org.bouncycastle.crypto.engines.Creturn;

/* renamed from: org.bouncycastle.crypto.signers.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cgoto implements Signer {

    /* renamed from: try, reason: not valid java name */
    private static final Hashtable f30404try;

    /* renamed from: do, reason: not valid java name */
    private final AsymmetricBlockCipher f30405do;

    /* renamed from: for, reason: not valid java name */
    private final Digest f30406for;

    /* renamed from: if, reason: not valid java name */
    private final b1 f30407if;

    /* renamed from: new, reason: not valid java name */
    private boolean f30408new;

    static {
        Hashtable hashtable = new Hashtable();
        f30404try = hashtable;
        hashtable.put("RIPEMD128", TeleTrusTObjectIdentifiers.ripemd128);
        hashtable.put("RIPEMD160", TeleTrusTObjectIdentifiers.ripemd160);
        hashtable.put("RIPEMD256", TeleTrusTObjectIdentifiers.ripemd256);
        hashtable.put(qy0.f5539case, X509ObjectIdentifiers.id_SHA1);
        hashtable.put(qy0.f5542else, NISTObjectIdentifiers.id_sha224);
        hashtable.put("SHA-256", NISTObjectIdentifiers.id_sha256);
        hashtable.put(qy0.f5544this, NISTObjectIdentifiers.id_sha384);
        hashtable.put("SHA-512", NISTObjectIdentifiers.id_sha512);
        hashtable.put("SHA-512/224", NISTObjectIdentifiers.id_sha512_224);
        hashtable.put(zq1.f8632for, NISTObjectIdentifiers.id_sha512_256);
        hashtable.put("SHA3-224", NISTObjectIdentifiers.id_sha3_224);
        hashtable.put("SHA3-256", NISTObjectIdentifiers.id_sha3_256);
        hashtable.put("SHA3-384", NISTObjectIdentifiers.id_sha3_384);
        hashtable.put("SHA3-512", NISTObjectIdentifiers.id_sha3_512);
        hashtable.put("MD2", PKCSObjectIdentifiers.md2);
        hashtable.put("MD4", PKCSObjectIdentifiers.md4);
        hashtable.put("MD5", PKCSObjectIdentifiers.md5);
    }

    public Cgoto(Digest digest) {
        this(digest, (Ccatch) f30404try.get(digest.getAlgorithmName()));
    }

    public Cgoto(Digest digest, Ccatch ccatch) {
        this.f30405do = new Cfor(new Creturn());
        this.f30406for = digest;
        this.f30407if = new b1(ccatch, h.f29080do);
    }

    /* renamed from: do, reason: not valid java name */
    private byte[] m33917do(byte[] bArr) throws IOException {
        return new v00(this.f30407if, bArr).m32764do(ASN1Encoding.DER);
    }

    @Override // org.bouncycastle.crypto.Signer
    public byte[] generateSignature() throws tw, xs {
        if (!this.f30408new) {
            throw new IllegalStateException("RSADigestSigner not initialised for signature generation.");
        }
        byte[] bArr = new byte[this.f30406for.getDigestSize()];
        this.f30406for.doFinal(bArr, 0);
        try {
            byte[] bArrM33917do = m33917do(bArr);
            return this.f30405do.processBlock(bArrM33917do, 0, bArrM33917do.length);
        } catch (IOException e) {
            throw new xs("unable to encode signature: " + e.getMessage(), e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public String m33918if() {
        return this.f30406for.getAlgorithmName() + "withRSA";
    }

    @Override // org.bouncycastle.crypto.Signer
    public void init(boolean z, CipherParameters cipherParameters) {
        this.f30408new = z;
        a4 a4Var = cipherParameters instanceof cc1 ? (a4) ((cc1) cipherParameters).m846do() : (a4) cipherParameters;
        if (z && !a4Var.m33do()) {
            throw new IllegalArgumentException("signing requires private key");
        }
        if (!z && a4Var.m33do()) {
            throw new IllegalArgumentException("verification requires public key");
        }
        reset();
        this.f30405do.init(z, cipherParameters);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void reset() {
        this.f30406for.reset();
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte b) {
        this.f30406for.update(b);
    }

    @Override // org.bouncycastle.crypto.Signer
    public void update(byte[] bArr, int i, int i2) {
        this.f30406for.update(bArr, i, i2);
    }

    @Override // org.bouncycastle.crypto.Signer
    public boolean verifySignature(byte[] bArr) {
        byte[] bArrProcessBlock;
        byte[] bArrM33917do;
        if (this.f30408new) {
            throw new IllegalStateException("RSADigestSigner not initialised for verification");
        }
        int digestSize = this.f30406for.getDigestSize();
        byte[] bArr2 = new byte[digestSize];
        this.f30406for.doFinal(bArr2, 0);
        try {
            bArrProcessBlock = this.f30405do.processBlock(bArr, 0, bArr.length);
            bArrM33917do = m33917do(bArr2);
        } catch (Exception unused) {
        }
        if (bArrProcessBlock.length == bArrM33917do.length) {
            return q3.m6360abstract(bArrProcessBlock, bArrM33917do);
        }
        if (bArrProcessBlock.length != bArrM33917do.length - 2) {
            q3.m6360abstract(bArrM33917do, bArrM33917do);
            return false;
        }
        int length = (bArrProcessBlock.length - digestSize) - 2;
        int length2 = (bArrM33917do.length - digestSize) - 2;
        bArrM33917do[1] = (byte) (bArrM33917do[1] - 2);
        bArrM33917do[3] = (byte) (bArrM33917do[3] - 2);
        int i = 0;
        for (int i2 = 0; i2 < digestSize; i2++) {
            i |= bArrProcessBlock[length + i2] ^ bArrM33917do[length2 + i2];
        }
        for (int i3 = 0; i3 < length; i3++) {
            i |= bArrProcessBlock[i3] ^ bArrM33917do[i3];
        }
        return i == 0;
    }
}
