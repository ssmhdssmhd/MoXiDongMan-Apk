package android.support.v4;

import org.bouncycastle.crypto.BlockCipher;
import org.bouncycastle.crypto.Cif;

/* loaded from: classes3.dex */
public class bl0 {
    /* renamed from: do, reason: not valid java name */
    public static zk0 m564do(Cif cif, byte[] bArr) {
        if (cif == null) {
            return new zk0(null, null, 128);
        }
        BlockCipher blockCipherM33682new = cif.m33682new();
        return (blockCipherM33682new.getAlgorithmName().equals("DES") || blockCipherM33682new.getAlgorithmName().equals("RC2") || blockCipherM33682new.getAlgorithmName().equals("RC5-32") || blockCipherM33682new.getAlgorithmName().equals("RC5-64")) ? new zk0(null, null, 64, 64, bArr) : blockCipherM33682new.getAlgorithmName().equals("SKIPJACK") ? new zk0(null, null, 80, 80, bArr) : blockCipherM33682new.getAlgorithmName().equals("GOST28147") ? new zk0(null, null, 256, 256, bArr) : new zk0(null, null, 128, 128, bArr);
    }
}
