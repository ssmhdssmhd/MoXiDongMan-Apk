package freemarker.template;

import android.support.v4.k52;

/* renamed from: freemarker.template.throws, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cthrows {

    /* renamed from: do, reason: not valid java name */
    @Deprecated
    private static ObjectWrapper f25124do = Cthis.f25112continue;
    private ObjectWrapper objectWrapper;

    @Deprecated
    public Cthrows() {
        this(f25124do);
    }

    @Deprecated
    public static ObjectWrapper getDefaultObjectWrapper() {
        return f25124do;
    }

    @Deprecated
    public static void setDefaultObjectWrapper(ObjectWrapper objectWrapper) {
        f25124do = objectWrapper;
    }

    public ObjectWrapper getObjectWrapper() {
        return this.objectWrapper;
    }

    public void setObjectWrapper(ObjectWrapper objectWrapper) {
        this.objectWrapper = objectWrapper;
    }

    public final TemplateModel wrap(Object obj) throws k52 {
        return this.objectWrapper.wrap(obj);
    }

    public Cthrows(ObjectWrapper objectWrapper) {
        objectWrapper = objectWrapper == null ? f25124do : objectWrapper;
        this.objectWrapper = objectWrapper;
        if (objectWrapper == null) {
            Cthis cthis = new Cthis();
            f25124do = cthis;
            this.objectWrapper = cthis;
        }
    }
}
