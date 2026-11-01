package android.support.v4;

import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes3.dex */
public class tu implements AlgorithmParameterSpec {

    /* renamed from: do, reason: not valid java name */
    private final PublicKey f6695do;

    /* renamed from: for, reason: not valid java name */
    private final PublicKey f6696for;

    /* renamed from: if, reason: not valid java name */
    private final PrivateKey f6697if;

    /* renamed from: new, reason: not valid java name */
    private final byte[] f6698new;

    public tu(KeyPair keyPair, PublicKey publicKey) {
        this(keyPair.getPublic(), keyPair.getPrivate(), publicKey, null);
    }

    public tu(KeyPair keyPair, PublicKey publicKey, byte[] bArr) {
        this(keyPair.getPublic(), keyPair.getPrivate(), publicKey, bArr);
    }

    public tu(PrivateKey privateKey, PublicKey publicKey) {
        this(null, privateKey, publicKey, null);
    }

    public tu(PrivateKey privateKey, PublicKey publicKey, byte[] bArr) {
        this(null, privateKey, publicKey, bArr);
    }

    public tu(PublicKey publicKey, PrivateKey privateKey, PublicKey publicKey2) {
        this(publicKey, privateKey, publicKey2, null);
    }

    public tu(PublicKey publicKey, PrivateKey privateKey, PublicKey publicKey2, byte[] bArr) {
        if (privateKey == null) {
            throw new IllegalArgumentException("ephemeral private key cannot be null");
        }
        if (publicKey2 == null) {
            throw new IllegalArgumentException("other party ephemeral key cannot be null");
        }
        this.f6695do = publicKey;
        this.f6697if = privateKey;
        this.f6696for = publicKey2;
        this.f6698new = q3.m6371final(bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public PrivateKey m8127do() {
        return this.f6697if;
    }

    /* renamed from: for, reason: not valid java name */
    public PublicKey m8128for() {
        return this.f6696for;
    }

    /* renamed from: if, reason: not valid java name */
    public PublicKey m8129if() {
        return this.f6695do;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m8130new() {
        return q3.m6371final(this.f6698new);
    }
}
