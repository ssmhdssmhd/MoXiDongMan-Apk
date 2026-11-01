package android.support.v4;

import com.google.zxing.Cdo;
import com.google.zxing.oned.Cdefault;

/* loaded from: classes2.dex */
public final class pf1 extends xn1 {
    @Override // android.support.v4.xn1
    /* renamed from: while, reason: not valid java name and merged with bridge method [inline-methods] */
    public of1 mo243catch(wn1 wn1Var) {
        Cdo cdoM9248if = wn1Var.m9248if();
        if (cdoM9248if != Cdo.UPC_A && cdoM9248if != Cdo.UPC_E && cdoM9248if != Cdo.EAN_8 && cdoM9248if != Cdo.EAN_13) {
            return null;
        }
        String strM9548for = xn1.m9548for(wn1Var);
        if (xn1.m9551new(strM9548for, strM9548for.length())) {
            return new of1(strM9548for, (cdoM9248if == Cdo.UPC_E && strM9548for.length() == 8) ? Cdefault.m22001while(strM9548for) : strM9548for);
        }
        return null;
    }
}
