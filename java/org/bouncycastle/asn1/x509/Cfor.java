package org.bouncycastle.asn1.x509;

import android.support.v4.y90;
import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.j;

/* renamed from: org.bouncycastle.asn1.x509.for, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cfor {

    /* renamed from: do, reason: not valid java name */
    private Hashtable f29267do = new Hashtable();

    /* renamed from: if, reason: not valid java name */
    private Vector f29268if = new Vector();

    /* renamed from: case, reason: not valid java name */
    public void m33222case() {
        this.f29267do = new Hashtable();
        this.f29268if = new Vector();
    }

    /* renamed from: do, reason: not valid java name */
    public void m33223do(Ccatch ccatch, boolean z, ASN1Encodable aSN1Encodable) throws IOException {
        m33225if(ccatch, z, aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.DER));
    }

    /* renamed from: for, reason: not valid java name */
    public void m33224for(Cif cif) {
        if (!this.f29267do.containsKey(cif.m33249try())) {
            this.f29268if.addElement(cif.m33249try());
            this.f29267do.put(cif.m33249try(), cif);
        } else {
            throw new IllegalArgumentException("extension " + cif.m33249try() + " already added");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public void m33225if(Ccatch ccatch, boolean z, byte[] bArr) {
        if (!this.f29267do.containsKey(ccatch)) {
            this.f29268if.addElement(ccatch);
            this.f29267do.put(ccatch, new Cif(ccatch, z, new j(bArr)));
        } else {
            throw new IllegalArgumentException("extension " + ccatch + " already added");
        }
    }

    /* renamed from: new, reason: not valid java name */
    public y90 m33226new() {
        Cif[] cifArr = new Cif[this.f29268if.size()];
        for (int i = 0; i != this.f29268if.size(); i++) {
            cifArr[i] = (Cif) this.f29267do.get(this.f29268if.elementAt(i));
        }
        return new y90(cifArr);
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m33227try() {
        return this.f29268if.isEmpty();
    }
}
