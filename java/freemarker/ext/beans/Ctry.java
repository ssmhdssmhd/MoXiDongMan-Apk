package freemarker.ext.beans;

import android.support.v4.ac;
import android.support.v4.bl2;
import android.support.v4.il2;
import android.support.v4.k52;
import android.support.v4.l8;
import android.support.v4.mc;
import android.support.v4.ul2;
import android.support.v4.vl2;
import android.support.v4.we2;
import freemarker.ext.beans.OverloadedNumberUtil;
import freemarker.ext.util.ModelFactory;
import freemarker.ext.util.WrapperTemplateModel;
import freemarker.template.AdapterTemplateModel;
import freemarker.template.Cpublic;
import freemarker.template.Cthis;
import freemarker.template.ObjectWrapper;
import freemarker.template.ObjectWrapperAndUnwrapper;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateDateModel;
import freemarker.template.TemplateHashModel;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateNumberModel;
import freemarker.template.TemplateScalarModel;
import freemarker.template.TemplateSequenceModel;
import freemarker.template.utility.RichObjectWrapper;
import freemarker.template.utility.WriteProtectable;
import java.beans.PropertyDescriptor;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Collections;
import java.util.Date;
import java.util.Enumeration;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.ResourceBundle;
import java.util.Set;

/* renamed from: freemarker.ext.beans.try, reason: invalid class name */
/* loaded from: classes.dex */
public class Ctry implements RichObjectWrapper, WriteProtectable {

    /* renamed from: public, reason: not valid java name */
    public static final int f24630public = 0;

    /* renamed from: return, reason: not valid java name */
    public static final int f24631return = 1;

    /* renamed from: static, reason: not valid java name */
    public static final int f24632static = 2;

    /* renamed from: switch, reason: not valid java name */
    public static final int f24633switch = 3;

    /* renamed from: throws, reason: not valid java name */
    private static volatile boolean f24634throws;

    /* renamed from: break, reason: not valid java name */
    private int f24635break;

    /* renamed from: case, reason: not valid java name */
    private final ac f24636case;

    /* renamed from: catch, reason: not valid java name */
    private ObjectWrapper f24637catch;

    /* renamed from: class, reason: not valid java name */
    private boolean f24638class;

    /* renamed from: const, reason: not valid java name */
    private boolean f24639const;

    /* renamed from: do, reason: not valid java name */
    private final Object f24640do;

    /* renamed from: else, reason: not valid java name */
    private final ac f24641else;

    /* renamed from: final, reason: not valid java name */
    private boolean f24642final;

    /* renamed from: for, reason: not valid java name */
    private final e f24643for;

    /* renamed from: goto, reason: not valid java name */
    private volatile boolean f24644goto;

    /* renamed from: if, reason: not valid java name */
    private Cclass f24645if;

    /* renamed from: new, reason: not valid java name */
    private final Ccatch f24646new;

    /* renamed from: super, reason: not valid java name */
    private boolean f24647super;

    /* renamed from: this, reason: not valid java name */
    private TemplateModel f24648this;

    /* renamed from: throw, reason: not valid java name */
    private final we2 f24649throw;

    /* renamed from: try, reason: not valid java name */
    private final freemarker.ext.util.Cif f24650try;

    /* renamed from: while, reason: not valid java name */
    private final ModelFactory f24651while;

    /* renamed from: import, reason: not valid java name */
    private static final freemarker.log.Cif f24628import = freemarker.log.Cif.m29193break("freemarker.beans");

    /* renamed from: native, reason: not valid java name */
    @Deprecated
    public static final Object f24629native = ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS;

    /* renamed from: default, reason: not valid java name */
    private static final ModelFactory f24626default = new Cnew();

    /* renamed from: extends, reason: not valid java name */
    private static final ModelFactory f24627extends = new C0253try();

    /* renamed from: freemarker.ext.beans.try$case, reason: invalid class name */
    public static final class Ccase {

        /* renamed from: do, reason: not valid java name */
        private PropertyDescriptor f24652do;

        /* renamed from: for, reason: not valid java name */
        private String f24653for;

        /* renamed from: if, reason: not valid java name */
        private boolean f24654if;

        /* renamed from: new, reason: not valid java name */
        private boolean f24655new;

        /* renamed from: case, reason: not valid java name */
        public void m28717case(PropertyDescriptor propertyDescriptor) {
            this.f24652do = propertyDescriptor;
        }

        /* renamed from: do, reason: not valid java name */
        public PropertyDescriptor m28718do() {
            return this.f24652do;
        }

        /* renamed from: else, reason: not valid java name */
        public void m28719else(String str) {
            this.f24653for = str;
        }

        /* renamed from: for, reason: not valid java name */
        public boolean m28720for() {
            return this.f24655new;
        }

        /* renamed from: goto, reason: not valid java name */
        public void m28721goto(boolean z) {
            this.f24655new = z;
        }

        /* renamed from: if, reason: not valid java name */
        public String m28722if() {
            return this.f24653for;
        }

