package freemarker.ext.beans;

import android.support.v4.fl2;
import android.support.v4.k52;
import android.support.v4.vl2;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateModel;
import freemarker.template.utility.Cif;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: freemarker.ext.beans.catch, reason: invalid class name */
/* loaded from: classes.dex */
abstract class Ccatch implements TemplateHashModel {

    /* renamed from: do, reason: not valid java name */
    private final Ctry f24484do;

    /* renamed from: if, reason: not valid java name */
    private final Map f24486if = new ConcurrentHashMap();

    /* renamed from: for, reason: not valid java name */
    private final Set f24485for = new HashSet();

    public Ccatch(Ctry ctry) {
        this.f24484do = ctry;
    }

    /* renamed from: for, reason: not valid java name */
    private TemplateModel m28502for(String str) throws k52, ClassNotFoundException {
        TemplateModel templateModel = (TemplateModel) this.f24486if.get(str);
        if (templateModel != null) {
            return templateModel;
        }
        Object objM28694extends = this.f24484do.m28694extends();
        synchronized (objM28694extends) {
            TemplateModel templateModel2 = (TemplateModel) this.f24486if.get(str);
            if (templateModel2 != null) {
                return templateModel2;
            }
            while (templateModel2 == null && this.f24485for.contains(str)) {
                try {
                    objM28694extends.wait();
                    templateModel2 = (TemplateModel) this.f24486if.get(str);
                } catch (InterruptedException e) {
                    throw new RuntimeException("Class inrospection data lookup aborded: " + e);
                }
            }
            if (templateModel2 != null) {
                return templateModel2;
            }
            this.f24485for.add(str);
            Cclass cclassM28691const = this.f24484do.m28691const();
            int iM28543throw = cclassM28691const.m28543throw();
            try {
                Class<?> clsM29285try = Cif.m29285try(str);
                cclassM28691const.m28530const(clsM29285try);
                TemplateModel templateModelMo28504if = mo28504if(clsM29285try);
                if (templateModelMo28504if != null) {
                    synchronized (objM28694extends) {
                        if (cclassM28691const == this.f24484do.m28691const() && iM28543throw == cclassM28691const.m28543throw()) {
                            this.f24486if.put(str, templateModelMo28504if);
                        }
                    }
                }
                synchronized (objM28694extends) {
                    this.f24485for.remove(str);
                    objM28694extends.notifyAll();
                }
                return templateModelMo28504if;
            } catch (Throwable th) {
                synchronized (objM28694extends) {
                    this.f24485for.remove(str);
                    objM28694extends.notifyAll();
                    throw th;
                }
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public void m28503do() {
        synchronized (this.f24484do.m28694extends()) {
            this.f24486if.clear();
        }
    }

    @Override // freemarker.template.TemplateHashModel
    public TemplateModel get(String str) throws k52 {
        try {
            return m28502for(str);
        } catch (Exception e) {
            if (e instanceof k52) {
                throw ((k52) e);
            }
            throw new vl2(e, "Failed to get value for key ", new fl2(str), "; see cause exception.");
        }
    }

    /* renamed from: if, reason: not valid java name */
    public abstract TemplateModel mo28504if(Class cls) throws k52;

    @Override // freemarker.template.TemplateHashModel
    public boolean isEmpty() {
        return false;
    }

    /* renamed from: new, reason: not valid java name */
    public Ctry m28505new() {
        return this.f24484do;
    }

    /* renamed from: try, reason: not valid java name */
    public void m28506try(Class cls) {
        synchronized (this.f24484do.m28694extends()) {
            this.f24486if.remove(cls.getName());
        }
    }
}
