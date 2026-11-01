package android.support.v4;

import java.io.IOException;
import java.util.StringTokenizer;
import org.bouncycastle.asn1.ASN1Choice;
import org.bouncycastle.asn1.ASN1Encodable;
import org.bouncycastle.asn1.Cbreak;
import org.bouncycastle.asn1.Ccatch;
import org.bouncycastle.asn1.Cclass;
import org.bouncycastle.asn1.Cfinal;
import org.bouncycastle.asn1.Cimport;
import org.bouncycastle.asn1.Csuper;
import org.bouncycastle.asn1.x509.Cgoto;

/* loaded from: classes3.dex */
public class tg0 extends Cbreak implements ASN1Choice {

    /* renamed from: break, reason: not valid java name */
    public static final int f6505break = 7;

    /* renamed from: case, reason: not valid java name */
    public static final int f6506case = 3;

    /* renamed from: catch, reason: not valid java name */
    public static final int f6507catch = 8;

    /* renamed from: else, reason: not valid java name */
    public static final int f6508else = 4;

    /* renamed from: for, reason: not valid java name */
    public static final int f6509for = 0;

    /* renamed from: goto, reason: not valid java name */
    public static final int f6510goto = 5;

    /* renamed from: new, reason: not valid java name */
    public static final int f6511new = 1;

    /* renamed from: this, reason: not valid java name */
    public static final int f6512this = 6;

    /* renamed from: try, reason: not valid java name */
    public static final int f6513try = 2;

    /* renamed from: do, reason: not valid java name */
    private ASN1Encodable f6514do;

    /* renamed from: if, reason: not valid java name */
    private int f6515if;

    public tg0(int i, String str) throws NumberFormatException {
        ASN1Encodable gVar;
        this.f6515if = i;
        if (i == 1 || i == 2 || i == 6) {
            gVar = new org.bouncycastle.asn1.g(str);
        } else if (i == 8) {
            gVar = new Ccatch(str);
        } else {
            if (i != 4) {
                if (i != 7) {
                    throw new IllegalArgumentException("can't process String for tag: " + i);
                }
                byte[] bArrM7873class = m7873class(str);
                if (bArrM7873class == null) {
                    throw new IllegalArgumentException("IP Address is invalid");
                }
                this.f6514do = new org.bouncycastle.asn1.j(bArrM7873class);
                return;
            }
            gVar = new tg2(str);
        }
        this.f6514do = gVar;
    }

    public tg0(int i, ASN1Encodable aSN1Encodable) {
        this.f6514do = aSN1Encodable;
        this.f6515if = i;
    }

    public tg0(tg2 tg2Var) {
        this.f6514do = tg2Var;
        this.f6515if = 4;
    }

    public tg0(Cgoto cgoto) {
        this.f6514do = tg2.m7884else(cgoto);
        this.f6515if = 4;
    }

