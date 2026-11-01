package freemarker.template;

import android.support.v4.ry;
import android.support.v4.we2;
import freemarker.ext.beans._BeansAPI;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.Map;
import java.util.WeakHashMap;

/* renamed from: freemarker.template.break, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cbreak extends ry {

    /* renamed from: class, reason: not valid java name */
    private static final Map<ClassLoader, Map<ry, WeakReference<Cthis>>> f25092class = new WeakHashMap();

    /* renamed from: const, reason: not valid java name */
    private static final ReferenceQueue<Cthis> f25093const = new ReferenceQueue<>();

    /* renamed from: freemarker.template.break$do, reason: invalid class name */
    public static class Cdo implements _BeansAPI._BeansWrapperSubclassFactory<Cthis, ry> {

        /* renamed from: do, reason: not valid java name */
        private static final Cdo f25094do = new Cdo();

        private Cdo() {
        }

        @Override // freemarker.ext.beans._BeansAPI._BeansWrapperSubclassFactory
        /* renamed from: if, reason: not valid java name and merged with bridge method [inline-methods] */
        public Cthis create(ry ryVar) {
            return new Cthis(ryVar, true);
        }
    }

    public Cbreak(we2 we2Var) {
        super(we2Var);
    }

    /* renamed from: volatile, reason: not valid java name */
    public static void m29216volatile() {
        Map<ClassLoader, Map<ry, WeakReference<Cthis>>> map = f25092class;
        synchronized (map) {
            map.clear();
        }
    }

    /* renamed from: strictfp, reason: not valid java name */
    public Cthis m29217strictfp() {
        return (Cthis) _BeansAPI.m28483for(this, f25092class, f25093const, Cdo.f25094do);
    }
}
