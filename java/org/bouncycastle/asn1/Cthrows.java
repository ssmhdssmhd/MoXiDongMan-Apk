package org.bouncycastle.asn1;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.util.Enumeration;
import java.util.Vector;

/* renamed from: org.bouncycastle.asn1.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cthrows extends Cclass {

    /* renamed from: new, reason: not valid java name */
    private static final int f29199new = 1000;

    /* renamed from: for, reason: not valid java name */
    private final Cclass[] f29200for;

    /* renamed from: if, reason: not valid java name */
    private final int f29201if;

    /* renamed from: org.bouncycastle.asn1.throws$do, reason: invalid class name */
    public class Cdo implements Enumeration {

        /* renamed from: do, reason: not valid java name */
        public int f29202do = 0;

        public Cdo() {
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return this.f29202do < Cthrows.this.f29200for.length;
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            Cclass[] cclassArr = Cthrows.this.f29200for;
            int i = this.f29202do;
            this.f29202do = i + 1;
            return cclassArr[i];
        }
    }

    public Cthrows(byte[] bArr) {
        this(bArr, 1000);
    }

    public Cthrows(byte[] bArr, int i) {
        this(bArr, null, i);
    }

    private Cthrows(byte[] bArr, Cclass[] cclassArr, int i) {
        super(bArr);
        this.f29200for = cclassArr;
        this.f29201if = i;
    }

    public Cthrows(Cclass[] cclassArr) {
        this(cclassArr, 1000);
    }

    public Cthrows(Cclass[] cclassArr, int i) {
        this(m33160native(cclassArr), cclassArr, i);
    }

    /* renamed from: native, reason: not valid java name */
    private static byte[] m33160native(Cclass[] cclassArr) {
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        for (int i = 0; i != cclassArr.length; i++) {
            try {
                byteArrayOutputStream.write(((j) cclassArr[i]).mo5490const());
            } catch (IOException e) {
                throw new IllegalArgumentException("exception converting octets " + e.toString());
            } catch (ClassCastException unused) {
                throw new IllegalArgumentException(cclassArr[i].getClass().getName() + " found in input should only contain DEROctetString");
            }
        }
        return byteArrayOutputStream.toByteArray();
    }

    /* renamed from: throw, reason: not valid java name */
    public static Cthrows m33162throw(Csuper csuper) {
        Cclass[] cclassArr = new Cclass[csuper.size()];
        Enumeration enumerationMo33076super = csuper.mo33076super();
        int i = 0;
        while (enumerationMo33076super.hasMoreElements()) {
            cclassArr[i] = (Cclass) enumerationMo33076super.nextElement();
            i++;
        }
        return new Cthrows(cclassArr);
    }

    /* renamed from: while, reason: not valid java name */
    private Vector m33163while() {
        Vector vector = new Vector();
        int i = 0;
        while (true) {
            byte[] bArr = this.f28915do;
            if (i >= bArr.length) {
                return vector;
            }
            int i2 = this.f29201if;
            int length = (i + i2 > bArr.length ? bArr.length : i2 + i) - i;
            byte[] bArr2 = new byte[length];
            System.arraycopy(bArr, i, bArr2, 0, length);
            vector.addElement(new j(bArr2));
            i += this.f29201if;
        }
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        Enumeration enumerationMo5491import = mo5491import();
        int iMo32748case = 0;
        while (enumerationMo5491import.hasMoreElements()) {
            iMo32748case += ((ASN1Encodable) enumerationMo5491import.nextElement()).toASN1Primitive().mo32748case();
        }
        return iMo32748case + 2 + 2;
    }

    @Override // org.bouncycastle.asn1.Cclass
    /* renamed from: const */
    public byte[] mo5490const() {
        return this.f28915do;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return true;
    }

    /* renamed from: import */
    public Enumeration mo5491import() {
        return this.f29200for == null ? m33163while().elements() : new Cdo();
    }

    @Override // org.bouncycastle.asn1.Cclass, org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        cconst.mo32910try(36);
        cconst.mo32910try(128);
        Enumeration enumerationMo5491import = mo5491import();
        while (enumerationMo5491import.hasMoreElements()) {
            cconst.mo32770const((ASN1Encodable) enumerationMo5491import.nextElement());
        }
        cconst.mo32910try(0);
        cconst.mo32910try(0);
    }
}
