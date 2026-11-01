package android.support.v4;

import java.security.KeyPair;
import java.security.PrivateKey;
import java.security.PublicKey;
import java.security.spec.AlgorithmParameterSpec;

/* loaded from: classes3.dex */
public class sw0 implements AlgorithmParameterSpec {

    /* renamed from: do, reason: not valid java name */
    private final PublicKey f6316do;

    /* renamed from: for, reason: not valid java name */
    private final PublicKey f6317for;

    /* renamed from: if, reason: not valid java name */
    private final PrivateKey f6318if;

    /* renamed from: new, reason: not valid java name */
    private final byte[] f6319new;

    public sw0(KeyPair keyPair, PublicKey publicKey) {
        this(keyPair.getPublic(), keyPair.getPrivate(), publicKey, null);
    }

    public sw0(KeyPair keyPair, PublicKey publicKey, byte[] bArr) {
        this(keyPair.getPublic(), keyPair.getPrivate(), publicKey, bArr);
    }

    public sw0(PrivateKey privateKey, PublicKey publicKey) {
        this(null, privateKey, publicKey, null);
    }

    public sw0(PrivateKey privateKey, PublicKey publicKey, byte[] bArr) {
        this(null, privateKey, publicKey, bArr);
    }

    public sw0(PublicKey publicKey, PrivateKey privateKey, PublicKey publicKey2) {
        this(publicKey, privateKey, publicKey2, null);
    }

    public sw0(PublicKey publicKey, PrivateKey privateKey, PublicKey publicKey2, byte[] bArr) {
        this.f6316do = publicKey;
        this.f6318if = privateKey;
        this.f6317for = publicKey2;
        this.f6319new = q3.m6371final(bArr);
    }

    /* renamed from: do, reason: not valid java name */
    public PrivateKey m7622do() {
        return this.f6318if;
    }

    /* renamed from: for, reason: not valid java name */
    public PublicKey m7623for() {
        return this.f6317for;
    }

    /* renamed from: if, reason: not valid java name */
    public PublicKey m7624if() {
        return this.f6316do;
    }

    /* renamed from: new, reason: not valid java name */
    public byte[] m7625new() {
        return q3.m6371final(this.f6319new);
    }
}