        /* renamed from: new, reason: not valid java name */
        public boolean m28723new() {
            return this.f24654if;
        }

        /* renamed from: this, reason: not valid java name */
        public void m28724this(boolean z) {
            this.f24654if = z;
        }

        /* renamed from: try, reason: not valid java name */
        public void m28725try(Method method) {
            this.f24652do = null;
            this.f24654if = false;
            this.f24653for = method.getName();
            this.f24655new = true;
        }
    }

    /* renamed from: freemarker.ext.beans.try$do, reason: invalid class name */
    public class Cdo extends freemarker.ext.beans.Celse {
        public Cdo(we2 we2Var) {
            super(we2Var);
        }
    }

    /* renamed from: freemarker.ext.beans.try$else, reason: invalid class name */
    public static final class Celse {

        /* renamed from: do, reason: not valid java name */
        private Method f24656do;

        /* renamed from: if, reason: not valid java name */
        private Class<?> f24657if;

        /* renamed from: do, reason: not valid java name */
        public Class m28726do() {
            return this.f24657if;
        }

        /* renamed from: for, reason: not valid java name */
        public void m28727for(Class<?> cls) {
            this.f24657if = cls;
        }

        /* renamed from: if, reason: not valid java name */
        public Method m28728if() {
            return this.f24656do;
        }

        /* renamed from: new, reason: not valid java name */
        public void m28729new(Method method) {
            this.f24656do = method;
        }
    }

