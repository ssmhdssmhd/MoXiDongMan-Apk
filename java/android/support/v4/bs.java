package android.support.v4;

import java.math.BigInteger;

/* loaded from: classes3.dex */
public class bs {

    /* renamed from: do, reason: not valid java name */
    public BigInteger f525do;

    /* renamed from: for, reason: not valid java name */
    public BigInteger f526for;

    /* renamed from: if, reason: not valid java name */
    public BigInteger f527if;

    /* renamed from: new, reason: not valid java name */
    public BigInteger f528new;

    public bs() {
    }

    public bs(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3, BigInteger bigInteger4) {
        this.f525do = bigInteger;
        this.f527if = bigInteger2;
        this.f526for = bigInteger3;
        this.f528new = bigInteger4;
    }

    public bs(byte[] bArr) {
        int iM3354do = ib1.m3354do(bArr, 0) + 4;
        this.f525do = new BigInteger(q3.m6378instanceof(bArr, 4, iM3354do));
        int iM3354do2 = ib1.m3354do(bArr, iM3354do);
        int i = iM3354do + 4;
        int i2 = iM3354do2 + i;
        this.f527if = new BigInteger(q3.m6378instanceof(bArr, i, i2));
        int iM3354do3 = ib1.m3354do(bArr, i2);
        int i3 = i2 + 4;
        int i4 = iM3354do3 + i3;
        this.f526for = new BigInteger(q3.m6378instanceof(bArr, i3, i4));
        int iM3354do4 = ib1.m3354do(bArr, i4);
        int i5 = i4 + 4;
        this.f528new = new BigInteger(q3.m6378instanceof(bArr, i5, iM3354do4 + i5));
    }

    /* renamed from: case, reason: not valid java name */
    public void m628case(BigInteger bigInteger) {
        this.f525do = bigInteger;
    }

    /* renamed from: do, reason: not valid java name */
    public BigInteger m629do() {
        return this.f526for;
    }

    /* renamed from: else, reason: not valid java name */
    public void m630else(BigInteger bigInteger) {
        this.f527if = bigInteger;
    }

    /* renamed from: for, reason: not valid java name */
    public BigInteger m631for() {
        return this.f527if;
    }

    /* renamed from: goto, reason: not valid java name */
    public void m632goto(BigInteger bigInteger) {
        this.f528new = bigInteger;
    }

    /* renamed from: if, reason: not valid java name */
    public BigInteger m633if() {
        return this.f525do;
    }

    /* renamed from: new, reason: not valid java name */
    public BigInteger m634new() {
        return this.f528new;
    }

    /* renamed from: this, reason: not valid java name */
    public byte[] m635this() {
        byte[] byteArray = this.f525do.toByteArray();
        int length = byteArray.length;
        byte[] byteArray2 = this.f527if.toByteArray();
        int length2 = byteArray2.length;
        byte[] byteArray3 = this.f526for.toByteArray();
        int length3 = byteArray3.length;
        byte[] byteArray4 = this.f528new.toByteArray();
        int length4 = byteArray4.length;
        byte[] bArr = new byte[length + length2 + length3 + length4 + 16];
        ib1.m3348case(length, bArr, 0);
        System.arraycopy(byteArray, 0, bArr, 4, length);
        int i = length + 4;
        ib1.m3348case(length2, bArr, i);
        int i2 = i + 4;
        System.arraycopy(byteArray2, 0, bArr, i2, length2);
        int i3 = i2 + length2;
        ib1.m3348case(length3, bArr, i3);
        int i4 = i3 + 4;
        System.arraycopy(byteArray3, 0, bArr, i4, length3);
        int i5 = i4 + length3;
        ib1.m3348case(length4, bArr, i5);
        System.arraycopy(byteArray4, 0, bArr, i5 + 4, length4);
        return bArr;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("u1: " + this.f525do.toString());
        stringBuffer.append("\nu2: " + this.f527if.toString());
        stringBuffer.append("\ne: " + this.f526for.toString());
        stringBuffer.append("\nv: " + this.f528new.toString());
        return stringBuffer.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public void m636try(BigInteger bigInteger) {
        this.f526for = bigInteger;
    }
}
