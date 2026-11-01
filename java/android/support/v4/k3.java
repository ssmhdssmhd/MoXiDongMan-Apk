package android.support.v4;

import java.lang.reflect.Array;
import java.util.Collections;
import java.util.Iterator;
import java.util.Map;

@ki0
@o8
/* loaded from: classes2.dex */
public final class k3 {

    /* renamed from: if, reason: not valid java name */
    private static final char[][] f3255if = (char[][]) Array.newInstance((Class<?>) char.class, 0, 0);

    /* renamed from: do, reason: not valid java name */
    private final char[][] f3256do;

    private k3(char[][] cArr) {
        this.f3256do = cArr;
    }

    /* renamed from: do, reason: not valid java name */
    public static k3 m4218do(Map<Character, String> map) {
        return new k3(m4219if(map));
    }

    @af2
    /* renamed from: if, reason: not valid java name */
    public static char[][] m4219if(Map<Character, String> map) {
        af1.m205continue(map);
        if (map.isEmpty()) {
            return f3255if;
        }
        char[][] cArr = new char[((Character) Collections.max(map.keySet())).charValue() + 1][];
        Iterator<Character> it = map.keySet().iterator();
        while (it.hasNext()) {
            char cCharValue = it.next().charValue();
            cArr[cCharValue] = map.get(Character.valueOf(cCharValue)).toCharArray();
        }
        return cArr;
    }

    /* renamed from: for, reason: not valid java name */
    public char[][] m4220for() {
        return this.f3256do;
    }
}
