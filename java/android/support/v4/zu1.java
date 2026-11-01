package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class zu1 extends Cnew.Cfor {
    public zu1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public zu1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public zu1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
        super(cif, cfor, cfor2, cforArr);
        this.f32055try = z;
    }

    @Override // org.bouncycastle.math.ec.Cnew
    public Cnew a(Cnew cnew) {
        return this == cnew ? mo642implements() : m35479throws() ? cnew : cnew.m35479throws() ? mo378synchronized() : this.f32052for.mo328break() ? cnew : mo378synchronized().mo373do(cnew);
    }

    public Cfor b(Cfor cfor, Cfor cfor2, Cfor cfor3, Cfor cfor4) {
        return cfor.mo331do(cfor2).mo342throw().mo337public(cfor3).mo337public(cfor4);
    }

    public Cfor c(Cfor cfor) {
        return d(f(cfor));
    }

    public Cfor d(Cfor cfor) {
        return f(f(cfor));
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: do */
    public Cnew mo373do(Cnew cnew) {
        int[] iArr;
        int[] iArr2;
        int[] iArr3;
        int[] iArr4;
        if (m35479throws()) {
            return cnew;
        }
        if (cnew.m35479throws()) {
            return this;
        }
        if (this == cnew) {
            return mo378synchronized();
        }
        Cif cifM35477this = m35477this();
        yu1 yu1Var = (yu1) this.f32053if;
        yu1 yu1Var2 = (yu1) this.f32052for;
        yu1 yu1Var3 = (yu1) cnew.m35467import();
        yu1 yu1Var4 = (yu1) cnew.mo375native();
        yu1 yu1Var5 = (yu1) this.f32054new[0];
        yu1 yu1Var6 = (yu1) cnew.mo2405public(0);
        int[] iArrM6351switch = q21.m6351switch(17);
        int[] iArrM6351switch2 = q21.m6351switch(17);
        int[] iArrM6351switch3 = q21.m6351switch(17);
        int[] iArrM6351switch4 = q21.m6351switch(17);
        boolean zMo341this = yu1Var5.mo341this();
        if (zMo341this) {
            iArr = yu1Var3.f8331do;
            iArr2 = yu1Var4.f8331do;
        } else {
            xu1.m9571catch(yu1Var5.f8331do, iArrM6351switch3);
            xu1.m9575else(iArrM6351switch3, yu1Var3.f8331do, iArrM6351switch2);
            xu1.m9575else(iArrM6351switch3, yu1Var5.f8331do, iArrM6351switch3);
            xu1.m9575else(iArrM6351switch3, yu1Var4.f8331do, iArrM6351switch3);
            iArr = iArrM6351switch2;
            iArr2 = iArrM6351switch3;
        }
        boolean zMo341this2 = yu1Var6.mo341this();
        if (zMo341this2) {
            iArr3 = yu1Var.f8331do;
            iArr4 = yu1Var2.f8331do;
        } else {
            xu1.m9571catch(yu1Var6.f8331do, iArrM6351switch4);
            xu1.m9575else(iArrM6351switch4, yu1Var.f8331do, iArrM6351switch);
            xu1.m9575else(iArrM6351switch4, yu1Var6.f8331do, iArrM6351switch4);
            xu1.m9575else(iArrM6351switch4, yu1Var2.f8331do, iArrM6351switch4);
            iArr3 = iArrM6351switch;
            iArr4 = iArrM6351switch4;
        }
        int[] iArrM6351switch5 = q21.m6351switch(17);
        xu1.m9573const(iArr3, iArr, iArrM6351switch5);
        xu1.m9573const(iArr4, iArr2, iArrM6351switch2);
        if (q21.m6352synchronized(17, iArrM6351switch5)) {
            return q21.m6352synchronized(17, iArrM6351switch2) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        xu1.m9571catch(iArrM6351switch5, iArrM6351switch3);
        int[] iArrM6351switch6 = q21.m6351switch(17);
        xu1.m9575else(iArrM6351switch3, iArrM6351switch5, iArrM6351switch6);
        xu1.m9575else(iArrM6351switch3, iArr3, iArrM6351switch3);
        xu1.m9575else(iArr4, iArrM6351switch6, iArrM6351switch);
        yu1 yu1Var7 = new yu1(iArrM6351switch4);
        xu1.m9571catch(iArrM6351switch2, yu1Var7.f8331do);
        int[] iArr5 = yu1Var7.f8331do;
        xu1.m9574do(iArr5, iArrM6351switch6, iArr5);
        int[] iArr6 = yu1Var7.f8331do;
        xu1.m9573const(iArr6, iArrM6351switch3, iArr6);
        int[] iArr7 = yu1Var7.f8331do;
        xu1.m9573const(iArr7, iArrM6351switch3, iArr7);
        yu1 yu1Var8 = new yu1(iArrM6351switch6);
        xu1.m9573const(iArrM6351switch3, yu1Var7.f8331do, yu1Var8.f8331do);
        xu1.m9575else(yu1Var8.f8331do, iArrM6351switch2, iArrM6351switch2);
        xu1.m9573const(iArrM6351switch2, iArrM6351switch, yu1Var8.f8331do);
        yu1 yu1Var9 = new yu1(iArrM6351switch5);
        if (!zMo341this) {
            int[] iArr8 = yu1Var9.f8331do;
            xu1.m9575else(iArr8, yu1Var5.f8331do, iArr8);
        }
        if (!zMo341this2) {
            int[] iArr9 = yu1Var9.f8331do;
            xu1.m9575else(iArr9, yu1Var6.f8331do, iArr9);
        }
        return new zu1(cifM35477this, yu1Var7, yu1Var8, new Cfor[]{yu1Var9}, this.f32055try);
    }

    public Cfor e(Cfor cfor) {
        return f(cfor).mo331do(cfor);
    }

    public Cfor f(Cfor cfor) {
        return cfor.mo331do(cfor);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: implements */
    public Cnew mo642implements() {
        return (m35479throws() || this.f32052for.mo328break()) ? this : mo378synchronized().mo373do(this);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new zu1(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        return m35479throws() ? this : new zu1(this.f32051do, this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        yu1 yu1Var = (yu1) this.f32052for;
        if (yu1Var.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        yu1 yu1Var2 = (yu1) this.f32053if;
        yu1 yu1Var3 = (yu1) this.f32054new[0];
        int[] iArrM6351switch = q21.m6351switch(17);
        int[] iArrM6351switch2 = q21.m6351switch(17);
        int[] iArrM6351switch3 = q21.m6351switch(17);
        xu1.m9571catch(yu1Var.f8331do, iArrM6351switch3);
        int[] iArrM6351switch4 = q21.m6351switch(17);
        xu1.m9571catch(iArrM6351switch3, iArrM6351switch4);
        boolean zMo341this = yu1Var3.mo341this();
        int[] iArr = yu1Var3.f8331do;
        if (!zMo341this) {
            xu1.m9571catch(iArr, iArrM6351switch2);
            iArr = iArrM6351switch2;
        }
        xu1.m9573const(yu1Var2.f8331do, iArr, iArrM6351switch);
        xu1.m9574do(yu1Var2.f8331do, iArr, iArrM6351switch2);
        xu1.m9575else(iArrM6351switch2, iArrM6351switch, iArrM6351switch2);
        q21.m6330else(17, iArrM6351switch2, iArrM6351switch2, iArrM6351switch2);
        xu1.m9569break(iArrM6351switch2);
        xu1.m9575else(iArrM6351switch3, yu1Var2.f8331do, iArrM6351switch3);
        q21.y(17, iArrM6351switch3, 2, 0);
        xu1.m9569break(iArrM6351switch3);
        q21.B(17, iArrM6351switch4, 3, 0, iArrM6351switch);
        xu1.m9569break(iArrM6351switch);
        yu1 yu1Var4 = new yu1(iArrM6351switch4);
        xu1.m9571catch(iArrM6351switch2, yu1Var4.f8331do);
        int[] iArr2 = yu1Var4.f8331do;
        xu1.m9573const(iArr2, iArrM6351switch3, iArr2);
        int[] iArr3 = yu1Var4.f8331do;
        xu1.m9573const(iArr3, iArrM6351switch3, iArr3);
        yu1 yu1Var5 = new yu1(iArrM6351switch3);
        xu1.m9573const(iArrM6351switch3, yu1Var4.f8331do, yu1Var5.f8331do);
        int[] iArr4 = yu1Var5.f8331do;
        xu1.m9575else(iArr4, iArrM6351switch2, iArr4);
        int[] iArr5 = yu1Var5.f8331do;
        xu1.m9573const(iArr5, iArrM6351switch, iArr5);
        yu1 yu1Var6 = new yu1(iArrM6351switch2);
        xu1.m9576final(yu1Var.f8331do, yu1Var6.f8331do);
        if (!zMo341this) {
            int[] iArr6 = yu1Var6.f8331do;
            xu1.m9575else(iArr6, yu1Var3.f8331do, iArr6);
        }
        return new zu1(cifM35477this, yu1Var4, yu1Var5, new Cfor[]{yu1Var6}, this.f32055try);
    }
}
