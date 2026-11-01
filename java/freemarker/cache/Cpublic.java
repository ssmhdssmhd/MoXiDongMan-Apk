package freemarker.cache;

import freemarker.template.Cdo;

/* renamed from: freemarker.cache.public, reason: invalid class name */
/* loaded from: classes.dex */
final class Cpublic {
    private Cpublic() {
    }

    /* renamed from: do, reason: not valid java name */
    public static String m27756do(TemplateLoader templateLoader) {
        Class<?> cls = templateLoader.getClass();
        Package r0 = cls.getPackage();
        return (r0 == Cdo.class.getPackage() || r0 == TemplateLoader.class.getPackage()) ? cls.getSimpleName() : cls.getName();
    }
}
