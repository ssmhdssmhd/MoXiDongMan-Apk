package rx.plugins;

import android.support.v4.s80;

/* renamed from: rx.plugins.do, reason: invalid class name */
/* loaded from: classes4.dex */
public abstract class Cdo {

    /* renamed from: do, reason: not valid java name */
    public static final String f36121do = ".errorRendering";

    @Deprecated
    /* renamed from: do, reason: not valid java name */
    public void m39123do(Throwable th) {
    }

    /* renamed from: for, reason: not valid java name */
    public String m39124for(Object obj) throws InterruptedException {
        return null;
    }

    /* renamed from: if, reason: not valid java name */
    public final String m39125if(Object obj) {
        try {
            return m39124for(obj);
        } catch (InterruptedException unused) {
            Thread.currentThread().interrupt();
            return obj.getClass().getName() + f36121do;
        } catch (Throwable th) {
            s80.m7301try(th);
            return obj.getClass().getName() + f36121do;
        }
    }
}
