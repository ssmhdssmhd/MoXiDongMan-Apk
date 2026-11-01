package android.support.v4;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.Cthrows;

/* loaded from: classes3.dex */
public class o6 extends Cthrows {

    /* renamed from: case, reason: not valid java name */
    private static final int f4431case = 1000;

    /* renamed from: try, reason: not valid java name */
    private Vector f4432try;

    public o6(Vector vector) {
        super(m5487return(vector));
        this.f4432try = vector;
    }

    public o6(ASN1Encodable aSN1Encodable) {
        this(aSN1Encodable.toASN1Primitive());
    }

    public o6(Cfinal cfinal) {
        super(m5486public(cfinal));
    }

    public o6(byte[] bArr) {
        super(bArr);
    }

    /* renamed from: public, reason: not valid java name */
    private static byte[] m5486public(Cfinal cfinal) {
        try {
            return cfinal.getEncoded();
        } catch (IOException unused) {
            throw new IllegalArgumentException("Unable to encode object");
        }
    }

    /* renamed from: return, reason: not valid java name */
    private static byte[] m5487return(Vector vector) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 0; i != vector.size(); i++) {
            try {
                byteArrayOutputStream.write(((org.bouncycastle.asn1.j) vector.elementAt(i)).mo5490const());
            } catch (IOException e) {
                throw new IllegalArgumentException("exception converting octets " + e.toString());
            } catch (ClassCastException unused) {
                throw new IllegalArgumentException(vector.elementAt(i).getClass().getName() + " found in input should only contain DEROctetString");
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: throw, reason: not valid java name */
    public static Cthrows m5488throw(Csuper csuper) {
        Vector vector = new Vector();
        Enumeration enumerationMo33076super = csuper.mo33076super();
        while (enumerationMo33076super.hasMoreElements()) {
            vector.addElement(enumerationMo33076super.nextElement());
        }
        return new o6(vector);
    }

    /* renamed from: while, reason: not valid java name */
    private Vector m5489while() {
        Vector vector = new Vector();
        int i = 0;
        while (true) {
            byte[] bArr = this.f28915do;
            if (i >= bArr.length) {
                return vector;
            }
            int i2 = i + 1000;
            int length = (i2 > bArr.length ? bArr.length : i2) - i;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, i, bArr2, 0, length);
            vector.addElement(new org.bouncycastle.asn1.j(bArr2));
            i = i2;
        }
    }

    @Override // org.bouncycastle.asn1.Cthrows, org.bouncycastle.asn1.Cclass
    /* renamed from: const, reason: not valid java name */
    public byte[] mo5490const() {
        return this.f28915do;
    }

    @Override // org.bouncycastle.asn1.Cthrows
    /* renamed from: import, reason: not valid java name */
    public Enumeration mo5491import() {
        Vector vector = this.f4432try;
        return vector == null ? m5489while().elements() : vector.elements();
    }
}
