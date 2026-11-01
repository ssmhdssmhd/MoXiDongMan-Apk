package org.bouncycastle.pqc.jcajce.provider.qtesla;

import android.support.v4.oi1;
import android.support.v4.q3;
import android.support.v4.qi1;
import android.support.v4.ri1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PublicKey;
import org.bouncycastle.asn1.x509.Ctry;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.util.Cfor;
import org.bouncycastle.pqc.crypto.util.Cnew;
import org.bouncycastle.pqc.jcajce.interfaces.QTESLAKey;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.qtesla.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif implements PublicKey, QTESLAKey {
    private static final long serialVersionUID = 1;

    /* renamed from: do, reason: not valid java name */
    private transient qi1 f32565do;

    public Cif(qi1 qi1Var) {
        this.f32565do = qi1Var;
    }

    public Cif(Ctry ctry) throws IOException {
        m36107do(ctry);
    }

    /* renamed from: do, reason: not valid java name */
    private void m36107do(Ctry ctry) throws IOException {
        this.f32565do = (qi1) Cfor.m35809if(ctry);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m36107do(Ctry.m33291case((byte[]) objectInputStream.readObject()));
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
        return this.f32565do.m6603for() == cif.f32565do.m6603for() && q3.m6362case(this.f32565do.m6604if(), cif.f32565do.m6604if());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return ri1.m6993do(this.f32565do.m6603for());
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return Cnew.m35816do(this.f32565do).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "X.509";
    }

    public CipherParameters getKeyParams() {
        return this.f32565do;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.QTESLAKey
    public oi1 getParams() {
        return new oi1(getAlgorithm());
    }

    public int hashCode() {
        return this.f32565do.m6603for() + (q3.n(this.f32565do.m6604if()) * 37);
    }
}
