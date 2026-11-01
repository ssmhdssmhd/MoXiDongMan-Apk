package android.support.v4;

import java.io.IOException;
import java.io.Writer;
import org.apache.commons.lang3.Cif;

/* loaded from: classes3.dex */
public class y0 extends rk {

    /* renamed from: do, reason: not valid java name */
    private final rk[] f8067do;

    public y0(rk... rkVarArr) {
        this.f8067do = (rk[]) Cif.m32429protected(rkVarArr);
    }

    @Override // android.support.v4.rk
    /* renamed from: if */
    public int mo2056if(CharSequence charSequence, int i, Writer writer) throws IOException {
        for (rk rkVar : this.f8067do) {
            int iMo2056if = rkVar.mo2056if(charSequence, i, writer);
            if (iMo2056if != 0) {
                return iMo2056if;
            }
        }
        return 0;
    }
}
