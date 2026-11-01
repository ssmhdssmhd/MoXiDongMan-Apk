package org.bouncycastle.jce.provider;

import android.support.v4.b1;
import android.support.v4.j60;
import android.support.v4.k60;
import android.support.v4.nr0;
import android.support.v4.o60;
import android.support.v4.p60;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.math.BigInteger;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.DHPublicKeySpec;
import org.bouncycastle.asn1.Cgoto;
import org.bouncycastle.asn1.oiw.OIWObjectIdentifiers;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.jce.interfaces.ElGamalPublicKey;

/* renamed from: org.bouncycastle.jce.provider.super, reason: invalid class name */
/* loaded from: classes3.dex */
public class Csuper implements ElGamalPublicKey, DHPublicKey {
    public static final long serialVersionUID = 8712728417091216948L;
    private k60 elSpec;
    private BigInteger y;

    public Csuper(o60 o60Var) {
        this.y = o60Var.m5492for();
        this.elSpec = new k60(o60Var.m2951if().m4600for(), o60Var.m2951if().m4599do());
    }

    public Csuper(p60 p60Var) {
        this.y = p60Var.m5897if();
        this.elSpec = new k60(p60Var.m3280do().m4265if(), p60Var.m3280do().m4264do());
    }

    public Csuper(BigInteger bigInteger, k60 k60Var) {
        this.y = bigInteger;
        this.elSpec = k60Var;
    }

    public Csuper(DHPublicKey dHPublicKey) {
        this.y = dHPublicKey.getY();
        this.elSpec = new k60(dHPublicKey.getParams().getP(), dHPublicKey.getParams().getG());
    }

    public Csuper(DHPublicKeySpec dHPublicKeySpec) {
        this.y = dHPublicKeySpec.getY();
        this.elSpec = new k60(dHPublicKeySpec.getP(), dHPublicKeySpec.getG());
    }

    public Csuper(Ctry ctry) {
        j60 j60VarM3733try = j60.m3733try(ctry.m33295new().m419else());
        try {
            this.y = ((Cgoto) ctry.m33293break()).m33044final();
            this.elSpec = new k60(j60VarM3733try.m3734case(), j60VarM3733try.m3735new());
        } catch (IOException unused) {
            throw new IllegalArgumentException("invalid info structure in DSA public key");
        }
    }

    public Csuper(ElGamalPublicKey elGamalPublicKey) {
        this.y = elGamalPublicKey.getY();
        this.elSpec = elGamalPublicKey.getParameters();
    }

    private void readObject(ObjectInputStream objectInputStream) throws IOException, ClassNotFoundException {
        this.y = (BigInteger) objectInputStream.readObject();
        this.elSpec = new k60((BigInteger) objectInputStream.readObject(), (BigInteger) objectInputStream.readObject());
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.writeObject(getY());
        objectOutputStream.writeObject(this.elSpec.m4265if());
        objectOutputStream.writeObject(this.elSpec.m4264do());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "ElGamal";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        return nr0.m5357for(new b1(OIWObjectIdentifiers.elGamalAlgorithm, new j60(this.elSpec.m4265if(), this.elSpec.m4264do())), new Cgoto(this.y));
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.bouncycastle.jce.interfaces.ElGamalKey
    public k60 getParameters() {
        return this.elSpec;
    }

    @Override // javax.crypto.interfaces.DHKey
    public DHParameterSpec getParams() {
        return new DHParameterSpec(this.elSpec.m4265if(), this.elSpec.m4264do());
    }

    @Override // org.bouncycastle.jce.interfaces.ElGamalPublicKey, javax.crypto.interfaces.DHPublicKey
    public BigInteger getY() {
        return this.y;
    }
}
