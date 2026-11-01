package android.support.v4;

import java.io.IOException;
import java.util.Hashtable;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.ASN1Encoding;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.x509.Celse;

/* loaded from: classes3.dex */
public class gh2 {

    /* renamed from: do, reason: not valid java name */
    private Hashtable f2141do = new Hashtable();

    /* renamed from: if, reason: not valid java name */
    private Vector f2142if = new Vector();

    /* renamed from: do, reason: not valid java name */
    public void m2691do(Ccatch ccatch, boolean z, ASN1Encodable aSN1Encodable) {
        try {
            m2693if(ccatch, z, aSN1Encodable.toASN1Primitive().m32764do(ASN1Encoding.DER));
        } catch (IOException e) {
            throw new IllegalArgumentException("error encoding value: " + e);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public fh2 m2692for() {
        return new fh2(this.f2142if, this.f2141do);
    }

    /* renamed from: if, reason: not valid java name */
    public void m2693if(Ccatch ccatch, boolean z, byte[] bArr) {
        if (!this.f2141do.containsKey(ccatch)) {
            this.f2142if.addElement(ccatch);
            this.f2141do.put(ccatch, new Celse(z, new org.bouncycastle.asn1.j(bArr)));
        } else {
            throw new IllegalArgumentException("extension " + ccatch + " already added");
        }
    }

    /* renamed from: new, reason: not valid java name */
    public boolean m2694new() {
        return this.f2142if.isEmpty();
    }

    /* renamed from: try, reason: not valid java name */
    public void m2695try() {
        this.f2141do = new Hashtable();
        this.f2142if = new Vector();
    }
}
