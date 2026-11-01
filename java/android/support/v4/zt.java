package android.support.v4;

import java.util.Arrays;
import org.antlr.v4.runtime.Vocabulary;
import org.antlr.v4.runtime.dfa.Cdo;

/* loaded from: classes3.dex */
public class zt {

    /* renamed from: do, reason: not valid java name */
    private final Cdo f8638do;

    /* renamed from: if, reason: not valid java name */
    private final Vocabulary f8639if;

    @Deprecated
    public zt(Cdo cdo, String[] strArr) {
        this(cdo, cf2.m902do(strArr));
    }

    /* renamed from: do */
    public String mo5363do(int i) {
        return this.f8639if.getDisplayName(i - 1);
    }

    /* renamed from: if, reason: not valid java name */
    public String m10270if(au auVar) {
        int i = auVar.f236do;
        StringBuilder sb = new StringBuilder();
        sb.append(auVar.f241new ? ":" : "");
        sb.append(com.umeng.analytics.pro.ak.aB);
        sb.append(i);
        sb.append(auVar.f237else ? "^" : "");
        String string = sb.toString();
        if (!auVar.f241new) {
            return string;
        }
        if (auVar.f239goto != null) {
            return string + "=>" + Arrays.toString(auVar.f239goto);
        }
        return string + "=>" + auVar.f242try;
    }

    public String toString() {
        if (this.f8638do.f28537if == null) {
            return null;
        }
        StringBuilder sb = new StringBuilder();
        for (au auVar : this.f8638do.m31973if()) {
            au[] auVarArr = auVar.f238for;
            int length = auVarArr != null ? auVarArr.length : 0;
            for (int i = 0; i < length; i++) {
                au auVar2 = auVar.f238for[i];
                if (auVar2 != null && auVar2.f236do != Integer.MAX_VALUE) {
                    sb.append(m10270if(auVar));
                    String strMo5363do = mo5363do(i);
                    sb.append("-");
                    sb.append(strMo5363do);
                    sb.append("->");
                    sb.append(m10270if(auVar2));
                    sb.append('\n');
                }
            }
        }
        String string = sb.toString();
        if (string.length() == 0) {
            return null;
        }
        return string;
    }

    public zt(Cdo cdo, Vocabulary vocabulary) {
        this.f8638do = cdo;
        this.f8639if = vocabulary;
    }
}
