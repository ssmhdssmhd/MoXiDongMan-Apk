package android.support.v4;

import java.util.ArrayList;
import java.util.List;
import org.antlr.v4.runtime.atn.Cthis;
import org.antlr.v4.runtime.dfa.Cdo;

/* loaded from: classes3.dex */
public class jc1 {

    /* renamed from: do, reason: not valid java name */
    public final Cthis f3053do;

    public jc1(Cthis cthis) {
        this.f3053do = cthis;
    }

    /* renamed from: break, reason: not valid java name */
    public long m3830break() {
        long j = 0;
        for (ix ixVar : this.f3053do.s()) {
            j += ixVar.f2919for;
        }
        return j;
    }

    /* renamed from: case, reason: not valid java name */
    public long m3831case() {
        long j = 0;
        for (ix ixVar : this.f3053do.s()) {
            j += ixVar.f2923native;
        }
        return j;
    }

    /* renamed from: do, reason: not valid java name */
    public int m3832do() {
        Cdo[] cdoArr = this.f3053do.f28490else;
        int iM3836if = 0;
        for (int i = 0; i < cdoArr.length; i++) {
            iM3836if += m3836if(i);
        }
        return iM3836if;
    }

    /* renamed from: else, reason: not valid java name */
    public long m3833else() {
        long j = 0;
        for (ix ixVar : this.f3053do.s()) {
            j += ixVar.f2920goto;
        }
        return j;
    }

    /* renamed from: for, reason: not valid java name */
    public ix[] m3834for() {
        return this.f3053do.s();
    }

    /* renamed from: goto, reason: not valid java name */
    public long m3835goto() {
        long j = 0;
        for (ix ixVar : this.f3053do.s()) {
            j += ixVar.f2928throw;
        }
        return j;
    }

    /* renamed from: if, reason: not valid java name */
    public int m3836if(int i) {
        return this.f3053do.f28490else[i].f28535do.size();
    }

    /* renamed from: new, reason: not valid java name */
    public List<Integer> m3837new() {
        ix[] ixVarArrS = this.f3053do.s();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < ixVarArrS.length; i++) {
            if (ixVarArrS[i].f2922import > 0) {
                arrayList.add(Integer.valueOf(i));
            }
        }
        return arrayList;
    }

    /* renamed from: this, reason: not valid java name */
    public long m3838this() {
        long j = 0;
        for (ix ixVar : this.f3053do.s()) {
            j += ixVar.f2924new;
        }
        return j;
    }

    /* renamed from: try, reason: not valid java name */
    public long m3839try() {
        ix[] ixVarArrS = this.f3053do.s();
        long j = 0;
        for (int i = 0; i < ixVarArrS.length; i++) {
            j = j + ixVarArrS[i].f2928throw + ixVarArrS[i].f2923native;
        }
        return j;
    }
}
