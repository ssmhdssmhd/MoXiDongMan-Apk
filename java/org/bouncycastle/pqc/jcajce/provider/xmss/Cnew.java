package org.bouncycastle.pqc.jcajce.provider.xmss;

import android.support.v4.gi2;
import android.support.v4.q3;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.util.Cfor;
import org.bouncycastle.pqc.crypto.xmss.Cprivate;
import org.bouncycastle.pqc.jcajce.interfaces.XMSSKey;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.new, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cnew implements PublicKey, XMSSKey {
    private static final long serialVersionUID = -5617456225328969766L;

    /* renamed from: do, reason: not valid java name */
    private transient Cprivate f32592do;

    /* renamed from: if, reason: not valid java name */
    private transient Ccatch f32593if;

    public Cnew(Ccatch ccatch, Cprivate cprivate) {
        this.f32593if = ccatch;
        this.f32592do = cprivate;
    }

    public Cnew(Ctry ctry) throws IOException {
        m36111do(ctry);
    }

    /* renamed from: do, reason: not valid java name */
    private void m36111do(Ctry ctry) throws IOException {
        this.f32593if = gi2.m2697try(ctry.m33295new().m419else()).m2698case().m420new();
        this.f32592do = (Cprivate) Cfor.m35809if(ctry);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m36111do(Ctry.m33291case((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cnew)) {
            return false;
        }
        Cnew cnew = (Cnew) obj;
        return this.f32593if.equals(cnew.f32593if) && q3.m6362case(this.f32592do.toByteArray(), cnew.f32592do.toByteArray());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return "XMSS";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return org.bouncycastle.pqc.crypto.util.Cnew.m35816do(this.f32592do).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSKey
    public int getHeight() {
        return this.f32592do.m35940for().m35884new();
    }

    public CipherParameters getKeyParams() {
        return this.f32592do;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSKey
    public String getTreeDigest() {
        return Ctry.m36115new(this.f32593if);
    }

    public int hashCode() {
        return this.f32593if.hashCode() + (q3.n(this.f32592do.toByteArray()) * 37);
    }
}
