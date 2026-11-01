package android.support.v4;

import org.bouncycastle.math.ec.Cfor;
import org.bouncycastle.math.ec.Cif;
import org.bouncycastle.math.ec.Cnew;

/* loaded from: classes3.dex */
public class wu1 extends Cnew.Cfor {
    public wu1(Cif cif, Cfor cfor, Cfor cfor2) {
        this(cif, cfor, cfor2, false);
    }

    public wu1(Cif cif, Cfor cfor, Cfor cfor2, boolean z) {
        super(cif, cfor, cfor2);
        if ((cfor == null) != (cfor2 == null)) {
            throw new IllegalArgumentException("Exactly one of the field elements is null");
        }
        this.f32055try = z;
    }

    public wu1(Cif cif, Cfor cfor, Cfor cfor2, Cfor[] cforArr, boolean z) {
        super(cif, cfor, cfor2, cforArr);
        this.f32055try = z;
    }

    @Override // org.bouncycastle.math.ec.Cnew
    public Cnew a(Cnew cnew) {
        return this == cnew ? mo642implements() : m35479throws() ? cnew : cnew.m35479throws() ? mo378synchronized() : this.f32052for.mo328break() ? cnew : mo378synchronized().mo373do(cnew);
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
        vu1 vu1Var = (vu1) this.f32053if;
        vu1 vu1Var2 = (vu1) this.f32052for;
        vu1 vu1Var3 = (vu1) cnew.m35467import();
        vu1 vu1Var4 = (vu1) cnew.mo375native();
        vu1 vu1Var5 = (vu1) this.f32054new[0];
        vu1 vu1Var6 = (vu1) cnew.mo2405public(0);
        int[] iArrM6351switch = q21.m6351switch(24);
        int[] iArrM6351switch2 = q21.m6351switch(24);
        int[] iArrM6351switch3 = q21.m6351switch(12);
        int[] iArrM6351switch4 = q21.m6351switch(12);
        boolean zMo341this = vu1Var5.mo341this();
        if (zMo341this) {
            iArr = vu1Var3.f7347do;
            iArr2 = vu1Var4.f7347do;
        } else {
            uu1.m8644catch(vu1Var5.f7347do, iArrM6351switch3);
            uu1.m8648else(iArrM6351switch3, vu1Var3.f7347do, iArrM6351switch2);
            uu1.m8648else(iArrM6351switch3, vu1Var5.f7347do, iArrM6351switch3);
            uu1.m8648else(iArrM6351switch3, vu1Var4.f7347do, iArrM6351switch3);
            iArr = iArrM6351switch2;
            iArr2 = iArrM6351switch3;
        }
        boolean zMo341this2 = vu1Var6.mo341this();
        if (zMo341this2) {
            iArr3 = vu1Var.f7347do;
            iArr4 = vu1Var2.f7347do;
        } else {
            uu1.m8644catch(vu1Var6.f7347do, iArrM6351switch4);
            uu1.m8648else(iArrM6351switch4, vu1Var.f7347do, iArrM6351switch);
            uu1.m8648else(iArrM6351switch4, vu1Var6.f7347do, iArrM6351switch4);
            uu1.m8648else(iArrM6351switch4, vu1Var2.f7347do, iArrM6351switch4);
            iArr3 = iArrM6351switch;
            iArr4 = iArrM6351switch4;
        }
        int[] iArrM6351switch5 = q21.m6351switch(12);
        uu1.m8649final(iArr3, iArr, iArrM6351switch5);
        int[] iArrM6351switch6 = q21.m6351switch(12);
        uu1.m8649final(iArr4, iArr2, iArrM6351switch6);
        if (q21.m6352synchronized(12, iArrM6351switch5)) {
            return q21.m6352synchronized(12, iArrM6351switch6) ? mo378synchronized() : cifM35477this.mo35335throws();
        }
        uu1.m8644catch(iArrM6351switch5, iArrM6351switch3);
        int[] iArrM6351switch7 = q21.m6351switch(12);
        uu1.m8648else(iArrM6351switch3, iArrM6351switch5, iArrM6351switch7);
        uu1.m8648else(iArrM6351switch3, iArr3, iArrM6351switch3);
        uu1.m8651goto(iArrM6351switch7, iArrM6351switch7);
        m21.m4823do(iArr4, iArrM6351switch7, iArrM6351switch);
        uu1.m8642break(q21.m6330else(12, iArrM6351switch3, iArrM6351switch3, iArrM6351switch7), iArrM6351switch7);
        vu1 vu1Var7 = new vu1(iArrM6351switch4);
        uu1.m8644catch(iArrM6351switch6, vu1Var7.f7347do);
        int[] iArr5 = vu1Var7.f7347do;
        uu1.m8649final(iArr5, iArrM6351switch7, iArr5);
        vu1 vu1Var8 = new vu1(iArrM6351switch7);
        uu1.m8649final(iArrM6351switch3, vu1Var7.f7347do, vu1Var8.f7347do);
        m21.m4823do(vu1Var8.f7347do, iArrM6351switch6, iArrM6351switch2);
        uu1.m8652if(iArrM6351switch, iArrM6351switch2, iArrM6351switch);
        uu1.m8655this(iArrM6351switch, vu1Var8.f7347do);
        vu1 vu1Var9 = new vu1(iArrM6351switch5);
        if (!zMo341this) {
            int[] iArr6 = vu1Var9.f7347do;
            uu1.m8648else(iArr6, vu1Var5.f7347do, iArr6);
        }
        if (!zMo341this2) {
            int[] iArr7 = vu1Var9.f7347do;
            uu1.m8648else(iArr7, vu1Var6.f7347do, iArr7);
        }
        return new wu1(cifM35477this, vu1Var7, vu1Var8, new Cfor[]{vu1Var9}, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: implements */
    public Cnew mo642implements() {
        return (m35479throws() || this.f32052for.mo328break()) ? this : mo378synchronized().mo373do(this);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: new */
    public Cnew mo376new() {
        return new wu1(null, m35456case(), m35462else());
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: private */
    public Cnew mo377private() {
        return m35479throws() ? this : new wu1(this.f32051do, this.f32053if, this.f32052for.mo333final(), this.f32054new, this.f32055try);
    }

    @Override // org.bouncycastle.math.ec.Cnew
    /* renamed from: synchronized */
    public Cnew mo378synchronized() {
        if (m35479throws()) {
            return this;
        }
        Cif cifM35477this = m35477this();
        vu1 vu1Var = (vu1) this.f32052for;
        if (vu1Var.mo328break()) {
            return cifM35477this.mo35335throws();
        }
        vu1 vu1Var2 = (vu1) this.f32053if;
        vu1 vu1Var3 = (vu1) this.f32054new[0];
        int[] iArrM6351switch = q21.m6351switch(12);
        int[] iArrM6351switch2 = q21.m6351switch(12);
        int[] iArrM6351switch3 = q21.m6351switch(12);
        uu1.m8644catch(vu1Var.f7347do, iArrM6351switch3);
        int[] iArrM6351switch4 = q21.m6351switch(12);
        uu1.m8644catch(iArrM6351switch3, iArrM6351switch4);
        boolean zMo341this = vu1Var3.mo341this();
        int[] iArr = vu1Var3.f7347do;
        if (!zMo341this) {
            uu1.m8644catch(iArr, iArrM6351switch2);
            iArr = iArrM6351switch2;
        }
        uu1.m8649final(vu1Var2.f7347do, iArr, iArrM6351switch);
        uu1.m8647do(vu1Var2.f7347do, iArr, iArrM6351switch2);
        uu1.m8648else(iArrM6351switch2, iArrM6351switch, iArrM6351switch2);
        uu1.m8642break(q21.m6330else(12, iArrM6351switch2, iArrM6351switch2, iArrM6351switch2), iArrM6351switch2);
        uu1.m8648else(iArrM6351switch3, vu1Var2.f7347do, iArrM6351switch3);
        uu1.m8642break(q21.y(12, iArrM6351switch3, 2, 0), iArrM6351switch3);
        uu1.m8642break(q21.B(12, iArrM6351switch4, 3, 0, iArrM6351switch), iArrM6351switch);
        vu1 vu1Var4 = new vu1(iArrM6351switch4);
        uu1.m8644catch(iArrM6351switch2, vu1Var4.f7347do);
        int[] iArr2 = vu1Var4.f7347do;
        uu1.m8649final(iArr2, iArrM6351switch3, iArr2);
        int[] iArr3 = vu1Var4.f7347do;
        uu1.m8649final(iArr3, iArrM6351switch3, iArr3);
        vu1 vu1Var5 = new vu1(iArrM6351switch3);
        uu1.m8649final(iArrM6351switch3, vu1Var4.f7347do, vu1Var5.f7347do);
        int[] iArr4 = vu1Var5.f7347do;
        uu1.m8648else(iArr4, iArrM6351switch2, iArr4);
        int[] iArr5 = vu1Var5.f7347do;
        uu1.m8649final(iArr5, iArrM6351switch, iArr5);
        vu1 vu1Var6 = new vu1(iArrM6351switch2);
        uu1.m8656throw(vu1Var.f7347do, vu1Var6.f7347do);
        if (!zMo341this) {
            int[] iArr6 = vu1Var6.f7347do;
            uu1.m8648else(iArr6, vu1Var3.f7347do, iArr6);
        }
        return new wu1(cifM35477this, vu1Var4, vu1Var5, new Cfor[]{vu1Var6}, this.f32055try);
    }
}