    /* renamed from: freemarker.ext.beans.try$for, reason: invalid class name */
    public class Cfor implements ModelFactory {
        public Cfor() {
        }

        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return ((Boolean) obj).booleanValue() ? Ctry.this.f24641else : Ctry.this.f24636case;
        }
    }

    /* renamed from: freemarker.ext.beans.try$if, reason: invalid class name */
    public class Cif implements MethodAppearanceFineTuner {
        public Cif() {
        }

        @Override // freemarker.ext.beans.MethodAppearanceFineTuner
        public void process(Celse celse, Ccase ccase) {
            Ctry.this.m28690catch(celse.m28726do(), celse.m28728if(), ccase);
        }
    }

    /* renamed from: freemarker.ext.beans.try$new, reason: invalid class name */
    public static class Cnew implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Cstatic((Iterator) obj, (Ctry) objectWrapper);
        }
    }

    /* renamed from: freemarker.ext.beans.try$try, reason: invalid class name and collision with other inner class name */
    public static class C0253try implements ModelFactory {
        @Override // freemarker.ext.util.ModelFactory
        public TemplateModel create(Object obj, ObjectWrapper objectWrapper) {
            return new Cnative((Enumeration) obj, (Ctry) objectWrapper);
        }
    }

    @Deprecated
    public Ctry() {
        this(freemarker.template.Cdo.t3);
    }

    public static we2 c(we2 we2Var) {
        ul2.m8507if(we2Var);
        if (we2Var.intValue() >= ul2.f6932do) {
            return we2Var.intValue() >= ul2.f6927break ? freemarker.template.Cdo.q3 : we2Var.intValue() == ul2.f6938this ? freemarker.template.Cdo.p3 : m28683interface(we2Var) ? freemarker.template.Cdo.n3 : m28684strictfp(we2Var) ? freemarker.template.Cdo.k3 : freemarker.template.Cdo.h3;
        }
        throw new IllegalArgumentException("Version must be at least 2.3.0.");
    }

    /* renamed from: class, reason: not valid java name */
    public static Number m28678class(Number number, Class<?> cls, boolean z) {
        if (cls == number.getClass()) {
            return number;
        }
        if (cls == Integer.TYPE || cls == Integer.class) {
            return number instanceof Integer ? (Integer) number : Integer.valueOf(number.intValue());
        }
        if (cls == Long.TYPE || cls == Long.class) {
            return number instanceof Long ? (Long) number : Long.valueOf(number.longValue());
        }
        if (cls == Double.TYPE || cls == Double.class) {
            return number instanceof Double ? (Double) number : Double.valueOf(number.doubleValue());
        }
        if (cls == BigDecimal.class) {
            return number instanceof BigDecimal ? number : number instanceof BigInteger ? new BigDecimal((BigInteger) number) : number instanceof Long ? BigDecimal.valueOf(number.longValue()) : new BigDecimal(number.doubleValue());
        }
        if (cls == Float.TYPE || cls == Float.class) {
            return number instanceof Float ? (Float) number : Float.valueOf(number.floatValue());
        }
        if (cls == Byte.TYPE || cls == Byte.class) {
            return number instanceof Byte ? (Byte) number : Byte.valueOf(number.byteValue());
        }
        if (cls == Short.TYPE || cls == Short.class) {
            return number instanceof Short ? (Short) number : Short.valueOf(number.shortValue());
        }
        if (cls == BigInteger.class) {
            return number instanceof BigInteger ? number : z ? number instanceof OverloadedNumberUtil.Cpublic ? ((OverloadedNumberUtil.Cpublic) number).bigIntegerValue() : number instanceof BigDecimal ? ((BigDecimal) number).toBigInteger() : BigInteger.valueOf(number.longValue()) : new BigInteger(number.toString());
        }
        if (number instanceof OverloadedNumberUtil.Cpackage) {
            number = ((OverloadedNumberUtil.Cpackage) number).getSourceNumber();
        }
        if (cls.isInstance(number)) {
            return number;
        }
        return null;
    }

    private void d() {
        e eVar = this.f24643for;
        if (eVar != null) {
            this.f24645if.m28536instanceof(eVar);
        }
        Ccatch ccatch = this.f24646new;
        if (ccatch != null) {
            this.f24645if.m28536instanceof(ccatch);
        }
        freemarker.ext.util.Cif cif = this.f24650try;
        if (cif != null) {
            this.f24645if.m28542synchronized(cif);
        }
    }

    /* renamed from: else, reason: not valid java name */
    public static Object m28680else(BigDecimal bigDecimal, Class<?> cls) {
        return (cls == Integer.TYPE || cls == Integer.class) ? Integer.valueOf(bigDecimal.intValue()) : (cls == Double.TYPE || cls == Double.class) ? Double.valueOf(bigDecimal.doubleValue()) : (cls == Long.TYPE || cls == Long.class) ? Long.valueOf(bigDecimal.longValue()) : (cls == Float.TYPE || cls == Float.class) ? Float.valueOf(bigDecimal.floatValue()) : (cls == Short.TYPE || cls == Short.class) ? Short.valueOf(bigDecimal.shortValue()) : (cls == Byte.TYPE || cls == Byte.class) ? Byte.valueOf(bigDecimal.byteValue()) : BigInteger.class.isAssignableFrom(cls) ? bigDecimal.toBigInteger() : bigDecimal;
    }

    private void f(Cconst cconst) {
        m28702new();
        Cclass cclass = new Cclass(cconst, this.f24640do);
        synchronized (this.f24640do) {
            Cclass cclass2 = this.f24645if;
            if (cclass2 != null) {
                e eVar = this.f24643for;
                if (eVar != null) {
                    cclass2.e(eVar);
                    this.f24643for.m28503do();
                }
                Ccatch ccatch = this.f24646new;
                if (ccatch != null) {
                    cclass2.e(ccatch);
                    this.f24646new.m28503do();
                }
                freemarker.ext.util.Cif cif = this.f24650try;
                if (cif != null) {
                    cclass2.f(cif);
                    this.f24650try.m29132do();
                }
                ac acVar = this.f24641else;
                if (acVar != null) {
                    acVar.m28665do();
                }
                ac acVar2 = this.f24636case;
                if (acVar2 != null) {
                    acVar2.m28665do();
                }
            }
            this.f24645if = cclass;
            d();
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m28681goto(AccessibleObject accessibleObject, Object[] objArr) {
        Class<?>[] parameterTypes = null;
        for (int i = 0; i < objArr.length; i++) {
            Object obj = objArr[i];
            if (obj instanceof BigDecimal) {
                if (parameterTypes == null) {
                    if (accessibleObject instanceof Method) {
                        parameterTypes = ((Method) accessibleObject).getParameterTypes();
                    } else {
                        if (!(accessibleObject instanceof Constructor)) {
                            throw new IllegalArgumentException("Expected method or  constructor; callable is " + accessibleObject.getClass().getName());
                        }
                        parameterTypes = ((Constructor) accessibleObject).getParameterTypes();
                    }
                }
                objArr[i] = m28680else((BigDecimal) obj, parameterTypes[i]);
            }
        }
    }

    /* renamed from: interface, reason: not valid java name */
    public static boolean m28683interface(we2 we2Var) {
        return we2Var.intValue() >= ul2.f6933else;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public static boolean m28684strictfp(we2 we2Var) {
        return we2Var.intValue() >= ul2.f6937new;
    }

    @Deprecated
    /* renamed from: super, reason: not valid java name */
    public static final Ctry m28685super() {
        return Cgoto.f24578do;
    }

    /* renamed from: this, reason: not valid java name */
    public static void m28686this(Class<?>[] clsArr, Object[] objArr) {
        int length = clsArr.length;
        int length2 = objArr.length;
        int iMin = Math.min(length, length2);
        for (int i = 0; i < iMin; i++) {
            Object obj = objArr[i];
            if (obj instanceof BigDecimal) {
                objArr[i] = m28680else((BigDecimal) obj, clsArr[i]);
            }
        }
        if (length2 > length) {
            Class<?> cls = clsArr[length - 1];
            while (length < length2) {
                Object obj2 = objArr[length];
                if (obj2 instanceof BigDecimal) {
                    objArr[length] = m28680else((BigDecimal) obj2, cls);
                }
                length++;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:135:0x0172, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x018c, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x01cd, code lost:
    
        return r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x01ea, code lost:
    
        return java.lang.Boolean.valueOf(((freemarker.template.TemplateBooleanModel) r7).getAsBoolean());
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x0208, code lost:
    
        return new freemarker.ext.beans.Creturn((freemarker.template.TemplateHashModel) r7, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x0225, code lost:
    
        return new freemarker.ext.beans.Cinstanceof((freemarker.template.TemplateSequenceModel) r7, r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x0242, code lost:
    
        return new freemarker.ext.beans.Csynchronized((freemarker.template.TemplateCollectionModel) r7, r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private Object v(TemplateModel templateModel, Class<?> cls, int i, Map<Object, Object> map) throws k52 {
        Number numberM28678class;
        if (templateModel == null || templateModel == this.f24648this) {
            return null;
        }
        boolean zM28692continue = m28692continue();
        if (zM28692continue && cls.isPrimitive()) {
            cls = freemarker.template.utility.Cif.m29286while(cls);
        }
        if (templateModel instanceof AdapterTemplateModel) {
            Object adaptedObject = ((AdapterTemplateModel) templateModel).getAdaptedObject(cls);
            if (cls == Object.class || cls.isInstance(adaptedObject) || (cls != Object.class && (adaptedObject instanceof Number) && freemarker.template.utility.Cif.m29282super(cls) && (adaptedObject = m28678class((Number) adaptedObject, cls, zM28692continue)) != null)) {
                return adaptedObject;
            }
        }
        if (templateModel instanceof WrapperTemplateModel) {
            Object wrappedObject = ((WrapperTemplateModel) templateModel).getWrappedObject();
            if (cls == Object.class || cls.isInstance(wrappedObject) || (cls != Object.class && (wrappedObject instanceof Number) && freemarker.template.utility.Cif.m29282super(cls) && (wrappedObject = m28678class((Number) wrappedObject, cls, zM28692continue)) != null)) {
                return wrappedObject;
            }
        }
        if (cls != Object.class) {
            if (String.class == cls) {
                return templateModel instanceof TemplateScalarModel ? ((TemplateScalarModel) templateModel).getAsString() : ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS;
            }
            if (freemarker.template.utility.Cif.m29282super(cls) && (templateModel instanceof TemplateNumberModel) && (numberM28678class = m28678class(((TemplateNumberModel) templateModel).getAsNumber(), cls, zM28692continue)) != null) {
                return numberM28678class;
            }
            if (Boolean.TYPE == cls || Boolean.class == cls) {
                return templateModel instanceof TemplateBooleanModel ? Boolean.valueOf(((TemplateBooleanModel) templateModel).getAsBoolean()) : ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS;
            }
            if (Map.class == cls && (templateModel instanceof TemplateHashModel)) {
                return new Creturn((TemplateHashModel) templateModel, this);
            }
            if (List.class == cls && (templateModel instanceof TemplateSequenceModel)) {
                return new Cinstanceof((TemplateSequenceModel) templateModel, this);
            }
            if (Set.class == cls && (templateModel instanceof TemplateCollectionModel)) {
                return new Csynchronized((TemplateCollectionModel) templateModel, this);
            }
            if (Collection.class == cls || Iterable.class == cls) {
                if (templateModel instanceof TemplateCollectionModel) {
                    return new Cfinal((TemplateCollectionModel) templateModel, this);
                }
                if (templateModel instanceof TemplateSequenceModel) {
                    return new Cinstanceof((TemplateSequenceModel) templateModel, this);
                }
            }
            if (cls.isArray()) {
                return templateModel instanceof TemplateSequenceModel ? x((TemplateSequenceModel) templateModel, cls, true, map) : ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS;
            }
            if (Character.TYPE == cls || cls == Character.class) {
                if (templateModel instanceof TemplateScalarModel) {
                    String asString = ((TemplateScalarModel) templateModel).getAsString();
                    if (asString.length() == 1) {
                        return Character.valueOf(asString.charAt(0));
                    }
                }
                return ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS;
            }
            if (Date.class.isAssignableFrom(cls) && (templateModel instanceof TemplateDateModel)) {
                Date asDate = ((TemplateDateModel) templateModel).getAsDate();
                if (cls.isInstance(asDate)) {
                    return asDate;
                }
            }
        }
        while (true) {
            if ((i == 0 || (i & 2048) != 0) && (templateModel instanceof TemplateNumberModel)) {
                Number asNumber = ((TemplateNumberModel) templateModel).getAsNumber();
                if (i != 0 || cls.isInstance(asNumber)) {
                    break;
                }
            }
            if ((i == 0 || (i & 4096) != 0) && (templateModel instanceof TemplateDateModel)) {
                Date asDate2 = ((TemplateDateModel) templateModel).getAsDate();
                if (i != 0 || cls.isInstance(asDate2)) {
                    break;
                }
            }
            if ((i == 0 || (532480 & i) != 0) && (templateModel instanceof TemplateScalarModel) && (i != 0 || cls.isAssignableFrom(String.class))) {
                String asString2 = ((TemplateScalarModel) templateModel).getAsString();
                if (i != 0 && (524288 & i) != 0) {
                    if (asString2.length() != 1) {
                        if ((i & 8192) != 0) {
                            break;
                        }
                    } else {
                        return (i & 8192) != 0 ? new Cbreak(asString2) : Character.valueOf(asString2.charAt(0));
                    }
                } else {
                    break;
                }
            }
            if ((i == 0 || (i & 16384) != 0) && (templateModel instanceof TemplateBooleanModel) && (i != 0 || cls.isAssignableFrom(Boolean.class))) {
                break;
            }
            if ((i == 0 || (32768 & i) != 0) && (templateModel instanceof TemplateHashModel) && (i != 0 || cls.isAssignableFrom(Creturn.class))) {
                break;
            }
            if ((i == 0 || (65536 & i) != 0) && (templateModel instanceof TemplateSequenceModel) && (i != 0 || cls.isAssignableFrom(Cinstanceof.class))) {
                break;
            }
            if ((i == 0 || (131072 & i) != 0) && (templateModel instanceof TemplateCollectionModel) && (i != 0 || cls.isAssignableFrom(Csynchronized.class))) {
                break;
            }
            if ((262144 & i) != 0 && (templateModel instanceof TemplateSequenceModel)) {
                return new Cinstanceof((TemplateSequenceModel) templateModel, this);
            }
            if (i == 0) {
                return cls.isInstance(templateModel) ? templateModel : ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS;
            }
            i = 0;
        }
    }

    public Object a(List<?> list, Class<?> cls, Map<Object, Object> map) throws k52, NegativeArraySizeException {
        if (list instanceof Cinstanceof) {
            return x(((Cinstanceof) list).m28646do(), cls, false, map);
        }
        if (map != null) {
            Object obj = map.get(list);
            if (obj != null) {
                return obj;
            }
        } else {
            map = new IdentityHashMap<>();
        }
        Class<?> componentType = cls.getComponentType();
        Object objNewInstance = Array.newInstance(componentType, list.size());
        map.put(list, objNewInstance);
        try {
            Iterator<?> it = list.iterator();
            boolean z = false;
            boolean zM29282super = false;
            boolean zIsAssignableFrom = false;
            int i = 0;
            while (it.hasNext()) {
                Object next = it.next();
                if (next != null && !componentType.isInstance(next)) {
                    if (!z) {
                        zM29282super = freemarker.template.utility.Cif.m29282super(componentType);
                        zIsAssignableFrom = List.class.isAssignableFrom(componentType);
                        z = true;
                    }
                    if (zM29282super && (next instanceof Number)) {
                        next = m28678class((Number) next, componentType, true);
                    } else if (componentType == String.class && (next instanceof Character)) {
                        next = String.valueOf(((Character) next).charValue());
                    } else if ((componentType == Character.class || componentType == Character.TYPE) && (next instanceof String)) {
                        String str = (String) next;
                        if (str.length() == 1) {
                            next = Character.valueOf(str.charAt(0));
                        }
                    } else if (componentType.isArray()) {
                        if (next instanceof List) {
                            next = a((List) next, componentType, map);
                        } else if (next instanceof TemplateSequenceModel) {
                            next = x((TemplateSequenceModel) next, componentType, false, map);
                        }
                    } else if (zIsAssignableFrom && next.getClass().isArray()) {
                        next = m28697for(next);
                    }
                }
                try {
                    Array.set(objNewInstance, i, next);
                    i++;
                } catch (IllegalArgumentException e) {
                    throw new k52("Failed to convert " + freemarker.template.utility.Cif.m29273class(list) + " object to " + freemarker.template.utility.Cif.m29273class(objNewInstance) + ": Problematic List item at index " + i + " with value type: " + freemarker.template.utility.Cif.m29273class(next), (Exception) e);
                }
            }
            return objNewInstance;
        } finally {
            map.remove(list);
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public TemplateModel m28687abstract(Object obj, Method method, Object[] objArr) throws IllegalAccessException, k52, InvocationTargetException {
        return method.getReturnType() == Void.TYPE ? TemplateModel.NOTHING : m28712throws().wrap(method.invoke(obj, objArr));
    }

    public Object b(Class<?> cls, List list) throws k52 {
        try {
            Object obj = this.f24645if.m28530const(cls).get(Cclass.f24491static);
            if (obj == null) {
                throw new k52("Class " + cls.getName() + " has no public constructors.");
            }
            if (obj instanceof b) {
                b bVar = (b) obj;
                Constructor constructor = (Constructor) bVar.m28494for();
                try {
                    return constructor.newInstance(bVar.m28495new(list, this));
                } catch (Exception e) {
                    if (e instanceof k52) {
                        throw ((k52) e);
                    }
                    throw j.m28653const(null, constructor, e);
                }
            }
            if (!(obj instanceof Ccontinue)) {
                throw new mc();
            }
            Cfinally cfinallyM28577else = ((Ccontinue) obj).m28577else(list, this);
            try {
                return cfinallyM28577else.m28610for(this);
            } catch (Exception e2) {
                if (e2 instanceof k52) {
                    throw ((k52) e2);
                }
                throw j.m28651catch(null, cfinallyM28577else.m28611if(), e2);
            }
        } catch (k52 e3) {
            throw e3;
        } catch (Exception e4) {
            throw new k52("Error while creating new instance of class " + cls.getName() + "; see cause exception", e4);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m28688break(boolean z) {
        if (z) {
            writeProtect();
        }
        d();
    }

    /* renamed from: case, reason: not valid java name */
    public void m28689case() {
        this.f24645if.m28529case();
    }

    @Deprecated
    /* renamed from: catch, reason: not valid java name */
    public void m28690catch(Class<?> cls, Method method, Ccase ccase) {
    }

    /* renamed from: const, reason: not valid java name */
    public Cclass m28691const() {
        return this.f24645if;
    }

    /* renamed from: continue, reason: not valid java name */
    public boolean m28692continue() {
        return m28684strictfp(m28699import());
    }

    /* renamed from: default, reason: not valid java name */
    public boolean m28693default() {
        return this.f24647super;
    }

    public void e(Class<?> cls) {
        this.f24645if.b(cls);
    }

    /* renamed from: extends, reason: not valid java name */
    public Object m28694extends() {
        return this.f24640do;
    }

    /* renamed from: final, reason: not valid java name */
    public int m28695final() {
        return this.f24635break;
    }

    /* renamed from: finally, reason: not valid java name */
    public TemplateHashModel m28696finally() {
        return this.f24643for;
    }

    /* renamed from: for, reason: not valid java name */
    public List<?> m28697for(Object obj) throws k52 {
        if (!(obj instanceof Object[])) {
            return Array.getLength(obj) == 0 ? Collections.EMPTY_LIST : new Cprotected(obj);
        }
        Object[] objArr = (Object[]) obj;
        return objArr.length == 0 ? Collections.EMPTY_LIST : new Cpackage(objArr);
    }

    public void g(int i) {
        synchronized (this) {
            m28702new();
            this.f24635break = i;
        }
    }

    public void h(boolean z) {
        m28702new();
        if (this.f24645if.m28545while() != z) {
            Cconst cconstM28534goto = this.f24645if.m28534goto();
            cconstM28534goto.m28556catch(z);
            f(cconstM28534goto);
        }
    }

    public void i(int i) {
        m28702new();
        if (this.f24645if.m28535import() != i) {
            Cconst cconstM28534goto = this.f24645if.m28534goto();
            cconstM28534goto.m28557class(i);
            f(cconstM28534goto);
        }
    }

    /* renamed from: implements, reason: not valid java name */
    public boolean m28698implements() {
        return this.f24638class;
    }

    /* renamed from: import, reason: not valid java name */
    public we2 m28699import() {
        return this.f24649throw;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public boolean m28700instanceof() {
        return this.f24639const;
    }

    @Override // freemarker.template.utility.WriteProtectable
    public boolean isWriteProtected() {
        return this.f24644goto;
    }

    public void j(MethodAppearanceFineTuner methodAppearanceFineTuner) {
        m28702new();
        if (this.f24645if.m28540static() != methodAppearanceFineTuner) {
            Cconst cconstM28534goto = this.f24645if.m28534goto();
            cconstM28534goto.m28558const(methodAppearanceFineTuner);
            f(cconstM28534goto);
        }
    }

    public void k(MethodSorter methodSorter) {
        m28702new();
        if (this.f24645if.m28544throws() != methodSorter) {
            Cconst cconstM28534goto = this.f24645if.m28534goto();
            cconstM28534goto.m28561final(methodSorter);
            f(cconstM28534goto);
        }
    }

    public void l(boolean z) {
        synchronized (this) {
            m28702new();
            this.f24638class = z;
        }
    }

    @Deprecated
    public void m(TemplateModel templateModel) {
        m28702new();
        this.f24648this = templateModel;
    }

    public void n(ObjectWrapper objectWrapper) {
        m28702new();
        this.f24637catch = objectWrapper;
    }

    @Deprecated
    /* renamed from: native, reason: not valid java name */
    public TemplateModel m28701native(Object obj, ModelFactory modelFactory) {
        return modelFactory.create(obj, this);
    }

    /* renamed from: new, reason: not valid java name */
    public void m28702new() {
        if (this.f24644goto) {
            throw new IllegalStateException("Can't modify the " + getClass().getName() + " object, as it was write protected.");
        }
    }

    public void o(boolean z) {
        m28702new();
        this.f24647super = z;
    }

    public void p(boolean z) {
        m28702new();
        this.f24639const = z;
    }

    /* renamed from: package, reason: not valid java name */
    public boolean m28703package() {
        return this.f24645if.m28537package();
    }

    /* renamed from: private, reason: not valid java name */
    public boolean m28704private() {
        return this.f24650try.m29135new();
    }

    /* renamed from: protected, reason: not valid java name */
    public boolean m28705protected() {
        return this.f24645if.m28539public();
    }

    /* renamed from: public, reason: not valid java name */
    public MethodAppearanceFineTuner m28706public() {
        return this.f24645if.m28540static();
    }

    public void q(boolean z) {
        m28702new();
        this.f24642final = z;
    }

    public void r(boolean z) {
        m28702new();
        if (this.f24645if.m28537package() != z) {
            Cconst cconstM28534goto = this.f24645if.m28534goto();
            cconstM28534goto.m28565super(z);
            f(cconstM28534goto);
        }
    }

    /* renamed from: return, reason: not valid java name */
    public MethodSorter m28707return() {
        return this.f24645if.m28544throws();
    }

    public void s(boolean z) {
        m28702new();
        this.f24650try.m29134goto(z);
    }

    /* renamed from: static, reason: not valid java name */
    public freemarker.ext.util.Cif m28708static() {
        return this.f24650try;
    }

    /* renamed from: switch, reason: not valid java name */
    public ModelFactory mo28709switch(Class<?> cls) {
        return Map.class.isAssignableFrom(cls) ? this.f24639const ? a.f24473for : Cthrows.f24623goto : Collection.class.isAssignableFrom(cls) ? Csuper.f24619goto : Number.class.isAssignableFrom(cls) ? Cprivate.f24603else : Date.class.isAssignableFrom(cls) ? Cthrow.f24621goto : Boolean.class == cls ? this.f24651while : ResourceBundle.class.isAssignableFrom(cls) ? Cimplements.f24587goto : Iterator.class.isAssignableFrom(cls) ? f24626default : Enumeration.class.isAssignableFrom(cls) ? f24627extends : cls.isArray() ? freemarker.ext.beans.Cfor.f24550goto : f.f24543else;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public boolean m28710synchronized() {
        return this.f24642final;
    }

    public String t() {
        String str;
        StringBuilder sb = new StringBuilder();
        sb.append("simpleMapWrapper=");
        sb.append(this.f24639const);
        sb.append(", exposureLevel=");
        sb.append(this.f24645if.m28535import());
        sb.append(", exposeFields=");
        sb.append(this.f24645if.m28545while());
        sb.append(", preferIndexedReadMethod=");
        sb.append(this.f24647super);
        sb.append(", treatDefaultMethodsAsBeanMembers=");
        sb.append(this.f24645if.m28537package());
        sb.append(", sharedClassIntrospCache=");
        if (this.f24645if.m28528abstract()) {
            str = "@" + System.identityHashCode(this.f24645if);
        } else {
            str = "none";
        }
        sb.append(str);
        return sb.toString();
    }

    /* renamed from: throw, reason: not valid java name */
    public TemplateHashModel m28711throw() {
        Ccatch ccatch = this.f24646new;
        if (ccatch != null) {
            return ccatch;
        }
        throw new UnsupportedOperationException("Enums not supported before J2SE 5.");
    }

    /* renamed from: throws, reason: not valid java name */
    public ObjectWrapper m28712throws() {
        return this.f24637catch;
    }

    public String toString() {
        String str;
        String strT = t();
        StringBuilder sb = new StringBuilder();
        sb.append(freemarker.template.utility.Cif.m29273class(this));
        sb.append("@");
        sb.append(System.identityHashCode(this));
        sb.append("(");
        sb.append(this.f24649throw);
        sb.append(", ");
        if (strT.length() != 0) {
            str = strT + ", ...";
        } else {
            str = "";
        }
        sb.append(str);
        sb.append(")");
        return sb.toString();
    }

    /* renamed from: transient, reason: not valid java name */
    public boolean m28713transient() {
        return this.f24645if.m28545while();
    }

    @Deprecated
    /* renamed from: try, reason: not valid java name */
    public void m28714try() {
        this.f24645if.m28529case();
    }

    @Override // freemarker.template.ObjectWrapperAndUnwrapper
    public Object tryUnwrapTo(TemplateModel templateModel, Class<?> cls) throws k52 {
        return u(templateModel, cls, 0);
    }

    public Object u(TemplateModel templateModel, Class<?> cls, int i) throws k52 {
        Object objV = v(templateModel, cls, i, null);
        return ((i & 1) == 0 || !(objV instanceof Number)) ? objV : OverloadedNumberUtil.m28477do((Number) objV, i);
    }

    @Override // freemarker.template.ObjectWrapperAndUnwrapper
    public Object unwrap(TemplateModel templateModel) throws k52 {
        return w(templateModel, Object.class);
    }

    /* renamed from: volatile, reason: not valid java name */
    public boolean m28715volatile() {
        return m28683interface(m28699import());
    }

    public Object w(TemplateModel templateModel, Class<?> cls) throws k52 {
        Object objTryUnwrapTo = tryUnwrapTo(templateModel, cls);
        if (objTryUnwrapTo != ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS) {
            return objTryUnwrapTo;
        }
        throw new k52("Can not unwrap model of type " + templateModel.getClass().getName() + " to type " + cls.getName());
    }

    /* renamed from: while, reason: not valid java name */
    public int m28716while() {
        return this.f24645if.m28535import();
    }

    @Override // freemarker.template.ObjectWrapper
    public TemplateModel wrap(Object obj) throws k52 {
        return obj == null ? this.f24648this : this.f24650try.m29133for(obj);
    }

    @Override // freemarker.template.utility.ObjectWrapperWithAPISupport
    public TemplateHashModel wrapAsAPI(Object obj) throws k52 {
        return new freemarker.ext.beans.Cdo(obj, this);
    }

    @Override // freemarker.template.utility.WriteProtectable
    public void writeProtect() {
        this.f24644goto = true;
    }

    public Object x(TemplateSequenceModel templateSequenceModel, Class<?> cls, boolean z, Map<Object, Object> map) throws k52, NegativeArraySizeException {
        if (map != null) {
            Object obj = map.get(templateSequenceModel);
            if (obj != null) {
                return obj;
            }
        } else {
            map = new IdentityHashMap<>();
        }
        Class<?> componentType = cls.getComponentType();
        int size = templateSequenceModel.size();
        Object objNewInstance = Array.newInstance(componentType, size);
        map.put(templateSequenceModel, objNewInstance);
        for (int i = 0; i < size; i++) {
            try {
                TemplateModel templateModel = templateSequenceModel.get(i);
                Object objV = v(templateModel, componentType, 0, map);
                Object obj2 = ObjectWrapperAndUnwrapper.CANT_UNWRAP_TO_TARGET_CLASS;
                if (objV == obj2) {
                    if (z) {
                        return obj2;
                    }
                    throw new vl2("Failed to convert ", new bl2(templateSequenceModel), " object to ", new il2(objNewInstance.getClass()), ": Problematic sequence item at index ", Integer.valueOf(i), " with value type: ", new bl2(templateModel));
                }
                Array.set(objNewInstance, i, objV);
            } finally {
                map.remove(templateSequenceModel);
            }
        }
        return objNewInstance;
    }

    public TemplateMethodModelEx y(Object obj, Method method) {
        return new c(obj, method, method.getParameterTypes(), this);
    }

    public Ctry(we2 we2Var) {
        this(new Cdo(we2Var), false);
    }

    public Ctry(freemarker.ext.beans.Celse celse, boolean z) {
        this(celse, z, true);
    }

    public Ctry(freemarker.ext.beans.Celse celse, boolean z, boolean z2) {
        boolean z3;
        this.f24648this = null;
        this.f24637catch = this;
        this.f24638class = true;
        this.f24651while = new Cfor();
        if (celse.m28589else() == null) {
            Class<?> superclass = getClass();
            boolean z4 = false;
            while (!z4 && superclass != Cthis.class && superclass != Ctry.class && superclass != Cpublic.class) {
                try {
                    try {
                        superclass.getDeclaredMethod("finetuneMethodAppearance", Class.class, Method.class, Ccase.class);
                        z4 = true;
                    } catch (NoSuchMethodException unused) {
                        superclass = superclass.getSuperclass();
                    }
                } catch (Throwable th) {
                    f24628import.mo29182final("Failed to check if finetuneMethodAppearance is overidden in " + superclass.getName() + "; acting like if it was, but this way it won't utilize the shared class introspection cache.", th);
                    z3 = true;
                    z4 = true;
                }
            }
            z3 = false;
            if (z4) {
                if (!z3 && !f24634throws) {
                    f24628import.mo29187package("Overriding " + Ctry.class.getName() + ".finetuneMethodAppearance is deprecated and will be banned sometimes in the future. Use setMethodAppearanceFineTuner instead.");
                    f24634throws = true;
                }
                celse = (freemarker.ext.beans.Celse) celse.m28588do(false);
                celse.m28594import(new Cif());
            }
        }
        this.f24649throw = celse.m28583case();
        this.f24639const = celse.m28586const();
        this.f24647super = celse.m28582break();
        this.f24635break = celse.m28591for();
        this.f24637catch = celse.m28602this() != null ? celse.m28602this() : this;
        this.f24642final = celse.m28590final();
        if (!z) {
            Object obj = new Object();
            this.f24640do = obj;
            this.f24645if = new Cclass(_BeansAPI.m28486new(celse), obj);
        } else {
            Cclass cclassM28559do = _BeansAPI.m28486new(celse).m28559do();
            this.f24645if = cclassM28559do;
            this.f24640do = cclassM28559do.m28533finally();
        }
        this.f24636case = new ac(Boolean.FALSE, this);
        this.f24641else = new ac(Boolean.TRUE, this);
        this.f24643for = new e(this);
        this.f24646new = new i(this);
        this.f24650try = new l8(this);
        s(celse.m28585class());
        m28688break(z);
    }
}
