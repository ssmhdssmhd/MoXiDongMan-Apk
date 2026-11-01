package android.support.v4;

import android.os.Process;
import java.util.HashMap;
import java.util.Iterator;
import org.chromium.base.UserData;

/* loaded from: classes3.dex */
public final class kd2 {

    /* renamed from: do, reason: not valid java name */
    private final long f3368do = Process.myTid();

    /* renamed from: if, reason: not valid java name */
    private HashMap<Class<? extends UserData>, UserData> f3369if = new HashMap<>();

    /* renamed from: do, reason: not valid java name */
    private static void m4377do(boolean z) {
        if (!z) {
            throw new IllegalArgumentException("Neither key nor object of UserDataHost can be null.");
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m4378if() {
        if (this.f3368do != Process.myTid()) {
            throw new IllegalStateException("UserData must only be used on a single thread.");
        }
        if (this.f3369if == null) {
            throw new IllegalStateException("Operation is not allowed after destroy().");
        }
    }

    /* renamed from: case, reason: not valid java name */
    public <T extends UserData> T m4379case(Class<T> cls, T t) {
        m4378if();
        m4377do((cls == null || t == null) ? false : true);
        this.f3369if.put(cls, t);
        return (T) m4381new(cls);
    }

    /* renamed from: for, reason: not valid java name */
    public void m4380for() {
        m4378if();
        HashMap<Class<? extends UserData>, UserData> map = this.f3369if;
        this.f3369if = null;
        Iterator<UserData> it = map.values().iterator();
        while (it.hasNext()) {
            it.next().destroy();
        }
    }

    /* renamed from: new, reason: not valid java name */
    public <T extends UserData> T m4381new(Class<T> cls) {
        m4378if();
        m4377do(cls != null);
        return cls.cast(this.f3369if.get(cls));
    }

    /* renamed from: try, reason: not valid java name */
    public <T extends UserData> T m4382try(Class<T> cls) {
        m4378if();
        m4377do(cls != null);
        if (this.f3369if.containsKey(cls)) {
            return cls.cast(this.f3369if.remove(cls));
        }
        throw new IllegalStateException("UserData for the key is not present.");
    }
}
