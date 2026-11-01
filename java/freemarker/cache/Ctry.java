package freemarker.cache;

import java.io.IOException;

/* renamed from: freemarker.cache.try, reason: invalid class name */
/* loaded from: classes.dex */
public class Ctry extends Cdefault {

    /* renamed from: do, reason: not valid java name */
    private final String f23406do;

    /* renamed from: if, reason: not valid java name */
    private boolean f23407if = true;

    public Ctry(String str) {
        if (str.indexOf(47) != -1) {
            throw new IllegalArgumentException("A file extension can't contain \"/\": " + str);
        }
        if (str.indexOf(42) != -1) {
            throw new IllegalArgumentException("A file extension can't contain \"*\": " + str);
        }
        if (str.indexOf(63) != -1) {
            throw new IllegalArgumentException("A file extension can't contain \"*\": " + str);
        }
        if (!str.startsWith(".")) {
            this.f23406do = str;
            return;
        }
        throw new IllegalArgumentException("A file extension can't start with \".\": " + str);
    }

    @Override // freemarker.cache.Cdefault
    /* renamed from: do */
    public boolean mo27653do(String str, Object obj) throws IOException {
        int length = str.length();
        int length2 = this.f23406do.length();
        if (length < length2 + 1) {
            return false;
        }
        int i = length - length2;
        if (str.charAt(i - 1) != '.') {
            return false;
        }
        return str.regionMatches(this.f23407if, i, this.f23406do, 0, length2);
    }

    /* renamed from: for, reason: not valid java name */
    public boolean m27783for() {
        return this.f23407if;
    }

    /* renamed from: if, reason: not valid java name */
    public Ctry m27784if(boolean z) {
        m27785new(z);
        return this;
    }

    /* renamed from: new, reason: not valid java name */
    public void m27785new(boolean z) {
        this.f23407if = z;
    }
}
