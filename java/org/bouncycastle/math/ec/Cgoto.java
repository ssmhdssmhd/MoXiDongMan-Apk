package org.bouncycastle.math.ec;

import java.math.BigInteger;

/* renamed from: org.bouncycastle.math.ec.goto, reason: invalid class name */
/* loaded from: classes3.dex */
class Cgoto {

    /* renamed from: for, reason: not valid java name */
    private static final long f32006for = 1;

    /* renamed from: do, reason: not valid java name */
    private final BigInteger f32007do;

    /* renamed from: if, reason: not valid java name */
    private final int f32008if;

    public Cgoto(BigInteger bigInteger, int i) {
        if (i < 0) {
            throw new IllegalArgumentException("scale may not be negative");
        }
        this.f32007do = bigInteger;
        this.f32008if = i;
    }

    /* renamed from: break, reason: not valid java name */
    public static Cgoto m35399break(BigInteger bigInteger, int i) {
        return new Cgoto(bigInteger.shiftLeft(i), i);
    }

    /* renamed from: new, reason: not valid java name */
    private void m35400new(Cgoto cgoto) {
        if (this.f32008if != cgoto.f32008if) {
            throw new IllegalArgumentException("Only SimpleBigDecimal of same scale allowed in arithmetic operations");
        }
    }

    /* renamed from: case, reason: not valid java name */
    public int m35401case(Cgoto cgoto) {
        m35400new(cgoto);
        return this.f32007do.compareTo(cgoto.f32007do);
    }

    /* renamed from: catch, reason: not valid java name */
    public int m35402catch() {
        return this.f32008if;
    }

    /* renamed from: class, reason: not valid java name */
    public int m35403class() {
        return m35415this().intValue();
    }

    /* renamed from: const, reason: not valid java name */
    public long m35404const() {
        return m35415this().longValue();
    }

    /* renamed from: do, reason: not valid java name */
    public Cgoto m35405do(BigInteger bigInteger) {
        return new Cgoto(this.f32007do.add(bigInteger.shiftLeft(this.f32008if)), this.f32008if);
    }

    /* renamed from: else, reason: not valid java name */
    public Cgoto m35406else(BigInteger bigInteger) {
        return new Cgoto(this.f32007do.divide(bigInteger), this.f32008if);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Cgoto)) {
            return false;
        }
        Cgoto cgoto = (Cgoto) obj;
        return this.f32007do.equals(cgoto.f32007do) && this.f32008if == cgoto.f32008if;
    }

    /* renamed from: final, reason: not valid java name */
    public Cgoto m35407final(BigInteger bigInteger) {
        return new Cgoto(this.f32007do.multiply(bigInteger), this.f32008if);
    }

    /* renamed from: for, reason: not valid java name */
    public Cgoto m35408for(int i) {
        if (i < 0) {
            throw new IllegalArgumentException("scale may not be negative");
        }
        int i2 = this.f32008if;
        return i == i2 ? this : new Cgoto(this.f32007do.shiftLeft(i - i2), i);
    }

    /* renamed from: goto, reason: not valid java name */
    public Cgoto m35409goto(Cgoto cgoto) {
        m35400new(cgoto);
        return new Cgoto(this.f32007do.shiftLeft(this.f32008if).divide(cgoto.f32007do), this.f32008if);
    }

    public int hashCode() {
        return this.f32007do.hashCode() ^ this.f32008if;
    }

    /* renamed from: if, reason: not valid java name */
    public Cgoto m35410if(Cgoto cgoto) {
        m35400new(cgoto);
        return new Cgoto(this.f32007do.add(cgoto.f32007do), this.f32008if);
    }

    /* renamed from: import, reason: not valid java name */
    public Cgoto m35411import(int i) {
        return new Cgoto(this.f32007do.shiftLeft(i), this.f32008if);
    }

    /* renamed from: native, reason: not valid java name */
    public Cgoto m35412native(BigInteger bigInteger) {
        return new Cgoto(this.f32007do.subtract(bigInteger.shiftLeft(this.f32008if)), this.f32008if);
    }

    /* renamed from: public, reason: not valid java name */
    public Cgoto m35413public(Cgoto cgoto) {
        return m35410if(cgoto.m35416throw());
    }

    /* renamed from: super, reason: not valid java name */
    public Cgoto m35414super(Cgoto cgoto) {
        m35400new(cgoto);
        BigInteger bigIntegerMultiply = this.f32007do.multiply(cgoto.f32007do);
        int i = this.f32008if;
        return new Cgoto(bigIntegerMultiply, i + i);
    }

    /* renamed from: this, reason: not valid java name */
    public BigInteger m35415this() {
        return this.f32007do.shiftRight(this.f32008if);
    }

    /* renamed from: throw, reason: not valid java name */
    public Cgoto m35416throw() {
        return new Cgoto(this.f32007do.negate(), this.f32008if);
    }

    public String toString() {
        if (this.f32008if == 0) {
            return this.f32007do.toString();
        }
        BigInteger bigIntegerM35415this = m35415this();
        BigInteger bigIntegerSubtract = this.f32007do.subtract(bigIntegerM35415this.shiftLeft(this.f32008if));
        if (this.f32007do.signum() == -1) {
            bigIntegerSubtract = ECConstants.ONE.shiftLeft(this.f32008if).subtract(bigIntegerSubtract);
        }
        if (bigIntegerM35415this.signum() == -1 && !bigIntegerSubtract.equals(ECConstants.ZERO)) {
            bigIntegerM35415this = bigIntegerM35415this.add(ECConstants.ONE);
        }
        String string = bigIntegerM35415this.toString();
        char[] cArr = new char[this.f32008if];
        String string2 = bigIntegerSubtract.toString(2);
        int length = string2.length();
        int i = this.f32008if - length;
        for (int i2 = 0; i2 < i; i2++) {
            cArr[i2] = '0';
        }
        for (int i3 = 0; i3 < length; i3++) {
            cArr[i + i3] = string2.charAt(i3);
        }
        String str = new String(cArr);
        StringBuffer stringBuffer = new StringBuffer(string);
        stringBuffer.append(".");
        stringBuffer.append(str);
        return stringBuffer.toString();
    }

    /* renamed from: try, reason: not valid java name */
    public int m35417try(BigInteger bigInteger) {
        return this.f32007do.compareTo(bigInteger.shiftLeft(this.f32008if));
    }

    /* renamed from: while, reason: not valid java name */
    public BigInteger m35418while() {
        return m35410if(new Cgoto(ECConstants.ONE, 1).m35408for(this.f32008if)).m35415this();
    }
}
