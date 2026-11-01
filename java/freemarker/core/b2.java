package freemarker.core;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
class b2 {

    /* renamed from: do, reason: not valid java name */
    public static final String f23510do = "false";

    /* renamed from: if, reason: not valid java name */
    public static final String f23511if = "true";

    /* renamed from: freemarker.core.b2$do, reason: invalid class name */
    public static class Cdo implements Comparator {
        @Override // java.util.Comparator
        public int compare(Object obj, Object obj2) {
            Map.Entry entry = (Map.Entry) obj;
            h0 h0Var = (h0) entry.getValue();
            Map.Entry entry2 = (Map.Entry) obj2;
            h0 h0Var2 = (h0) entry2.getValue();
            int i = h0Var.f23822for - h0Var2.f23822for;
            if (i != 0) {
                return i;
            }
            int i2 = h0Var.f23823if - h0Var2.f23823if;
            if (i2 != 0) {
                return i2;
            }
            if (entry == entry2) {
                return 0;
            }
            return ((String) entry.getKey()).compareTo((String) entry.getKey());
        }
    }

    private b2() {
    }

    /* renamed from: do, reason: not valid java name */
    public static h0 m27825do(h0 h0Var) {
        while (h0Var instanceof g3) {
            h0Var = ((g3) h0Var).d();
        }
        return h0Var;
    }

    /* renamed from: if, reason: not valid java name */
    public static List m27826if(Map map) {
        ArrayList arrayList = new ArrayList(map.entrySet());
        Collections.sort(arrayList, new Cdo());
        return arrayList;
    }
}
