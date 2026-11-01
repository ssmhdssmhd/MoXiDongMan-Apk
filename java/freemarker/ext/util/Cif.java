package freemarker.ext.util;

import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelAdapter;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.IdentityHashMap;
import java.util.Map;

/* renamed from: freemarker.ext.util.if, reason: invalid class name */
/* loaded from: classes3.dex */
public abstract class Cif {

    /* renamed from: do, reason: not valid java name */
    private boolean f25007do = false;

    /* renamed from: if, reason: not valid java name */
    private Map<Object, Cdo> f25009if = null;

    /* renamed from: for, reason: not valid java name */
    private ReferenceQueue<TemplateModel> f25008for = null;

    /* renamed from: freemarker.ext.util.if$do, reason: invalid class name */
    public static final class Cdo extends SoftReference<TemplateModel> {

        /* renamed from: do, reason: not valid java name */
        public Object f25010do;

        public Cdo(TemplateModel templateModel, Object obj, ReferenceQueue<TemplateModel> referenceQueue) {
            super(templateModel, referenceQueue);
            this.f25010do = obj;
        }

        /* renamed from: do, reason: not valid java name */
        public TemplateModel m29136do() {
            return get();
        }
    }

    /* renamed from: case, reason: not valid java name */
    private final TemplateModel m29130case(Object obj) {
        Cdo cdo;
        synchronized (this.f25009if) {
            cdo = this.f25009if.get(obj);
        }
        if (cdo != null) {
            return cdo.m29136do();
        }
        return null;
    }

    /* renamed from: else, reason: not valid java name */
    private final void m29131else(TemplateModel templateModel, Object obj) {
        synchronized (this.f25009if) {
            while (true) {
                Cdo cdo = (Cdo) this.f25008for.poll();
                if (cdo == null) {
                    this.f25009if.put(obj, new Cdo(templateModel, obj, this.f25008for));
                } else {
                    this.f25009if.remove(cdo.f25010do);
                }
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m29132do() {
        Map<Object, Cdo> map = this.f25009if;
        if (map != null) {
            synchronized (map) {
                this.f25009if.clear();
            }
        }
    }

    /* renamed from: for, reason: not valid java name */
    public TemplateModel m29133for(Object obj) {
        if (obj instanceof TemplateModel) {
            return (TemplateModel) obj;
        }
        if (obj instanceof TemplateModelAdapter) {
            return ((TemplateModelAdapter) obj).getTemplateModel();
        }
        if (!this.f25007do || !mo4609try(obj)) {
            return mo4608if(obj);
        }
        TemplateModel templateModelM29130case = m29130case(obj);
        if (templateModelM29130case != null) {
            return templateModelM29130case;
        }
        TemplateModel templateModelMo4608if = mo4608if(obj);
        m29131else(templateModelMo4608if, obj);
        return templateModelMo4608if;
    }

    /* renamed from: goto, reason: not valid java name */
    public synchronized void m29134goto(boolean z) {
        this.f25007do = z;
        if (z) {
            this.f25009if = new IdentityHashMap();
            this.f25008for = new ReferenceQueue<>();
        } else {
            this.f25009if = null;
            this.f25008for = null;
        }
    }

    /* renamed from: if */
    public abstract TemplateModel mo4608if(Object obj);

    /* renamed from: new, reason: not valid java name */
    public synchronized boolean m29135new() {
        return this.f25007do;
    }

    /* renamed from: try */
    public abstract boolean mo4609try(Object obj);
}
