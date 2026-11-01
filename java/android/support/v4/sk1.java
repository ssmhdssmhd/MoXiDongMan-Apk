package android.support.v4;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;

/* loaded from: classes3.dex */
public class sk1 {
    /* renamed from: do, reason: not valid java name */
    public static a4 m7471do(PrivateKey privateKey) throws InvalidKeyException {
        if (!(privateKey instanceof e6)) {
            throw new InvalidKeyException("can't identify Rainbow private key.");
        }
        e6 e6Var = (e6) privateKey;
        return new wk1(e6Var.getInvA1(), e6Var.getB1(), e6Var.getInvA2(), e6Var.getB2(), e6Var.getVi(), e6Var.getLayers());
    }

    /* renamed from: if, reason: not valid java name */
    public static a4 m7472if(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof f6) {
            f6 f6Var = (f6) publicKey;
            return new zk1(f6Var.getDocLength(), f6Var.getCoeffQuadratic(), f6Var.getCoeffSingular(), f6Var.getCoeffScalar());
        }
        throw new InvalidKeyException("can't identify Rainbow public key: " + publicKey.getClass().getName());
    }
}
