package android.support.v4;

import android.util.ArrayMap;
import java.util.Map;

/* loaded from: classes2.dex */
public class y8 {

    /* renamed from: if, reason: not valid java name */
    private static y8 f8146if;

    /* renamed from: do, reason: not valid java name */
    private Map<String, Object> f8147do = new ArrayMap();

    private y8() {
    }

    /* renamed from: for, reason: not valid java name */
    public static y8 m9768for() {
        if (f8146if == null) {
            synchronized (y8.class) {
                if (f8146if == null) {
                    f8146if = new y8();
                }
            }
        }
        return f8146if;
    }

    /* renamed from: do, reason: not valid java name */
    public void m9769do(String str) {
        this.f8147do.remove(str);
    }

    /* renamed from: if, reason: not valid java name */
    public Object m9770if(String str) {
        return this.f8147do.get(str);
    }

    /* renamed from: new, reason: not valid java name */
    public void m9771new(String str, Object obj) {
        this.f8147do.put(str, obj);
    }
}
