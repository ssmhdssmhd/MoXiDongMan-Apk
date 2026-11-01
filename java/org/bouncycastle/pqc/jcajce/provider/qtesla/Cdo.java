package org.bouncycastle.pqc.jcajce.provider.qtesla;

import android.support.v4.oi1;
import android.support.v4.pi1;
import android.support.v4.q3;
import android.support.v4.ri1;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.util.Cif;
import org.bouncycastle.pqc.jcajce.interfaces.QTESLAKey;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.qtesla.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements PrivateKey, QTESLAKey {
    private static final long serialVersionUID = 1;

    /* renamed from: do, reason: not valid java name */
    private transient pi1 f32563do;

    /* renamed from: if, reason: not valid java name */
    private transient Cthrow f32564if;

    public Cdo(pi1 pi1Var) {
        this.f32563do = pi1Var;
    }

    public Cdo(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        m36103do(cdo);
    }

    /* renamed from: do, reason: not valid java name */
    private void m36103do(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        this.f32564if = cdo.m33106new();
        this.f32563do = (pi1) org.bouncycastle.pqc.crypto.util.Cdo.m35804for(cdo);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m36103do(org.bouncycastle.asn1.pkcs.Cdo.m33100try((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cdo)) {
            return false;
        }
        Cdo cdo = (Cdo) obj;
        return this.f32563do.m6080for() == cdo.f32563do.m6080for() && q3.m6362case(this.f32563do.m6081if(), cdo.f32563do.m6081if());
    }

    @Override // java.security.Key
    public final String getAlgorithm() {
        return ri1.m6993do(this.f32563do.m6080for());
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return Cif.m35814if(this.f32563do, this.f32564if).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    public CipherParameters getKeyParams() {
        return this.f32563do;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.QTESLAKey
    public oi1 getParams() {
        return new oi1(getAlgorithm());
    }

    public int hashCode() {
        return this.f32563do.m6080for() + (q3.n(this.f32563do.m6081if()) * 37);
    }
}
