package org.bouncycastle.pqc.jcajce.provider.xmss;

import android.support.v4.gi2;
import android.support.v4.q3;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.security.PrivateKey;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cthrow;
import org.bouncycastle.asn1.pkcs.Cdo;
import org.bouncycastle.crypto.CipherParameters;
import org.bouncycastle.pqc.crypto.util.Cif;
import org.bouncycastle.pqc.crypto.xmss.Cpackage;
import org.bouncycastle.pqc.jcajce.interfaces.XMSSPrivateKey;

/* renamed from: org.bouncycastle.pqc.jcajce.provider.xmss.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor implements PrivateKey, XMSSPrivateKey {
    private static final long serialVersionUID = 8568701712864512338L;

    /* renamed from: do, reason: not valid java name */
    private transient Cpackage f32587do;

    /* renamed from: for, reason: not valid java name */
    private transient Cthrow f32588for;

    /* renamed from: if, reason: not valid java name */
    private transient Ccatch f32589if;

    public Cfor(Ccatch ccatch, Cpackage cpackage) {
        this.f32589if = ccatch;
        this.f32587do = cpackage;
    }

    public Cfor(Cdo cdo) throws IOException {
        m36109do(cdo);
    }

    /* renamed from: do, reason: not valid java name */
    private void m36109do(Cdo cdo) throws IOException {
        this.f32588for = cdo.m33106new();
        this.f32589if = gi2.m2697try(cdo.m33104else().m419else()).m2698case().m420new();
        this.f32587do = (Cpackage) org.bouncycastle.pqc.crypto.util.Cdo.m35804for(cdo);
    }

    private void readObject(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        objectInputStream.defaultReadObject();
        m36109do(Cdo.m33100try((byte[]) objectInputStream.readObject()));
    }

    private void writeObject(ObjectOutputStream objectOutputStream) throws IOException {
        objectOutputStream.defaultWriteObject();
        objectOutputStream.writeObject(getEncoded());
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof Cfor)) {
            return false;
        }
        Cfor cfor = (Cfor) obj;
        return this.f32589if.equals(cfor.f32589if) && q3.m6362case(this.f32587do.toByteArray(), cfor.f32587do.toByteArray());
    }

    @Override // java.security.Key
    public String getAlgorithm() {
        return "XMSS";
    }

    @Override // java.security.Key
    public byte[] getEncoded() {
        try {
            return Cif.m35814if(this.f32587do, this.f32588for).getEncoded();
        } catch (IOException unused) {
            return null;
        }
    }

    @Override // java.security.Key
    public String getFormat() {
        return "PKCS#8";
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSKey
    public int getHeight() {
        return this.f32587do.m35915case().m35884new();
    }

    public CipherParameters getKeyParams() {
        return this.f32587do;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSKey
    public String getTreeDigest() {
        return Ctry.m36115new(this.f32589if);
    }

    public Ccatch getTreeDigestOID() {
        return this.f32589if;
    }

    @Override // org.bouncycastle.pqc.jcajce.interfaces.XMSSPrivateKey
    public long getUsagesRemaining() {
        return this.f32587do.m35916catch();
    }

    public int hashCode() {
        return this.f32589if.hashCode() + (q3.n(this.f32587do.toByteArray()) * 37);
    }
}