    /* renamed from: break, reason: not valid java name */
    private int[] m7870break(String str) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, ":", true);
        int[] iArr = new int[8];
        if (str.charAt(0) == ':' && str.charAt(1) == ':') {
            stringTokenizer.nextToken();
        }
        int i = -1;
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            String strNextToken = stringTokenizer.nextToken();
            if (strNextToken.equals(":")) {
                iArr[i2] = 0;
                int i3 = i2;
                i2++;
                i = i3;
            } else if (strNextToken.indexOf(46) < 0) {
                int i4 = i2 + 1;
                iArr[i2] = Integer.parseInt(strNextToken, 16);
                if (stringTokenizer.hasMoreTokens()) {
                    stringTokenizer.nextToken();
                }
                i2 = i4;
            } else {
                StringTokenizer stringTokenizer2 = new StringTokenizer(strNextToken, ".");
                int i5 = i2 + 1;
                iArr[i2] = (Integer.parseInt(stringTokenizer2.nextToken()) << 8) | Integer.parseInt(stringTokenizer2.nextToken());
                i2 = i5 + 1;
                iArr[i5] = Integer.parseInt(stringTokenizer2.nextToken()) | (Integer.parseInt(stringTokenizer2.nextToken()) << 8);
            }
        }
        if (i2 != 8) {
            int i6 = i2 - i;
            int i7 = 8 - i6;
            System.arraycopy(iArr, i, iArr, i7, i6);
            while (i != i7) {
                iArr[i] = 0;
                i++;
            }
        }
        return iArr;
    }

    /* renamed from: case, reason: not valid java name */
    public static tg0 m7871case(Cimport cimport, boolean z) {
        return m7877try(Cimport.m33064class(cimport, true));
    }

    /* renamed from: catch, reason: not valid java name */
    private int[] m7872catch(String str) throws NumberFormatException {
        int[] iArr = new int[8];
        int i = Integer.parseInt(str);
        for (int i2 = 0; i2 != i; i2++) {
            int i3 = i2 / 16;
            iArr[i3] = iArr[i3] | (1 << (15 - (i2 % 16)));
        }
        return iArr;
    }

    /* renamed from: class, reason: not valid java name */
    private byte[] m7873class(String str) throws NumberFormatException {
        if (el0.m1941case(str) || el0.m1947try(str)) {
            int iIndexOf = str.indexOf(47);
            if (iIndexOf < 0) {
                byte[] bArr = new byte[16];
                m7875new(m7870break(str), bArr, 0);
                return bArr;
            }
            byte[] bArr2 = new byte[32];
            m7875new(m7870break(str.substring(0, iIndexOf)), bArr2, 0);
            String strSubstring = str.substring(iIndexOf + 1);
            m7875new(strSubstring.indexOf(58) > 0 ? m7870break(strSubstring) : m7872catch(strSubstring), bArr2, 16);
            return bArr2;
        }
        if (!el0.m1946new(str) && !el0.m1944for(str)) {
            return null;
        }
        int iIndexOf2 = str.indexOf(47);
        if (iIndexOf2 < 0) {
            byte[] bArr3 = new byte[4];
            m7874goto(str, bArr3, 0);
            return bArr3;
        }
        byte[] bArr4 = new byte[8];
        m7874goto(str.substring(0, iIndexOf2), bArr4, 0);
        String strSubstring2 = str.substring(iIndexOf2 + 1);
        if (strSubstring2.indexOf(46) > 0) {
            m7874goto(strSubstring2, bArr4, 4);
        } else {
            m7876this(strSubstring2, bArr4, 4);
        }
        return bArr4;
    }

    /* renamed from: goto, reason: not valid java name */
    private void m7874goto(String str, byte[] bArr, int i) {
        StringTokenizer stringTokenizer = new StringTokenizer(str, "./");
        int i2 = 0;
        while (stringTokenizer.hasMoreTokens()) {
            bArr[i2 + i] = (byte) Integer.parseInt(stringTokenizer.nextToken());
            i2++;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private void m7875new(int[] iArr, byte[] bArr, int i) {
        for (int i2 = 0; i2 != iArr.length; i2++) {
            int i3 = i2 * 2;
            bArr[i3 + i] = (byte) (iArr[i2] >> 8);
            bArr[i3 + 1 + i] = (byte) iArr[i2];
        }
    }

    /* renamed from: this, reason: not valid java name */
    private void m7876this(String str, byte[] bArr, int i) throws NumberFormatException {
        int i2 = Integer.parseInt(str);
        for (int i3 = 0; i3 != i2; i3++) {
            int i4 = (i3 / 8) + i;
            bArr[i4] = (byte) (bArr[i4] | (1 << (7 - (i3 % 8))));
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static tg0 m7877try(Object obj) {
        if (obj == null || (obj instanceof tg0)) {
            return (tg0) obj;
        }
        if (obj instanceof Cimport) {
            Cimport cimport = (Cimport) obj;
            int tagNo = cimport.getTagNo();
            switch (tagNo) {
                case 0:
                    return new tg0(tagNo, Csuper.m33130class(cimport, false));
                case 1:
                    return new tg0(tagNo, org.bouncycastle.asn1.g.m33024class(cimport, false));
                case 2:
                    return new tg0(tagNo, org.bouncycastle.asn1.g.m33024class(cimport, false));
                case 3:
                    throw new IllegalArgumentException("unknown tag: " + tagNo);
                case 4:
                    return new tg0(tagNo, tg2.m7885goto(cimport, true));
                case 5:
                    return new tg0(tagNo, Csuper.m33130class(cimport, false));
                case 6:
                    return new tg0(tagNo, org.bouncycastle.asn1.g.m33024class(cimport, false));
                case 7:
                    return new tg0(tagNo, Cclass.m32797class(cimport, false));
                case 8:
                    return new tg0(tagNo, Ccatch.m32791while(cimport, false));
            }
        }
        if (obj instanceof byte[]) {
            try {
                return m7877try(Cfinal.m33015else((byte[]) obj));
            } catch (IOException unused) {
                throw new IllegalArgumentException("unable to parse encoded general name");
            }
        }
        throw new IllegalArgumentException("unknown object in getInstance: " + obj.getClass().getName());
    }

    /* renamed from: else, reason: not valid java name */
    public ASN1Encodable m7878else() {
        return this.f6514do;
    }

    public int getTagNo() {
        return this.f6515if;
    }

    @Override // org.bouncycastle.asn1.Cbreak, org.bouncycastle.asn1.ASN1Encodable
    public Cfinal toASN1Primitive() {
        return this.f6515if == 4 ? new org.bouncycastle.asn1.u(true, this.f6515if, this.f6514do) : new org.bouncycastle.asn1.u(false, this.f6515if, this.f6514do);
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x002f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String toString() {
        String string;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.f6515if);
        stringBuffer.append(": ");
        int i = this.f6515if;
        if (i == 1 || i == 2) {
            string = org.bouncycastle.asn1.g.m33023catch(this.f6514do).getString();
        } else if (i == 4) {
            string = tg2.m7884else(this.f6514do).toString();
        } else if (i != 6) {
            string = this.f6514do.toString();
        }
        stringBuffer.append(string);
        return stringBuffer.toString();
    }
}
