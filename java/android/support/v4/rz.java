package android.support.v4;

import java.util.BitSet;
import java.util.Iterator;
import org.antlr.v4.runtime.Cgoto;
import org.antlr.v4.runtime.dfa.Cdo;

/* loaded from: classes3.dex */
public class rz extends f7 {

    /* renamed from: do, reason: not valid java name */
    public final boolean f5966do;

    public rz() {
        this(true);
    }

    /* renamed from: do, reason: not valid java name */
    public BitSet m7208do(BitSet bitSet, Cthrows cthrows) {
        if (bitSet != null) {
            return bitSet;
        }
        BitSet bitSet2 = new BitSet();
        Iterator<Cswitch> it = cthrows.iterator();
        while (it.hasNext()) {
            bitSet2.set(it.next().f6325if);
        }
        return bitSet2;
    }

    /* renamed from: if, reason: not valid java name */
    public String m7209if(Cgoto cgoto, Cdo cdo) {
        int i = cdo.f28536for;
        int i2 = cdo.f28538new.f1853for;
        String[] strArrMo2318class = cgoto.mo2318class();
        if (i2 < 0 || i2 >= strArrMo2318class.length) {
            return String.valueOf(i);
        }
        String str = strArrMo2318class[i2];
        return (str == null || str.isEmpty()) ? String.valueOf(i) : String.format("%d (%s)", Integer.valueOf(i), str);
    }

    @Override // android.support.v4.f7, org.antlr.v4.runtime.ANTLRErrorListener
    public void reportAmbiguity(Cgoto cgoto, Cdo cdo, int i, int i2, boolean z, BitSet bitSet, Cthrows cthrows) {
        if (!this.f5966do || z) {
            cgoto.z(String.format("reportAmbiguity d=%s: ambigAlts=%s, input='%s'", m7209if(cgoto, cdo), m7208do(bitSet, cthrows), cgoto.r().getText(rn0.m7059case(i, i2))));
        }
    }

    @Override // android.support.v4.f7, org.antlr.v4.runtime.ANTLRErrorListener
    public void reportAttemptingFullContext(Cgoto cgoto, Cdo cdo, int i, int i2, BitSet bitSet, Cthrows cthrows) {
        cgoto.z(String.format("reportAttemptingFullContext d=%s, input='%s'", m7209if(cgoto, cdo), cgoto.r().getText(rn0.m7059case(i, i2))));
    }

    @Override // android.support.v4.f7, org.antlr.v4.runtime.ANTLRErrorListener
    public void reportContextSensitivity(Cgoto cgoto, Cdo cdo, int i, int i2, int i3, Cthrows cthrows) {
        cgoto.z(String.format("reportContextSensitivity d=%s, input='%s'", m7209if(cgoto, cdo), cgoto.r().getText(rn0.m7059case(i, i2))));
    }

    public rz(boolean z) {
        this.f5966do = z;
    }
}
