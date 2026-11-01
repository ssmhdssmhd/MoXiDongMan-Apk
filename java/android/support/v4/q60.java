package android.support.v4;

import java.security.InvalidKeyException;
import java.security.PrivateKey;
import java.security.PublicKey;
import javax.crypto.interfaces.DHPrivateKey;
import javax.crypto.interfaces.DHPublicKey;
import org.bouncycastle.jce.interfaces.ElGamalPrivateKey;
import org.bouncycastle.jce.interfaces.ElGamalPublicKey;

/* loaded from: classes3.dex */
public class q60 {
    /* renamed from: do, reason: not valid java name */
    public static a4 m6420do(PrivateKey privateKey) throws InvalidKeyException {
        if (privateKey instanceof ElGamalPrivateKey) {
            ElGamalPrivateKey elGamalPrivateKey = (ElGamalPrivateKey) privateKey;
            return new m60(elGamalPrivateKey.getX(), new l60(elGamalPrivateKey.getParameters().m4265if(), elGamalPrivateKey.getParameters().m4264do()));
        }
        if (!(privateKey instanceof DHPrivateKey)) {
            throw new InvalidKeyException("can't identify private key for El Gamal.");
        }
        DHPrivateKey dHPrivateKey = (DHPrivateKey) privateKey;
        return new m60(dHPrivateKey.getX(), new l60(dHPrivateKey.getParams().getP(), dHPrivateKey.getParams().getG()));
    }

    /* renamed from: if, reason: not valid java name */
    public static a4 m6421if(PublicKey publicKey) throws InvalidKeyException {
        if (publicKey instanceof ElGamalPublicKey) {
            ElGamalPublicKey elGamalPublicKey = (ElGamalPublicKey) publicKey;
            return new o60(elGamalPublicKey.getY(), new l60(elGamalPublicKey.getParameters().m4265if(), elGamalPublicKey.getParameters().m4264do()));
        }
        if (!(publicKey instanceof DHPublicKey)) {
            throw new InvalidKeyException("can't identify public key for El Gamal.");
        }
        DHPublicKey dHPublicKey = (DHPublicKey) publicKey;
        return new o60(dHPublicKey.getY(), new l60(dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG()));
    }
}
