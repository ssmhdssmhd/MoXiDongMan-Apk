package freemarker.template.utility;

import android.support.v4.ac;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import freemarker.core.TemplateMarkupOutputModel;
import freemarker.core.d0;
import freemarker.core.k;
import freemarker.core.x1;
import freemarker.core.y4;
import freemarker.ext.beans.Cnative;
import freemarker.ext.beans.Cnew;
import freemarker.ext.beans.Cprivate;
import freemarker.ext.beans.Cstatic;
import freemarker.ext.beans.Cstrictfp;
import freemarker.ext.beans.Csuper;
import freemarker.ext.beans.Cthrow;
import freemarker.ext.beans.Cthrows;
import freemarker.ext.beans.c;
import freemarker.ext.beans.f;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.AdapterTemplateModel;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateCollectionModelEx;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateMethodModel;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateModelIterator;
import freemarker.template.TemplateNodeModel;
import freemarker.template.TemplateNodeModelEx;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import freemarker.template.TemplateTransformModel;
import java.io.IOException;
import java.io.InputStream;
import java.net.URL;
import java.util.HashSet;
import java.util.Properties;
import java.util.Set;
import okhttp3.HttpUrl;

/* renamed from: freemarker.template.utility.if, reason: invalid class name */
/* loaded from: classes3.dex */
public class Cif {

    /* renamed from: freemarker.template.utility.if$if, reason: invalid class name and collision with other inner class name */
    public static class C0264if extends Exception {
        private C0264if() {
        }
    }

    private Cif() {
    }

    /* renamed from: break, reason: not valid java name */
    public static String m29270break(Class cls) {
        return m29272catch(cls, false);
    }

