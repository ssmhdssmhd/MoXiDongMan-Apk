package org.bouncycastle.asn1;

import android.support.v4.l51;
import android.support.v4.q3;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
import org.apache.commons.lang3.Ctry;

/* renamed from: org.bouncycastle.asn1.catch, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ccatch extends Cfinal {

    /* renamed from: for, reason: not valid java name */
    private static final long f28909for = 72057594037927808L;

    /* renamed from: new, reason: not valid java name */
    private static final ConcurrentMap<Cdo, Ccatch> f28910new = new ConcurrentHashMap();

    /* renamed from: do, reason: not valid java name */
    private final String f28911do;

    /* renamed from: if, reason: not valid java name */
    private byte[] f28912if;

    /* renamed from: org.bouncycastle.asn1.catch$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final int f28913do;

        /* renamed from: if, reason: not valid java name */
        private final byte[] f28914if;

        public Cdo(byte[] bArr) {
            this.f28913do = q3.n(bArr);
            this.f28914if = bArr;
        }

        public boolean equals(Object obj) {
            if (obj instanceof Cdo) {
                return q3.m6362case(this.f28914if, ((Cdo) obj).f28914if);
            }
            return false;
        }

        public int hashCode() {
            return this.f28913do;
        }
    }

    public Ccatch(String str) {
        if (str == null) {
            throw new IllegalArgumentException("'identifier' cannot be null");
        }
        if (m32787public(str)) {
            this.f28911do = str;
            return;
        }
        throw new IllegalArgumentException("string " + str + " not an OID");
    }

    public Ccatch(Ccatch ccatch, String str) {
        if (!m32786native(str, 0)) {
            throw new IllegalArgumentException("string " + str + " not a valid OID branch");
        }
        this.f28911do = ccatch.m32795super() + "." + str;
    }

    public Ccatch(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        boolean z = true;
        long j = 0;
        BigInteger bigIntegerShiftLeft = null;
        for (int i = 0; i != bArr.length; i++) {
            int i2 = bArr[i] & 255;
            if (j <= f28909for) {
                long j2 = j + (i2 & 127);
                if ((i2 & 128) == 0) {
                    if (z) {
                        if (j2 < 40) {
                            stringBuffer.append('0');
                        } else if (j2 < 80) {
                            stringBuffer.append('1');
                            j2 -= 40;
                        } else {
                            stringBuffer.append('2');
                            j2 -= 80;
                        }
                        z = false;
                    }
                    stringBuffer.append(Ctry.f28883do);
                    stringBuffer.append(j2);
                    j = 0;
                } else {
                    j = j2 << 7;
                }
            } else {
                BigInteger bigIntegerOr = (bigIntegerShiftLeft == null ? BigInteger.valueOf(j) : bigIntegerShiftLeft).or(BigInteger.valueOf(i2 & 127));
                if ((i2 & 128) == 0) {
                    if (z) {
                        stringBuffer.append('2');
                        bigIntegerOr = bigIntegerOr.subtract(BigInteger.valueOf(80L));
                        z = false;
                    }
                    stringBuffer.append(Ctry.f28883do);
                    stringBuffer.append(bigIntegerOr);
                    j = 0;
                    bigIntegerShiftLeft = null;
                } else {
                    bigIntegerShiftLeft = bigIntegerOr.shiftLeft(7);
                }
            }
        }
        this.f28911do = stringBuffer.toString();
        this.f28912if = q3.m6371final(bArr);
    }

    /* renamed from: class, reason: not valid java name */
    private void m32783class(ByteArrayOutputStream byteArrayOutputStream) {
        l51 l51Var = new l51(this.f28911do);
        int i = Integer.parseInt(l51Var.m4598if()) * 40;
        String strM4598if = l51Var.m4598if();
        if (strM4598if.length() <= 18) {
            m32788static(byteArrayOutputStream, i + Long.parseLong(strM4598if));
        } else {
            m32789switch(byteArrayOutputStream, new BigInteger(strM4598if).add(BigInteger.valueOf(i)));
        }
        while (l51Var.m4597do()) {
            String strM4598if2 = l51Var.m4598if();
            if (strM4598if2.length() <= 18) {
                m32788static(byteArrayOutputStream, Long.parseLong(strM4598if2));
            } else {
                m32789switch(byteArrayOutputStream, new BigInteger(strM4598if2));
            }
        }
    }

    /* renamed from: const, reason: not valid java name */
    public static Ccatch m32784const(byte[] bArr) {
        Ccatch ccatch = f28910new.get(new Cdo(bArr));
        return ccatch == null ? new Ccatch(bArr) : ccatch;
    }

    /* renamed from: final, reason: not valid java name */
    private synchronized byte[] m32785final() {
        if (this.f28912if == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            m32783class(byteArrayOutputStream);
            this.f28912if = byteArrayOutputStream.toByteArray();
        }
        return this.f28912if;
    }

    /* renamed from: native, reason: not valid java name */
    private static boolean m32786native(String str, int i) {
        boolean z;
        char cCharAt;
        int length = str.length();
        do {
            z = false;
            while (true) {
                length--;
                if (length < i) {
                    return z;
                }
                cCharAt = str.charAt(length);
                if ('0' > cCharAt || cCharAt > '9') {
                    break;
                }
                z = true;
            }
            if (cCharAt != '.') {
                break;
            }
        } while (z);
        return false;
    }

    /* renamed from: public, reason: not valid java name */
    private static boolean m32787public(String str) {
        char cCharAt;
        if (str.length() < 3 || str.charAt(1) != '.' || (cCharAt = str.charAt(0)) < '0' || cCharAt > '2') {
            return false;
        }
        return m32786native(str, 2);
    }

    /* renamed from: static, reason: not valid java name */
    private void m32788static(ByteArrayOutputStream byteArrayOutputStream, long j) {
        byte[] bArr = new byte[9];
        int i = 8;
        bArr[8] = (byte) (((int) j) & 127);
        while (j >= 128) {
            j >>= 7;
            i--;
            bArr[i] = (byte) ((((int) j) & 127) | 128);
        }
        byteArrayOutputStream.write(bArr, i, 9 - i);
    }

    /* renamed from: switch, reason: not valid java name */
    private void m32789switch(ByteArrayOutputStream byteArrayOutputStream, BigInteger bigInteger) {
        int iBitLength = (bigInteger.bitLength() + 6) / 7;
        if (iBitLength == 0) {
            byteArrayOutputStream.write(0);
            return;
        }
        byte[] bArr = new byte[iBitLength];
        int i = iBitLength - 1;
        for (int i2 = i; i2 >= 0; i2--) {
            bArr[i2] = (byte) ((bigInteger.intValue() & 127) | 128);
            bigInteger = bigInteger.shiftRight(7);
        }
        bArr[i] = (byte) (bArr[i] & Byte.MAX_VALUE);
        byteArrayOutputStream.write(bArr, 0, iBitLength);
    }

    /* renamed from: throw, reason: not valid java name */
    public static Ccatch m32790throw(Object obj) {
        if (obj == null || (obj instanceof Ccatch)) {
            return (Ccatch) obj;
        }
        if (obj instanceof ASN1Encodable) {
            Cfinal aSN1Primitive = ((ASN1Encodable) obj).toASN1Primitive();
            if (aSN1Primitive instanceof Ccatch) {
                return (Ccatch) aSN1Primitive;
            }
        }
        if (!(obj instanceof byte[])) {
            throw new IllegalArgumentException("illegal object in getInstance: " + obj.getClass().getName());
        }
        try {
            return (Ccatch) Cfinal.m33015else((byte[]) obj);
        } catch (IOException e) {
            throw new IllegalArgumentException("failed to construct object identifier from byte[]: " + e.getMessage());
        }
    }

    /* renamed from: while, reason: not valid java name */
    public static Ccatch m32791while(Cimport cimport, boolean z) {
        Cfinal cfinalM33065const = cimport.m33065const();
        return (z || (cfinalM33065const instanceof Ccatch)) ? m32790throw(cfinalM33065const) : m32784const(Cclass.m32796catch(cfinalM33065const).mo5490const());
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: case */
    public int mo32748case() throws IOException {
        int length = m32785final().length;
        return m0.m33082do(length) + 1 + length;
    }

    /* renamed from: catch, reason: not valid java name */
    public Ccatch m32792catch(String str) {
        return new Ccatch(this, str);
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: goto */
    public boolean mo32749goto() {
        return false;
    }

    @Override // org.bouncycastle.asn1.Cfinal, org.bouncycastle.asn1.Cbreak
    public int hashCode() {
        return this.f28911do.hashCode();
    }

    /* renamed from: import, reason: not valid java name */
    public Ccatch m32793import() {
        Cdo cdo = new Cdo(m32785final());
        ConcurrentMap<Cdo, Ccatch> concurrentMap = f28910new;
        Ccatch ccatch = concurrentMap.get(cdo);
        if (ccatch != null) {
            return ccatch;
        }
        Ccatch ccatchPutIfAbsent = concurrentMap.putIfAbsent(cdo, this);
        return ccatchPutIfAbsent == null ? this : ccatchPutIfAbsent;
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: new */
    public boolean mo32769new(Cfinal cfinal) {
        if (cfinal == this) {
            return true;
        }
        if (cfinal instanceof Ccatch) {
            return this.f28911do.equals(((Ccatch) cfinal).f28911do);
        }
        return false;
    }

    /* renamed from: return, reason: not valid java name */
    public boolean m32794return(Ccatch ccatch) {
        String strM32795super = m32795super();
        String strM32795super2 = ccatch.m32795super();
        return strM32795super.length() > strM32795super2.length() && strM32795super.charAt(strM32795super2.length()) == '.' && strM32795super.startsWith(strM32795super2);
    }

    /* renamed from: super, reason: not valid java name */
    public String m32795super() {
        return this.f28911do;
    }

    public String toString() {
        return m32795super();
    }

    @Override // org.bouncycastle.asn1.Cfinal
    /* renamed from: try */
    public void mo32750try(Cconst cconst) throws IOException {
        byte[] bArrM32785final = m32785final();
        cconst.mo32910try(6);
        cconst.m32900catch(bArrM32785final.length);
        cconst.m32899case(bArrM32785final);
    }
}
