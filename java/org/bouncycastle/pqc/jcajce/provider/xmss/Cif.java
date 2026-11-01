package org.bouncycastle.pqc.jcajce.provider.xmss;

import android.support.v4.ji2;
import android.support.v4.q3;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.util.Cfor;
import org.bouncycastle.pqc.crypto.util.Cnew;
import org.bouncycastle.pqc.crypto.xmss.Cstatic;
import org.bouncycastle.pqc.jcajce.interfaces.XMSSMTKey;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements PublicKey, XMSSMTKey {
    private static final long serialVersionUID = 3230324130542413475L;

    /* renamed from: do, reason: not valid java name */
    private transient Ccatch f32590do;

    /* renamed from: if, reason: not valid java name */
    private transient Cstatic f32591if;

    public Cif(Ccatch ccatch, Cstatic cstatic) {
        this.f32590do = ccatch;
        this.f32591if = cstatic;
    }

    public Cif(Ctry ctry) throws IOException {
        m36110do(ctry);
    }

    /* renamed from: do, reason: not valid java name */
    private void m36110do(Ctry ctry) throws IOException {
        this.f32590do = ji2.m3903try(ctry.m33295new().m419else()).m3905else().m420new();
        this.f32591if = (Cstatic) Cfor.m35809if(ctry);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m36110do(Ctry.m33291case((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cif)) {
            return false;
        }
        Cif cif = (Cif) obj;
        return this.f32590do.equals(cif.f32590do) && q3.m6362case(this.f32591if.toByteArray(), cif.f32591if.toByteArray());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "XMSSMT";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return Cnew.m35816do(this.f32591if).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSMTKey
    public int getHeight() {
        return this.f32591if.m35986for().m35955for();
    }

    public CipherParameters getKeyParams() {
        return this.f32591if;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSMTKey
    public int getLayers() {
        return this.f32591if.m35986for().m35958new();
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSMTKey
    public String getTreeDigest() {
        return Ctry.m36115new(this.f32590do);
    }

    public int hashCode() {
        return this.f32590do.hashCode() + (q3.n(this.f32591if.toByteArray()) * 37);
    }
}
