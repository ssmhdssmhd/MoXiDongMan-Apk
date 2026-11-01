package org.bouncycastle.pqc.jcajce.provider.xmss;

import android.support.v4.ji2;
import android.support.v4.q3;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.util.Cif;
import org.bouncycastle.pqc.crypto.xmss.Creturn;
import org.bouncycastle.pqc.jcajce.interfaces.XMSSMTPrivateKey;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.do, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cdo implements PrivateKey, XMSSMTPrivateKey {
    private static final long serialVersionUID = 7682140473044521395L;

    /* renamed from: do, reason: not valid java name */
    private transient Ccatch f32579do;

    /* renamed from: for, reason: not valid java name */
    private transient Cthrow f32580for;

    /* renamed from: if, reason: not valid java name */
    private transient Creturn f32581if;

    public Cdo(Ccatch ccatch, Creturn creturn) {
        this.f32579do = ccatch;
        this.f32581if = creturn;
    }

    public Cdo(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        m36108do(cdo);
    }

    /* renamed from: do, reason: not valid java name */
    private void m36108do(org.bouncycastle.asn1.pkcs.Cdo cdo) throws IOException {
        this.f32580for = cdo.m33106new();
        this.f32579do = ji2.m3903try(cdo.m33104else().m419else()).m3905else().m420new();
        this.f32581if = (Creturn) org.bouncycastle.pqc.crypto.util.Cdo.m35804for(cdo);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m36108do(org.bouncycastle.asn1.pkcs.Cdo.m33100try((byte[]) objectInputStream.readObject()));
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
        return this.f32579do.equals(cdo.f32579do) && q3.m6362case(this.f32581if.toByteArray(), cdo.f32581if.toByteArray());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "XMSSMT";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return Cif.m35814if(this.f32581if, this.f32580for).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSMTKey
    public int getHeight() {
        return this.f32581if.m35961case().m35955for();
    }

    public CipherParameters getKeyParams() {
        return this.f32581if;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSMTKey
    public int getLayers() {
        return this.f32581if.m35961case().m35958new();
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSMTKey
    public String getTreeDigest() {
        return Ctry.m36115new(this.f32579do);
    }

    public Ccatch getTreeDigestOID() {
        return this.f32579do;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSMTPrivateKey
    public long getUsagesRemaining() {
        return this.f32581if.m35962catch();
    }

    public int hashCode() {
        return this.f32579do.hashCode() + (q3.n(this.f32581if.toByteArray()) * 37);
    }
}
