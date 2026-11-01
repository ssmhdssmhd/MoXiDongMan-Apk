package org.bouncycastle.math.ec;

import android.support.v4.e01;
import android.support.v4.q21;
import android.support.v4.q3;
import java.math.BigInteger;
import java.util.Random;

/* renamed from: org.bouncycastle.math.ec.for, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cfor implements ECConstants {

    /* renamed from: org.bouncycastle.math.ec.for$do, reason: invalid class name */
    public static abstract class Cdo extends Cfor {
        /* renamed from: switch, reason: not valid java name */
        public Cfor m35380switch() {
            int iMo332else = mo332else();
            if ((iMo332else & 1) == 0) {
                throw new IllegalStateException("Half-trace only defined for odd m");
            }
            Cfor cforMo331do = this;
            Cfor cforMo650native = cforMo331do;
            for (int i = 2; i < iMo332else; i += 2) {
                cforMo650native = cforMo650native.mo650native(2);
                cforMo331do = cforMo331do.mo331do(cforMo650native);
            }
            return cforMo331do;
        }

        /* renamed from: throws */
        public int mo653throws() {
            int iMo332else = mo332else();
            Cfor cforMo331do = this;
            Cfor cforMo342throw = cforMo331do;
            for (int i = 1; i < iMo332else; i++) {
                cforMo342throw = cforMo342throw.mo342throw();
                cforMo331do = cforMo331do.mo331do(cforMo342throw);
            }
            if (cforMo331do.mo328break()) {
                return 0;
            }
            if (cforMo331do.mo341this()) {
                return 1;
            }
            throw new IllegalStateException("Internal error in trace calculation");
        }
    }

    /* renamed from: org.bouncycastle.math.ec.for$for, reason: invalid class name and collision with other inner class name */
    public static class C0461for extends Cdo {

        /* renamed from: case, reason: not valid java name */
        public static final int f31996case = 2;

        /* renamed from: else, reason: not valid java name */
        public static final int f31997else = 3;

        /* renamed from: try, reason: not valid java name */
        public static final int f31998try = 1;

        /* renamed from: do, reason: not valid java name */
        private int f31999do;

        /* renamed from: for, reason: not valid java name */
        private int[] f32000for;

        /* renamed from: if, reason: not valid java name */
        private int f32001if;

        /* renamed from: new, reason: not valid java name */
        public Ccase f32002new;

        public C0461for(int i, int i2, int i3, int i4, BigInteger bigInteger) {
            if (bigInteger == null || bigInteger.signum() < 0 || bigInteger.bitLength() > i) {
                throw new IllegalArgumentException("x value invalid in F2m field element");
            }
            if (i3 == 0 && i4 == 0) {
                this.f31999do = 2;
                this.f32000for = new int[]{i2};
            } else {
                if (i3 >= i4) {
                    throw new IllegalArgumentException("k2 must be smaller than k3");
                }
                if (i3 <= 0) {
                    throw new IllegalArgumentException("k2 must be larger than 0");
                }
                this.f31999do = 3;
                this.f32000for = new int[]{i2, i3, i4};
            }
            this.f32001if = i;
            this.f32002new = new Ccase(bigInteger);
        }

        public C0461for(int i, int[] iArr, Ccase ccase) {
            this.f32001if = i;
            this.f31999do = iArr.length == 1 ? 2 : 3;
            this.f32000for = iArr;
            this.f32002new = ccase;
        }

        /* renamed from: default, reason: not valid java name */
        public static void m35381default(Cfor cfor, Cfor cfor2) {
            if (!(cfor instanceof C0461for) || !(cfor2 instanceof C0461for)) {
                throw new IllegalArgumentException("Field elements are not both instances of ECFieldElement.F2m");
            }
            C0461for c0461for = (C0461for) cfor;
            C0461for c0461for2 = (C0461for) cfor2;
            if (c0461for.f31999do != c0461for2.f31999do) {
                throw new IllegalArgumentException("One of the F2m field elements has incorrect representation");
            }
            if (c0461for.f32001if != c0461for2.f32001if || !q3.m6374goto(c0461for.f32000for, c0461for2.f32000for)) {
                throw new IllegalArgumentException("Field elements are not elements of the same field F2m");
            }
        }

        /* renamed from: abstract, reason: not valid java name */
        public int m35382abstract() {
            return this.f31999do;
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: break */
        public boolean mo328break() {
            return this.f32002new.m35299interface();
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: case */
        public String mo329case() {
            return "F2m";
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: catch */
        public Cfor mo330catch(Cfor cfor) {
            int i = this.f32001if;
            int[] iArr = this.f32000for;
            return new C0461for(i, iArr, this.f32002new.m35304transient(((C0461for) cfor).f32002new, i, iArr));
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: class */
        public Cfor mo644class(Cfor cfor, Cfor cfor2, Cfor cfor3) {
            return mo645const(cfor, cfor2, cfor3);
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: const */
        public Cfor mo645const(Cfor cfor, Cfor cfor2, Cfor cfor3) {
            Ccase ccase = this.f32002new;
            Ccase ccase2 = ((C0461for) cfor).f32002new;
            Ccase ccase3 = ((C0461for) cfor2).f32002new;
            Ccase ccase4 = ((C0461for) cfor3).f32002new;
            Ccase ccaseC = ccase.c(ccase2, this.f32001if, this.f32000for);
            Ccase ccaseC2 = ccase3.c(ccase4, this.f32001if, this.f32000for);
            if (ccaseC == ccase || ccaseC == ccase2) {
                ccaseC = (Ccase) ccaseC.clone();
            }
            ccaseC.m35294case(ccaseC2, 0);
            ccaseC.e(this.f32001if, this.f32000for);
            return new C0461for(this.f32001if, this.f32000for, ccaseC);
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: do */
        public Cfor mo331do(Cfor cfor) {
            Ccase ccase = (Ccase) this.f32002new.clone();
            ccase.m35294case(((C0461for) cfor).f32002new, 0);
            return new C0461for(this.f32001if, this.f32000for, ccase);
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: else */
        public int mo332else() {
            return this.f32001if;
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof C0461for)) {
                return false;
            }
            C0461for c0461for = (C0461for) obj;
            return this.f32001if == c0461for.f32001if && this.f31999do == c0461for.f31999do && q3.m6374goto(this.f32000for, c0461for.f32000for) && this.f32002new.equals(c0461for.f32002new);
        }

        /* renamed from: extends, reason: not valid java name */
        public int m35383extends() {
            return this.f32000for[0];
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: final */
        public Cfor mo333final() {
            return this;
        }

        /* renamed from: finally, reason: not valid java name */
        public int m35384finally() {
            int[] iArr = this.f32000for;
            if (iArr.length >= 2) {
                return iArr[1];
            }
            return 0;
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: for */
        public int mo35378for() {
            return this.f32002new.m35295catch();
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: goto */
        public Cfor mo334goto() {
            int i = this.f32001if;
            int[] iArr = this.f32000for;
            return new C0461for(i, iArr, this.f32002new.m35302protected(i, iArr));
        }

        public int hashCode() {
            return (this.f32002new.hashCode() ^ this.f32001if) ^ q3.q(this.f32000for);
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: if */
        public Cfor mo335if() {
            return new C0461for(this.f32001if, this.f32000for, this.f32002new.m35301new());
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: import */
        public Cfor mo649import(Cfor cfor, Cfor cfor2) {
            Ccase ccase = this.f32002new;
            Ccase ccase2 = ((C0461for) cfor).f32002new;
            Ccase ccase3 = ((C0461for) cfor2).f32002new;
            Ccase ccaseP = ccase.p(this.f32001if, this.f32000for);
            Ccase ccaseC = ccase2.c(ccase3, this.f32001if, this.f32000for);
            if (ccaseP == ccase) {
                ccaseP = (Ccase) ccaseP.clone();
            }
            ccaseP.m35294case(ccaseC, 0);
            ccaseP.e(this.f32001if, this.f32000for);
            return new C0461for(this.f32001if, this.f32000for, ccaseP);
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: native */
        public Cfor mo650native(int i) {
            if (i < 1) {
                return this;
            }
            int i2 = this.f32001if;
            int[] iArr = this.f32000for;
            return new C0461for(i2, iArr, this.f32002new.b(i, i2, iArr));
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: new */
        public Cfor mo336new(Cfor cfor) {
            return mo330catch(cfor.mo334goto());
        }

        /* renamed from: package, reason: not valid java name */
        public int m35385package() {
            int[] iArr = this.f32000for;
            if (iArr.length >= 3) {
                return iArr[2];
            }
            return 0;
        }

        /* renamed from: private, reason: not valid java name */
        public int m35386private() {
            return this.f32001if;
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: public */
        public Cfor mo337public(Cfor cfor) {
            return mo331do(cfor);
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: return */
        public boolean mo338return() {
            return this.f32002new.s();
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: static */
        public BigInteger mo339static() {
            return this.f32002new.t();
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: super */
        public Cfor mo340super() {
            return (this.f32002new.m35299interface() || this.f32002new.m35305volatile()) ? this : mo650native(this.f32001if - 1);
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: this */
        public boolean mo341this() {
            return this.f32002new.m35305volatile();
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: throw */
        public Cfor mo342throw() {
            int i = this.f32001if;
            int[] iArr = this.f32000for;
            return new C0461for(i, iArr, this.f32002new.a(i, iArr));
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: while */
        public Cfor mo654while(Cfor cfor, Cfor cfor2) {
            return mo649import(cfor, cfor2);
        }
    }

    /* renamed from: org.bouncycastle.math.ec.for$if, reason: invalid class name */
    public static abstract class Cif extends Cfor {
    }

    /* renamed from: org.bouncycastle.math.ec.for$new, reason: invalid class name */
    public static class Cnew extends Cif {

        /* renamed from: do, reason: not valid java name */
        public BigInteger f32003do;

        /* renamed from: for, reason: not valid java name */
        public BigInteger f32004for;

        /* renamed from: if, reason: not valid java name */
        public BigInteger f32005if;

        public Cnew(BigInteger bigInteger, BigInteger bigInteger2) {
            this(bigInteger, m35388switch(bigInteger), bigInteger2);
        }

        public Cnew(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            if (bigInteger3 == null || bigInteger3.signum() < 0 || bigInteger3.compareTo(bigInteger) >= 0) {
                throw new IllegalArgumentException("x value invalid in Fp field element");
            }
            this.f32003do = bigInteger;
            this.f32005if = bigInteger2;
            this.f32004for = bigInteger3;
        }

        /* renamed from: extends, reason: not valid java name */
        private BigInteger[] m35387extends(BigInteger bigInteger, BigInteger bigInteger2, BigInteger bigInteger3) {
            int iBitLength = bigInteger3.bitLength();
            int lowestSetBit = bigInteger3.getLowestSetBit();
            BigInteger bigIntegerM35397strictfp = ECConstants.ONE;
            BigInteger bigIntegerM35398volatile = bigInteger;
            BigInteger bigIntegerM35397strictfp2 = bigIntegerM35397strictfp;
            BigInteger bigIntegerM35398volatile2 = ECConstants.TWO;
            BigInteger bigIntegerM35397strictfp3 = bigIntegerM35397strictfp2;
            for (int i = iBitLength - 1; i >= lowestSetBit + 1; i--) {
                bigIntegerM35397strictfp = m35397strictfp(bigIntegerM35397strictfp, bigIntegerM35397strictfp3);
                if (bigInteger3.testBit(i)) {
                    bigIntegerM35397strictfp3 = m35397strictfp(bigIntegerM35397strictfp, bigInteger2);
                    bigIntegerM35397strictfp2 = m35397strictfp(bigIntegerM35397strictfp2, bigIntegerM35398volatile);
                    bigIntegerM35398volatile2 = m35398volatile(bigIntegerM35398volatile.multiply(bigIntegerM35398volatile2).subtract(bigInteger.multiply(bigIntegerM35397strictfp)));
                    bigIntegerM35398volatile = m35398volatile(bigIntegerM35398volatile.multiply(bigIntegerM35398volatile).subtract(bigIntegerM35397strictfp3.shiftLeft(1)));
                } else {
                    BigInteger bigIntegerM35398volatile3 = m35398volatile(bigIntegerM35397strictfp2.multiply(bigIntegerM35398volatile2).subtract(bigIntegerM35397strictfp));
                    BigInteger bigIntegerM35398volatile4 = m35398volatile(bigIntegerM35398volatile.multiply(bigIntegerM35398volatile2).subtract(bigInteger.multiply(bigIntegerM35397strictfp)));
                    bigIntegerM35398volatile2 = m35398volatile(bigIntegerM35398volatile2.multiply(bigIntegerM35398volatile2).subtract(bigIntegerM35397strictfp.shiftLeft(1)));
                    bigIntegerM35398volatile = bigIntegerM35398volatile4;
                    bigIntegerM35397strictfp2 = bigIntegerM35398volatile3;
                    bigIntegerM35397strictfp3 = bigIntegerM35397strictfp;
                }
            }
            BigInteger bigIntegerM35397strictfp4 = m35397strictfp(bigIntegerM35397strictfp, bigIntegerM35397strictfp3);
            BigInteger bigIntegerM35397strictfp5 = m35397strictfp(bigIntegerM35397strictfp4, bigInteger2);
            BigInteger bigIntegerM35398volatile5 = m35398volatile(bigIntegerM35397strictfp2.multiply(bigIntegerM35398volatile2).subtract(bigIntegerM35397strictfp4));
            BigInteger bigIntegerM35398volatile6 = m35398volatile(bigIntegerM35398volatile.multiply(bigIntegerM35398volatile2).subtract(bigInteger.multiply(bigIntegerM35397strictfp4)));
            BigInteger bigIntegerM35397strictfp6 = m35397strictfp(bigIntegerM35397strictfp4, bigIntegerM35397strictfp5);
            for (int i2 = 1; i2 <= lowestSetBit; i2++) {
                bigIntegerM35398volatile5 = m35397strictfp(bigIntegerM35398volatile5, bigIntegerM35398volatile6);
                bigIntegerM35398volatile6 = m35398volatile(bigIntegerM35398volatile6.multiply(bigIntegerM35398volatile6).subtract(bigIntegerM35397strictfp6.shiftLeft(1)));
                bigIntegerM35397strictfp6 = m35397strictfp(bigIntegerM35397strictfp6, bigIntegerM35397strictfp6);
            }
            return new BigInteger[]{bigIntegerM35398volatile5, bigIntegerM35398volatile6};
        }

        /* renamed from: switch, reason: not valid java name */
        public static BigInteger m35388switch(BigInteger bigInteger) {
            int iBitLength = bigInteger.bitLength();
            if (iBitLength < 96 || bigInteger.shiftRight(iBitLength - 64).longValue() != -1) {
                return null;
            }
            return ECConstants.ONE.shiftLeft(iBitLength).subtract(bigInteger);
        }

        /* renamed from: throws, reason: not valid java name */
        private Cfor m35389throws(Cfor cfor) {
            if (cfor.mo342throw().equals(this)) {
                return cfor;
            }
            return null;
        }

        /* renamed from: abstract, reason: not valid java name */
        public BigInteger m35390abstract(BigInteger bigInteger) {
            if (bigInteger.testBit(0)) {
                bigInteger = this.f32003do.subtract(bigInteger);
            }
            return bigInteger.shiftRight(1);
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: case */
        public String mo329case() {
            return "Fp";
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: catch */
        public Cfor mo330catch(Cfor cfor) {
            return new Cnew(this.f32003do, this.f32005if, m35397strictfp(this.f32004for, cfor.mo339static()));
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: class */
        public Cfor mo644class(Cfor cfor, Cfor cfor2, Cfor cfor3) {
            BigInteger bigInteger = this.f32004for;
            BigInteger bigIntegerMo339static = cfor.mo339static();
            BigInteger bigIntegerMo339static2 = cfor2.mo339static();
            BigInteger bigIntegerMo339static3 = cfor3.mo339static();
            return new Cnew(this.f32003do, this.f32005if, m35398volatile(bigInteger.multiply(bigIntegerMo339static).subtract(bigIntegerMo339static2.multiply(bigIntegerMo339static3))));
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: const */
        public Cfor mo645const(Cfor cfor, Cfor cfor2, Cfor cfor3) {
            BigInteger bigInteger = this.f32004for;
            BigInteger bigIntegerMo339static = cfor.mo339static();
            BigInteger bigIntegerMo339static2 = cfor2.mo339static();
            BigInteger bigIntegerMo339static3 = cfor3.mo339static();
            return new Cnew(this.f32003do, this.f32005if, m35398volatile(bigInteger.multiply(bigIntegerMo339static).add(bigIntegerMo339static2.multiply(bigIntegerMo339static3))));
        }

        /* renamed from: continue, reason: not valid java name */
        public BigInteger m35391continue(BigInteger bigInteger) {
            int iMo332else = mo332else();
            int i = (iMo332else + 31) >> 5;
            int[] iArrM6327continue = q21.m6327continue(iMo332else, this.f32003do);
            int[] iArrM6327continue2 = q21.m6327continue(iMo332else, bigInteger);
            int[] iArrM6351switch = q21.m6351switch(i);
            e01.m1572case(iArrM6327continue, iArrM6327continue2, iArrM6351switch);
            return q21.a0(i, iArrM6351switch);
        }

        /* renamed from: default, reason: not valid java name */
        public BigInteger m35392default() {
            return this.f32003do;
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: do */
        public Cfor mo331do(Cfor cfor) {
            return new Cnew(this.f32003do, this.f32005if, m35393finally(this.f32004for, cfor.mo339static()));
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: else */
        public int mo332else() {
            return this.f32003do.bitLength();
        }

        public boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            if (!(obj instanceof Cnew)) {
                return false;
            }
            Cnew cnew = (Cnew) obj;
            return this.f32003do.equals(cnew.f32003do) && this.f32004for.equals(cnew.f32004for);
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: final */
        public Cfor mo333final() {
            if (this.f32004for.signum() == 0) {
                return this;
            }
            BigInteger bigInteger = this.f32003do;
            return new Cnew(bigInteger, this.f32005if, bigInteger.subtract(this.f32004for));
        }

        /* renamed from: finally, reason: not valid java name */
        public BigInteger m35393finally(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger bigIntegerAdd = bigInteger.add(bigInteger2);
            return bigIntegerAdd.compareTo(this.f32003do) >= 0 ? bigIntegerAdd.subtract(this.f32003do) : bigIntegerAdd;
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: goto */
        public Cfor mo334goto() {
            return new Cnew(this.f32003do, this.f32005if, m35391continue(this.f32004for));
        }

        public int hashCode() {
            return this.f32003do.hashCode() ^ this.f32004for.hashCode();
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: if */
        public Cfor mo335if() {
            BigInteger bigIntegerAdd = this.f32004for.add(ECConstants.ONE);
            if (bigIntegerAdd.compareTo(this.f32003do) == 0) {
                bigIntegerAdd = ECConstants.ZERO;
            }
            return new Cnew(this.f32003do, this.f32005if, bigIntegerAdd);
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: import */
        public Cfor mo649import(Cfor cfor, Cfor cfor2) {
            BigInteger bigInteger = this.f32004for;
            BigInteger bigIntegerMo339static = cfor.mo339static();
            BigInteger bigIntegerMo339static2 = cfor2.mo339static();
            return new Cnew(this.f32003do, this.f32005if, m35398volatile(bigInteger.multiply(bigInteger).add(bigIntegerMo339static.multiply(bigIntegerMo339static2))));
        }

        /* renamed from: interface, reason: not valid java name */
        public BigInteger m35394interface(BigInteger bigInteger, BigInteger bigInteger2) {
            BigInteger bigIntegerSubtract = bigInteger.subtract(bigInteger2);
            return bigIntegerSubtract.signum() < 0 ? bigIntegerSubtract.add(this.f32003do) : bigIntegerSubtract;
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: new */
        public Cfor mo336new(Cfor cfor) {
            return new Cnew(this.f32003do, this.f32005if, m35397strictfp(this.f32004for, m35391continue(cfor.mo339static())));
        }

        /* renamed from: package, reason: not valid java name */
        public BigInteger m35395package(BigInteger bigInteger) {
            BigInteger bigIntegerShiftLeft = bigInteger.shiftLeft(1);
            return bigIntegerShiftLeft.compareTo(this.f32003do) >= 0 ? bigIntegerShiftLeft.subtract(this.f32003do) : bigIntegerShiftLeft;
        }

        /* renamed from: private, reason: not valid java name */
        public BigInteger m35396private(BigInteger bigInteger) {
            if (bigInteger.testBit(0)) {
                bigInteger = this.f32003do.add(bigInteger);
            }
            return bigInteger.shiftRight(1);
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: public */
        public Cfor mo337public(Cfor cfor) {
            return new Cnew(this.f32003do, this.f32005if, m35394interface(this.f32004for, cfor.mo339static()));
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: static */
        public BigInteger mo339static() {
            return this.f32004for;
        }

        /* renamed from: strictfp, reason: not valid java name */
        public BigInteger m35397strictfp(BigInteger bigInteger, BigInteger bigInteger2) {
            return m35398volatile(bigInteger.multiply(bigInteger2));
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: super */
        public Cfor mo340super() {
            if (mo328break() || mo341this()) {
                return this;
            }
            if (!this.f32003do.testBit(0)) {
                throw new RuntimeException("not done yet");
            }
            if (this.f32003do.testBit(1)) {
                BigInteger bigIntegerAdd = this.f32003do.shiftRight(2).add(ECConstants.ONE);
                BigInteger bigInteger = this.f32003do;
                return m35389throws(new Cnew(bigInteger, this.f32005if, this.f32004for.modPow(bigIntegerAdd, bigInteger)));
            }
            if (this.f32003do.testBit(2)) {
                BigInteger bigIntegerModPow = this.f32004for.modPow(this.f32003do.shiftRight(3), this.f32003do);
                BigInteger bigIntegerM35397strictfp = m35397strictfp(bigIntegerModPow, this.f32004for);
                if (m35397strictfp(bigIntegerM35397strictfp, bigIntegerModPow).equals(ECConstants.ONE)) {
                    return m35389throws(new Cnew(this.f32003do, this.f32005if, bigIntegerM35397strictfp));
                }
                return m35389throws(new Cnew(this.f32003do, this.f32005if, m35397strictfp(bigIntegerM35397strictfp, ECConstants.TWO.modPow(this.f32003do.shiftRight(2), this.f32003do))));
            }
            BigInteger bigIntegerShiftRight = this.f32003do.shiftRight(1);
            BigInteger bigIntegerModPow2 = this.f32004for.modPow(bigIntegerShiftRight, this.f32003do);
            BigInteger bigInteger2 = ECConstants.ONE;
            if (!bigIntegerModPow2.equals(bigInteger2)) {
                return null;
            }
            BigInteger bigInteger3 = this.f32004for;
            BigInteger bigIntegerM35395package = m35395package(m35395package(bigInteger3));
            BigInteger bigIntegerAdd2 = bigIntegerShiftRight.add(bigInteger2);
            BigInteger bigIntegerSubtract = this.f32003do.subtract(bigInteger2);
            Random random = new Random();
            while (true) {
                BigInteger bigInteger4 = new BigInteger(this.f32003do.bitLength(), random);
                if (bigInteger4.compareTo(this.f32003do) < 0 && m35398volatile(bigInteger4.multiply(bigInteger4).subtract(bigIntegerM35395package)).modPow(bigIntegerShiftRight, this.f32003do).equals(bigIntegerSubtract)) {
                    BigInteger[] bigIntegerArrM35387extends = m35387extends(bigInteger4, bigInteger3, bigIntegerAdd2);
                    BigInteger bigInteger5 = bigIntegerArrM35387extends[0];
                    BigInteger bigInteger6 = bigIntegerArrM35387extends[1];
                    if (m35397strictfp(bigInteger6, bigInteger6).equals(bigIntegerM35395package)) {
                        return new Cnew(this.f32003do, this.f32005if, m35390abstract(bigInteger6));
                    }
                    if (!bigInteger5.equals(ECConstants.ONE) && !bigInteger5.equals(bigIntegerSubtract)) {
                        return null;
                    }
                }
            }
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: throw */
        public Cfor mo342throw() {
            BigInteger bigInteger = this.f32003do;
            BigInteger bigInteger2 = this.f32005if;
            BigInteger bigInteger3 = this.f32004for;
            return new Cnew(bigInteger, bigInteger2, m35397strictfp(bigInteger3, bigInteger3));
        }

        /* renamed from: volatile, reason: not valid java name */
        public BigInteger m35398volatile(BigInteger bigInteger) {
            if (this.f32005if == null) {
                return bigInteger.mod(this.f32003do);
            }
            boolean z = bigInteger.signum() < 0;
            if (z) {
                bigInteger = bigInteger.abs();
            }
            int iBitLength = this.f32003do.bitLength();
            boolean zEquals = this.f32005if.equals(ECConstants.ONE);
            while (bigInteger.bitLength() > iBitLength + 1) {
                BigInteger bigIntegerShiftRight = bigInteger.shiftRight(iBitLength);
                BigInteger bigIntegerSubtract = bigInteger.subtract(bigIntegerShiftRight.shiftLeft(iBitLength));
                if (!zEquals) {
                    bigIntegerShiftRight = bigIntegerShiftRight.multiply(this.f32005if);
                }
                bigInteger = bigIntegerShiftRight.add(bigIntegerSubtract);
            }
            while (bigInteger.compareTo(this.f32003do) >= 0) {
                bigInteger = bigInteger.subtract(this.f32003do);
            }
            return (!z || bigInteger.signum() == 0) ? bigInteger : this.f32003do.subtract(bigInteger);
        }

        @Override // org.bouncycastle.math.ec.Cfor
        /* renamed from: while */
        public Cfor mo654while(Cfor cfor, Cfor cfor2) {
            BigInteger bigInteger = this.f32004for;
            BigInteger bigIntegerMo339static = cfor.mo339static();
            BigInteger bigIntegerMo339static2 = cfor2.mo339static();
            return new Cnew(this.f32003do, this.f32005if, m35398volatile(bigInteger.multiply(bigInteger).subtract(bigIntegerMo339static.multiply(bigIntegerMo339static2))));
        }
    }

    /* renamed from: break */
    public boolean mo328break() {
        return mo339static().signum() == 0;
    }

    /* renamed from: case */
    public abstract String mo329case();

    /* renamed from: catch */
    public abstract Cfor mo330catch(Cfor cfor);

    /* renamed from: class */
    public Cfor mo644class(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        return mo330catch(cfor).mo337public(cfor2.mo330catch(cfor3));
    }

    /* renamed from: const */
    public Cfor mo645const(Cfor cfor, Cfor cfor2, Cfor cfor3) {
        return mo330catch(cfor).mo331do(cfor2.mo330catch(cfor3));
    }

    /* renamed from: do */
    public abstract Cfor mo331do(Cfor cfor);

    /* renamed from: else */
    public abstract int mo332else();

    /* renamed from: final */
    public abstract Cfor mo333final();

    /* renamed from: for, reason: not valid java name */
    public int mo35378for() {
        return mo339static().bitLength();
    }

    /* renamed from: goto */
    public abstract Cfor mo334goto();

    /* renamed from: if */
    public abstract Cfor mo335if();

    /* renamed from: import */
    public Cfor mo649import(Cfor cfor, Cfor cfor2) {
        return mo342throw().mo331do(cfor.mo330catch(cfor2));
    }

    /* renamed from: native */
    public Cfor mo650native(int i) {
        Cfor cforMo342throw = this;
        for (int i2 = 0; i2 < i; i2++) {
            cforMo342throw = cforMo342throw.mo342throw();
        }
        return cforMo342throw;
    }

    /* renamed from: new */
    public abstract Cfor mo336new(Cfor cfor);

    /* renamed from: public */
    public abstract Cfor mo337public(Cfor cfor);

    /* renamed from: return */
    public boolean mo338return() {
        return mo339static().testBit(0);
    }

    /* renamed from: static */
    public abstract BigInteger mo339static();

    /* renamed from: super */
    public abstract Cfor mo340super();

    /* renamed from: this */
    public boolean mo341this() {
        return mo35378for() == 1;
    }

    /* renamed from: throw */
    public abstract Cfor mo342throw();

    public String toString() {
        return mo339static().toString(16);
    }

    /* renamed from: try, reason: not valid java name */
    public byte[] m35379try() {
        return org.bouncycastle.util.Cdo.m36309do((mo332else() + 7) / 8, mo339static());
    }

    /* renamed from: while */
    public Cfor mo654while(Cfor cfor, Cfor cfor2) {
        return mo342throw().mo337public(cfor.mo330catch(cfor2));
    }
}
