package freemarker.cache;

import android.support.v4.on0;
import java.io.IOException;
import java.util.regex.Pattern;

/* renamed from: freemarker.cache.super, reason: invalid class name */
/* loaded from: classes.dex */
public class Csuper extends Cdefault {

    /* renamed from: do, reason: not valid java name */
    private final Pattern f23396do;

    public Csuper(String str) {
        if (!str.startsWith(on0.f4694final)) {
            this.f23396do = Pattern.compile(str);
            return;
        }
        throw new IllegalArgumentException("Absolute template paths need no inital \"/\"; remove it from: " + str);
    }

    @Override // freemarker.cache.Cdefault
    /* renamed from: do */
    public boolean mo27653do(String str, Object obj) throws IOException {
        return this.f23396do.matcher(str).matches();
    }
}
