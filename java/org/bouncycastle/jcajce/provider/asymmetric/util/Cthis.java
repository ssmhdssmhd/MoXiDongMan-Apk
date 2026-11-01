package org.bouncycastle.jcajce.provider.asymmetric.util;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.Enumeration;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cconst;
import org.bouncycastle.asn1.Celse;
import org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier;

/* renamed from: org.bouncycastle.jcajce.provider.asymmetric.util.this, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthis implements PKCS12BagAttributeCarrier {

    /* renamed from: do, reason: not valid java name */
    private Hashtable f31255do;

    /* renamed from: if, reason: not valid java name */
    private Vector f31256if;

    public Cthis() {
        this(new Hashtable(), new Vector());
    }

    public Cthis(Hashtable hashtable, Vector vector) {
        this.f31255do = hashtable;
        this.f31256if = vector;
    }

    /* renamed from: do, reason: not valid java name */
    public Hashtable m34750do() {
        return this.f31255do;
    }

    /* renamed from: for, reason: not valid java name */
    public void m34751for(ObjectInputStream objectInputStream) throws ClassNotFoundException, IOException {
        Object object = objectInputStream.readObject();
        if (object instanceof Hashtable) {
            this.f31255do = (Hashtable) object;
            this.f31256if = (Vector) objectInputStream.readObject();
        } else {
            Celse celse = new Celse((byte[]) object);
            while (true) {
                Ccatch ccatch = (Ccatch) celse.m33002break();
                if (ccatch == null) {
                    return;
                } else {
                    setBagAttribute(ccatch, celse.m33002break());
                }
            }
        }
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public ASN1Encodable getBagAttribute(Ccatch ccatch) {
        return (ASN1Encodable) this.f31255do.get(ccatch);
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public Enumeration getBagAttributeKeys() {
        return this.f31256if.elements();
    }

    /* renamed from: if, reason: not valid java name */
    public Vector m34752if() {
        return this.f31256if;
    }

    /* renamed from: new, reason: not valid java name */
    public int m34753new() {
        return this.f31256if.size();
    }

    @Override // org.bouncycastle.jce.interfaces.PKCS12BagAttributeCarrier
    public void setBagAttribute(Ccatch ccatch, ASN1Encodable aSN1Encodable) {
        if (this.f31255do.containsKey(ccatch)) {
            this.f31255do.put(ccatch, aSN1Encodable);
        } else {
            this.f31255do.put(ccatch, aSN1Encodable);
            this.f31256if.addElement(ccatch);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public void m34754try(ObjectOutputStream objectOutputStream) throws IOException {
        if (this.f31256if.size() == 0) {
            objectOutputStream.writeObject(new Hashtable());
            objectOutputStream.writeObject(new Vector());
            return;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        Cconst cconst = new Cconst(byteArrayOutputStream);
        Enumeration bagAttributeKeys = getBagAttributeKeys();
        while (bagAttributeKeys.hasMoreElements()) {
            Ccatch ccatch = (Ccatch) bagAttributeKeys.nextElement();
            cconst.mo32770const(ccatch);
            cconst.mo32770const((ASN1Encodable) this.f31255do.get(ccatch));
        }
        objectOutputStream.writeObject(byteArrayOutputStream.toByteArray());
    }
}
