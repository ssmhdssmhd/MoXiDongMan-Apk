package freemarker.ext.beans;

import android.support.v4.we2;
import freemarker.ext.beans._BeansAPI;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: freemarker.ext.beans.case, reason: invalid class name */
/* loaded from: classes.dex */
public class Ccase extends Celse {

    /* renamed from: this, reason: not valid java name */
    private static final Map<ClassLoader, Map<Celse, WeakReference<Ctry>>> f24482this = new WeakHashMap();

    /* renamed from: break, reason: not valid java name */
    private static final ReferenceQueue<Ctry> f24481break = new ReferenceQueue<>();

    /* renamed from: freemarker.ext.beans.case$do, reason: invalid class name */
    public static class Cdo implements _BeansAPI._BeansWrapperSubclassFactory<Ctry, Celse> {

        /* renamed from: do, reason: not valid java name */
        private static final Cdo f24483do = new Cdo();

        private Cdo() {
        }

        @Override // freemarker.ext.beans._BeansAPI._BeansWrapperSubclassFactory
        public Ctry create(Celse celse) {
            return new Ctry(celse, true);
        }
    }

    public Ccase(we2 we2Var) {
        super(we2Var);
    }

    /* renamed from: finally, reason: not valid java name */
    public static void m28498finally() {
        Map<ClassLoader, Map<Celse, WeakReference<Ctry>>> map = f24482this;
        synchronized (map) {
            map.clear();
        }
    }

    /* renamed from: package, reason: not valid java name */
    public static Map<ClassLoader, Map<Celse, WeakReference<Ctry>>> m28499package() {
        return f24482this;
    }

    /* renamed from: extends, reason: not valid java name */
    public Ctry m28500extends() {
        return _BeansAPI.m28483for(this, f24482this, f24481break, Cdo.f24483do);
    }
}