    /* renamed from: case, reason: not valid java name */
    public static String m29271case(TemplateModel templateModel) {
        if (templateModel == null) {
            return "Null";
        }
        HashSet hashSet = new HashSet();
        StringBuilder sb = new StringBuilder();
        Class clsM29276else = m29276else(templateModel);
        if (clsM29276else != null) {
            m29275do(sb, hashSet, clsM29276else);
        }
        if (templateModel instanceof x1) {
            m29280if(sb, hashSet, ((x1) templateModel).z() ? "function" : "macro");
        }
        m29275do(sb, hashSet, templateModel.getClass());
        Class clsM29277final = m29277final(templateModel);
        String strM29272catch = clsM29277final != null ? m29272catch(clsM29277final, true) : null;
        sb.append(" (");
        String strM29272catch2 = m29272catch(templateModel.getClass(), true);
        if (strM29272catch == null) {
            sb.append("wrapper: ");
            sb.append(strM29272catch2);
        } else {
            sb.append(strM29272catch);
            sb.append(" wrapped into ");
            sb.append(strM29272catch2);
        }
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: catch, reason: not valid java name */
    public static String m29272catch(Class cls, boolean z) {
        if (cls == null) {
            return null;
        }
        if (cls.isArray()) {
            return m29270break(cls.getComponentType()) + HttpUrl.PATH_SEGMENT_ENCODE_SET_URI;
        }
        String name = cls.getName();
        if (name.startsWith("java.lang.") || name.startsWith("java.util.")) {
            return name.substring(10);
        }
        if (!z) {
            return name;
        }
        if (name.startsWith("freemarker.template.")) {
            return "f.t" + name.substring(19);
        }
        if (name.startsWith("freemarker.ext.beans.")) {
            return "f.e.b" + name.substring(20);
        }
        if (name.startsWith("freemarker.core.")) {
            return "f.c" + name.substring(15);
        }
        if (name.startsWith("freemarker.ext.")) {
            return "f.e" + name.substring(14);
        }
        if (!name.startsWith("freemarker.")) {
            return name;
        }
        return "f" + name.substring(10);
    }

    /* renamed from: class, reason: not valid java name */
    public static String m29273class(Object obj) {
        return m29274const(obj, false);
    }

    /* renamed from: const, reason: not valid java name */
    public static String m29274const(Object obj, boolean z) {
        return obj == null ? "Null" : m29272catch(obj.getClass(), z);
    }

    /* renamed from: do, reason: not valid java name */
    private static void m29275do(StringBuilder sb, Set set, Class cls) {
        int length = sb.length();
        if (TemplateNodeModelEx.class.isAssignableFrom(cls)) {
            m29280if(sb, set, "extended node");
        } else if (TemplateNodeModel.class.isAssignableFrom(cls)) {
            m29280if(sb, set, k.f23935package);
        }
        if (TemplateDirectiveModel.class.isAssignableFrom(cls)) {
            m29280if(sb, set, "directive");
        } else if (TemplateTransformModel.class.isAssignableFrom(cls)) {
            m29280if(sb, set, "transform");
        }
        if (TemplateSequenceModel.class.isAssignableFrom(cls)) {
            m29280if(sb, set, "sequence");
        } else if (TemplateCollectionModel.class.isAssignableFrom(cls)) {
            m29280if(sb, set, TemplateCollectionModelEx.class.isAssignableFrom(cls) ? "extended_collection" : "collection");
        } else if (TemplateModelIterator.class.isAssignableFrom(cls)) {
            m29280if(sb, set, "iterator");
        }
        if (TemplateMethodModel.class.isAssignableFrom(cls)) {
            m29280if(sb, set, "method");
        }
        if (d0.Cthis.class.isAssignableFrom(cls)) {
            m29280if(sb, set, k.f23945throw);
        } else if (TemplateHashModelEx.class.isAssignableFrom(cls)) {
            m29280if(sb, set, "extended_hash");
        } else if (TemplateHashModel.class.isAssignableFrom(cls)) {
            m29280if(sb, set, "hash");
        }
        if (TemplateNumberModel.class.isAssignableFrom(cls)) {
            m29280if(sb, set, "number");
        }
        if (TemplateDateModel.class.isAssignableFrom(cls)) {
            m29280if(sb, set, "date_or_time_or_datetime");
        }
        if (TemplateBooleanModel.class.isAssignableFrom(cls)) {
            m29280if(sb, set, TypedValues.Custom.S_BOOLEAN);
        }
        if (TemplateScalarModel.class.isAssignableFrom(cls)) {
            m29280if(sb, set, TypedValues.Custom.S_STRING);
        }
        if (TemplateMarkupOutputModel.class.isAssignableFrom(cls)) {
            m29280if(sb, set, "markup_output");
        }
        if (sb.length() == length) {
            m29280if(sb, set, "misc_template_model");
        }
    }

    /* renamed from: else, reason: not valid java name */
    private static Class m29276else(TemplateModel templateModel) {
        if (!(templateModel instanceof Cnew)) {
            if ((templateModel instanceof c) || (templateModel instanceof Cstrictfp)) {
                return TemplateMethodModelEx.class;
            }
            if ((templateModel instanceof TemplateCollectionModel) && y4.m28376class((TemplateCollectionModel) templateModel)) {
                return TemplateSequenceModel.class;
            }
            return null;
        }
        if (templateModel instanceof Csuper) {
            return TemplateSequenceModel.class;
        }
        if ((templateModel instanceof Cstatic) || (templateModel instanceof Cnative)) {
            return TemplateCollectionModel.class;
        }
        if (templateModel instanceof Cthrows) {
            return TemplateHashModelEx.class;
        }
        if (templateModel instanceof Cprivate) {
            return TemplateNumberModel.class;
        }
        if (templateModel instanceof ac) {
            return TemplateBooleanModel.class;
        }
        if (templateModel instanceof Cthrow) {
            return TemplateDateModel.class;
        }
        if (!(templateModel instanceof f)) {
            return null;
        }
        if (((Cnew) templateModel).getWrappedObject() instanceof String) {
            return TemplateScalarModel.class;
        }
        if (templateModel instanceof TemplateHashModelEx) {
            return TemplateHashModelEx.class;
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x001a, code lost:
    
        r2 = null;
     */
    /* renamed from: final, reason: not valid java name */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static Class m29277final(TemplateModel templateModel) {
        Object wrappedObject = templateModel instanceof WrapperTemplateModel ? ((WrapperTemplateModel) templateModel).getWrappedObject() : templateModel instanceof AdapterTemplateModel ? ((AdapterTemplateModel) templateModel).getAdaptedObject(Object.class) : null;
        if (wrappedObject != null) {
            return wrappedObject.getClass();
        }
        return null;
    }

    /* renamed from: for, reason: not valid java name */
    public static Class m29278for(Class cls) {
        return cls == Integer.class ? Integer.TYPE : cls == Boolean.class ? Boolean.TYPE : cls == Long.class ? Long.TYPE : cls == Double.class ? Double.TYPE : cls == Character.class ? Character.TYPE : cls == Float.class ? Float.TYPE : cls == Byte.class ? Byte.TYPE : cls == Short.class ? Short.TYPE : cls == Void.class ? Void.TYPE : cls;
    }

    /* renamed from: goto, reason: not valid java name */
    public static InputStream m29279goto(Class<?> cls, String str, boolean z) throws IOException {
        InputStream inputStreamOpenStream;
        try {
            inputStreamOpenStream = cls.getResourceAsStream(str);
        } catch (Exception unused) {
            URL resource = cls.getResource(str);
            inputStreamOpenStream = resource != null ? resource.openStream() : null;
        }
        if (!z) {
            m29281new(inputStreamOpenStream, cls, str);
        }
        return inputStreamOpenStream;
    }

    /* renamed from: if, reason: not valid java name */
    private static void m29280if(StringBuilder sb, Set set, String str) {
        if (set.contains(str)) {
            return;
        }
        if (sb.length() != 0) {
            sb.append("+");
        }
        sb.append(str);
        set.add(str);
    }

    /* renamed from: new, reason: not valid java name */
    private static void m29281new(InputStream inputStream, Class<?> cls, String str) throws IOException {
        if (inputStream != null) {
            return;
        }
        throw new IOException("Class-loader resource not found (shown quoted): " + Csuper.m29330synchronized(str) + ". The base class was " + cls.getName() + ".");
    }

    /* renamed from: super, reason: not valid java name */
    public static boolean m29282super(Class cls) {
        return Number.class.isAssignableFrom(cls) || !(!cls.isPrimitive() || cls == Boolean.TYPE || cls == Character.TYPE || cls == Void.TYPE);
    }

    /* renamed from: this, reason: not valid java name */
    public static InputStream m29283this(ClassLoader classLoader, String str, boolean z) throws IOException {
        InputStream inputStreamOpenStream;
        try {
            inputStreamOpenStream = classLoader.getResourceAsStream(str);
        } catch (Exception unused) {
            URL resource = classLoader.getResource(str);
            inputStreamOpenStream = resource != null ? resource.openStream() : null;
        }
        if (inputStreamOpenStream != null || z) {
            return inputStreamOpenStream;
        }
        throw new IOException("Class-loader resource not found (shown quoted): " + Csuper.m29330synchronized(str) + ". The base ClassLoader was: " + classLoader);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Properties] */
    /* JADX WARN: Type inference failed for: r1v0, types: [freemarker.template.utility.if$do] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* renamed from: throw, reason: not valid java name */
    public static Properties m29284throw(Class<?> cls, String str) throws Throwable {
        InputStream resourceAsStream;
        ?? properties = new Properties();
        InputStream inputStream = null;
        try {
            try {
                try {
                    resourceAsStream = cls.getResourceAsStream(str);
                } catch (Throwable th) {
                    th = th;
                }
            } catch (Exception unused) {
            }
            try {
                try {
                    try {
                        m29281new(resourceAsStream, cls, str);
                    } catch (C0264if unused2) {
                        URL resource = cls.getResource(str);
                        OpenStream = resource != null ? resource.openStream() : 0;
                        m29281new(OpenStream, cls, str);
                        properties.load(OpenStream);
                        if (OpenStream != 0) {
                            OpenStream.close();
                        }
                        return properties;
                    }
                    try {
                        properties.load(resourceAsStream);
                        resourceAsStream.close();
                        return properties;
                    } catch (Exception unused3) {
                        throw new C0264if();
                    }
                } catch (Throwable th2) {
                    try {
                        resourceAsStream.close();
                    } catch (Exception unused4) {
                    }
                    throw th2;
                }
            } catch (Throwable th3) {
                th = th3;
                inputStream = resourceAsStream;
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (Exception unused5) {
                    }
                }
                throw th;
            }
        } catch (Exception unused6) {
            throw new C0264if();
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static Class m29285try(String str) throws ClassNotFoundException {
        try {
            ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
            if (contextClassLoader != null) {
                return Class.forName(str, true, contextClassLoader);
            }
        } catch (ClassNotFoundException | SecurityException unused) {
        }
        return Class.forName(str);
    }

    /* renamed from: while, reason: not valid java name */
    public static Class m29286while(Class cls) {
        return cls == Integer.TYPE ? Integer.class : cls == Boolean.TYPE ? Boolean.class : cls == Long.TYPE ? Long.class : cls == Double.TYPE ? Double.class : cls == Character.TYPE ? Character.class : cls == Float.TYPE ? Float.class : cls == Byte.TYPE ? Byte.class : cls == Short.TYPE ? Short.class : cls == Void.TYPE ? Void.class : cls;
    }
}
