package freemarker.ext.beans;

import android.support.v4.mc;
import android.support.v4.ml2;
import android.support.v4.w41;
import freemarker.core.b2;
import freemarker.ext.beans.Ctry;
import freemarker.template.utility.Cconst;
import java.beans.BeanInfo;
import java.beans.IndexedPropertyDescriptor;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.MethodDescriptor;
import java.beans.PropertyDescriptor;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;

/* renamed from: freemarker.ext.beans.class, reason: invalid class name */
/* loaded from: classes.dex */
class Cclass {

    /* renamed from: import, reason: not valid java name */
    private static final String f24487import = "Error initializing JRebel integration. JRebel integration disabled.";

    /* renamed from: public, reason: not valid java name */
    private static final ClassChangeNotifier f24489public;

    /* renamed from: return, reason: not valid java name */
    private static final Object f24490return;

    /* renamed from: static, reason: not valid java name */
    public static final Object f24491static;

    /* renamed from: switch, reason: not valid java name */
    public static final Object f24492switch;

    /* renamed from: while, reason: not valid java name */
    private static final String f24494while = "org.zeroturnaround.javarebel.ClassEventListener";

    /* renamed from: break, reason: not valid java name */
    private final Map<Class<?>, Map<Object, Object>> f24495break;

    /* renamed from: case, reason: not valid java name */
    public final boolean f24496case;

    /* renamed from: catch, reason: not valid java name */
    private final Set<String> f24497catch;

    /* renamed from: class, reason: not valid java name */
    private final Set<Class<?>> f24498class;

    /* renamed from: const, reason: not valid java name */
    private final List<WeakReference<Object>> f24499const;

    /* renamed from: do, reason: not valid java name */
    public final int f24500do;

    /* renamed from: else, reason: not valid java name */
    private final boolean f24501else;

    /* renamed from: final, reason: not valid java name */
    private final ReferenceQueue<Object> f24502final;

    /* renamed from: for, reason: not valid java name */
    public final MethodAppearanceFineTuner f24503for;

    /* renamed from: goto, reason: not valid java name */
    private final boolean f24504goto;

    /* renamed from: if, reason: not valid java name */
    public final boolean f24505if;

    /* renamed from: new, reason: not valid java name */
    public final MethodSorter f24506new;

    /* renamed from: super, reason: not valid java name */
    private int f24507super;

    /* renamed from: this, reason: not valid java name */
    private final Object f24508this;

    /* renamed from: try, reason: not valid java name */
    public final boolean f24509try;

    /* renamed from: throw, reason: not valid java name */
    private static final freemarker.log.Cif f24493throw = freemarker.log.Cif.m29193break("freemarker.beans");

    /* renamed from: native, reason: not valid java name */
    public static final boolean f24488native = b2.f23511if.equals(Cconst.m29258for("freemarker.development", b2.f23510do));

    static {
        boolean z;
        try {
            Class.forName(f24494while);
            z = true;
        } catch (Throwable th) {
            try {
                if (!(th instanceof ClassNotFoundException)) {
                    f24493throw.mo29181else(f24487import, th);
                }
            } catch (Throwable unused) {
            }
            z = false;
        }
        ClassChangeNotifier classChangeNotifier = null;
        if (z) {
            try {
                classChangeNotifier = (ClassChangeNotifier) Cswitch.class.newInstance();
            } catch (Throwable th2) {
                try {
                    f24493throw.mo29181else(f24487import, th2);
                } catch (Throwable unused2) {
                }
            }
        }
        f24489public = classChangeNotifier;
        f24490return = new Object();
        f24491static = new Object();
        f24492switch = new Object();
    }

    public Cclass(Cconst cconst, Object obj) {
        this(cconst, obj, false, false);
    }

    private void a(Object obj) {
        synchronized (this.f24508this) {
            this.f24499const.add(new WeakReference<>(obj, this.f24502final));
            c();
        }
    }

    /* renamed from: break, reason: not valid java name */
    private static Map<Cdo, List<Method>> m28507break(Class<?> cls) throws SecurityException {
        HashMap map = new HashMap();
        m28508catch(cls, map);
        return map;
    }

    private void c() {
        while (true) {
            Reference<? extends Object> referencePoll = this.f24502final.poll();
            if (referencePoll == null) {
                return;
            }
            synchronized (this.f24508this) {
                Iterator<WeakReference<Object>> it = this.f24499const.iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    } else if (it.next() == referencePoll) {
                        it.remove();
                        break;
                    }
                }
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    private static void m28508catch(Class<?> cls, Map<Cdo, List<Method>> map) throws SecurityException {
        if (Modifier.isPublic(cls.getModifiers())) {
            try {
                for (Method method : cls.getMethods()) {
                    Cdo cdo = new Cdo(method);
                    List<Method> linkedList = map.get(cdo);
                    if (linkedList == null) {
                        linkedList = new LinkedList<>();
                        map.put(cdo, linkedList);
                    }
                    linkedList.add(method);
                }
                return;
            } catch (SecurityException e) {
                f24493throw.mo29188private("Could not discover accessible methods of class " + cls.getName() + ", attemping superclasses/interfaces.", e);
            }
        }
        for (Class<?> cls2 : cls.getInterfaces()) {
            m28508catch(cls2, map);
        }
        Class<? super Object> superclass = cls.getSuperclass();
        if (superclass != null) {
            m28508catch(superclass, map);
        }
    }

    /* renamed from: class, reason: not valid java name */
    private void m28509class() {
        synchronized (this.f24508this) {
            this.f24495break.clear();
            this.f24497catch.clear();
            this.f24507super++;
            Iterator<WeakReference<Object>> it = this.f24499const.iterator();
            while (it.hasNext()) {
                Object obj = it.next().get();
                if (obj != null) {
                    if (obj instanceof Ccatch) {
                        ((Ccatch) obj).m28503do();
                    } else {
                        if (!(obj instanceof freemarker.ext.util.Cif)) {
                            throw new mc();
                        }
                        ((freemarker.ext.util.Cif) obj).m29132do();
                    }
                }
            }
            c();
        }
    }

    private void d(List<MethodDescriptor> list) {
        MethodSorter methodSorter = this.f24506new;
        if (methodSorter != null) {
            methodSorter.sortMethodDescriptors(list);
        }
    }

    /* renamed from: default, reason: not valid java name */
    private List<PropertyDescriptor> m28510default(BeanInfo beanInfo, Class<?> cls) throws SecurityException {
        Method method;
        Method method2;
        PropertyDescriptor indexedPropertyDescriptor;
        String strM28657for;
        PropertyDescriptor[] propertyDescriptors = beanInfo.getPropertyDescriptors();
        List<PropertyDescriptor> listAsList = propertyDescriptors != null ? Arrays.asList(propertyDescriptors) : Collections.emptyList();
        if (this.f24509try && ml2.f3944new != null) {
            LinkedHashMap<String, Object> linkedHashMap = null;
            for (Method method3 : cls.getMethods()) {
                if (ml2.f3944new.isDefaultMethod(method3) && method3.getReturnType() != Void.TYPE && !method3.isBridge()) {
                    Class<?>[] parameterTypes = method3.getParameterTypes();
                    if ((parameterTypes.length == 0 || (parameterTypes.length == 1 && parameterTypes[0] == Integer.TYPE)) && (strM28657for = j.m28657for(method3.getName(), method3.getReturnType())) != null) {
                        if (linkedHashMap == null) {
                            linkedHashMap = new LinkedHashMap<>();
                        }
                        if (parameterTypes.length == 0) {
                            m28517interface(linkedHashMap, strM28657for, method3);
                        } else {
                            m28520protected(linkedHashMap, strM28657for, new Cif(null, method3));
                        }
                    }
                }
            }
            if (linkedHashMap == null) {
                return listAsList;
            }
            Iterator<PropertyDescriptor> it = listAsList.iterator();
            while (it.hasNext()) {
                m28527volatile(linkedHashMap, it.next());
            }
            listAsList = new ArrayList<>(linkedHashMap.size());
            for (Map.Entry<String, Object> entry : linkedHashMap.entrySet()) {
                String key = entry.getKey();
                Object value = entry.getValue();
                if (value instanceof PropertyDescriptor) {
                    listAsList.add((PropertyDescriptor) value);
                } else {
                    if (value instanceof Method) {
                        method2 = (Method) value;
                        method = null;
                    } else {
                        if (!(value instanceof Cif)) {
                            throw new mc();
                        }
                        Cif cif = (Cif) value;
                        Method method4 = cif.f24514do;
                        Method method5 = cif.f24515if;
                        if (method4 != null && method5 != null && method5.getReturnType() != method4.getReturnType().getComponentType()) {
                            method5 = null;
                        }
                        method = method5;
                        method2 = method4;
                    }
                    if (method != null) {
                        try {
                            indexedPropertyDescriptor = new IndexedPropertyDescriptor(key, method2, (Method) null, method, (Method) null);
                        } catch (IntrospectionException e) {
                            freemarker.log.Cif cif2 = f24493throw;
                            if (cif2.mo29189public()) {
                                cif2.mo29188private("Failed creating property descriptor for " + cls.getName() + " property " + key, e);
                            }
                        }
                    } else {
                        indexedPropertyDescriptor = new PropertyDescriptor(key, method2, (Method) null);
                    }
                    listAsList.add(indexedPropertyDescriptor);
                }
            }
        }
        return listAsList;
    }

    /* renamed from: do, reason: not valid java name */
    private void m28511do(Map<Object, Object> map, Class<?> cls, Map<Cdo, List<Method>> map2) throws SecurityException, IntrospectionException {
        BeanInfo beanInfo = Introspector.getBeanInfo(cls);
        List<PropertyDescriptor> listM28510default = m28510default(beanInfo, cls);
        for (int size = listM28510default.size() - 1; size >= 0; size--) {
            m28526try(map, listM28510default.get(size), cls, map2);
        }
        if (this.f24500do < 2) {
            Ctry.Ccase ccase = new Ctry.Ccase();
            List<MethodDescriptor> listM28523switch = m28523switch(beanInfo, cls);
            d(listM28523switch);
            Ctry.Celse celse = null;
            IdentityHashMap identityHashMap = null;
            for (int size2 = listM28523switch.size() - 1; size2 >= 0; size2--) {
                Method methodM28521return = m28521return(listM28523switch.get(size2).getMethod(), map2);
                if (methodM28521return != null && m28538private(methodM28521return)) {
                    ccase.m28725try(methodM28521return);
                    if (this.f24503for != null) {
                        if (celse == null) {
                            celse = new Ctry.Celse();
                        }
                        celse.m28727for(cls);
                        celse.m28729new(methodM28521return);
                        this.f24503for.process(celse, ccase);
                    }
                    PropertyDescriptor propertyDescriptorM28718do = ccase.m28718do();
                    if (propertyDescriptorM28718do != null && (ccase.m28723new() || !(map.get(propertyDescriptorM28718do.getName()) instanceof Cpublic))) {
                        m28526try(map, propertyDescriptorM28718do, cls, map2);
                    }
                    Object objM28722if = ccase.m28722if();
                    if (objM28722if != null) {
                        Object obj = map.get(objM28722if);
                        if (obj instanceof Method) {
                            Ccontinue ccontinue = new Ccontinue(this.f24496case);
                            ccontinue.m28576case((Method) obj);
                            ccontinue.m28576case(methodM28521return);
                            map.put(objM28722if, ccontinue);
                            if (identityHashMap == null || !identityHashMap.containsKey(obj)) {
                                m28522super(map).remove(obj);
                            }
                        } else if (obj instanceof Ccontinue) {
                            ((Ccontinue) obj).m28576case(methodM28521return);
                        } else if (ccase.m28720for() || !(obj instanceof Cpublic)) {
                            map.put(objM28722if, methodM28521return);
                            if (m28522super(map).put(methodM28521return, methodM28521return.getParameterTypes()) != null) {
                                if (identityHashMap == null) {
                                    identityHashMap = new IdentityHashMap();
                                }
                                identityHashMap.put(methodM28521return, null);
                            }
                        }
                    }
                }
            }
        }
    }

    /* renamed from: else, reason: not valid java name */
    private boolean m28512else(List<Method> list, Method method) {
        if (list == null) {
            return false;
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        Iterator<Method> it = list.iterator();
        while (it.hasNext()) {
            if (Arrays.equals(it.next().getParameterTypes(), parameterTypes)) {
                return true;
            }
        }
        return false;
    }

    /* renamed from: final, reason: not valid java name */
    public static Class<?>[] m28513final(Map<Object, Object> map, Method method) {
        return (Class[]) ((Map) map.get(f24490return)).get(method);
    }

    /* renamed from: for, reason: not valid java name */
    private void m28514for(Map<Object, Object> map, Class<?> cls) throws SecurityException {
        for (Field field : cls.getFields()) {
            if ((field.getModifiers() & 8) == 0) {
                map.put(field.getName(), field);
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    private void m28515if(Map<Object, Object> map, Class<?> cls) throws SecurityException {
        try {
            Constructor<?>[] constructors = cls.getConstructors();
            if (constructors.length == 1) {
                Constructor<?> constructor = constructors[0];
                map.put(f24491static, new b(constructor, constructor.getParameterTypes()));
            } else if (constructors.length > 1) {
                Ccontinue ccontinue = new Ccontinue(this.f24496case);
                for (Constructor<?> constructor2 : constructors) {
                    ccontinue.m28578new(constructor2);
                }
                map.put(f24491static, ccontinue);
            }
        } catch (SecurityException e) {
            f24493throw.mo29188private("Can't discover constructors for class " + cls.getName(), e);
        }
    }

    /* renamed from: implements, reason: not valid java name */
    private void m28516implements(LinkedHashMap<String, Object> linkedHashMap, String str, Object obj, Cif cif) {
        Cif cifM28551new = Cif.m28551new(Cif.m28549for(obj), cif);
        if (cifM28551new.equals(cif)) {
            return;
        }
        linkedHashMap.put(str, cifM28551new);
    }

    /* renamed from: interface, reason: not valid java name */
    private void m28517interface(LinkedHashMap<String, Object> linkedHashMap, String str, Method method) {
        Object objPut = linkedHashMap.put(str, method);
        if (objPut != null) {
            m28516implements(linkedHashMap, str, objPut, new Cif(method, null));
        }
    }

    /* renamed from: native, reason: not valid java name */
    private static Method m28518native(Cdo cdo, Map<Cdo, List<Method>> map) {
        List<Method> list = map.get(cdo);
        if (list == null || list.isEmpty()) {
            return null;
        }
        return list.get(0);
    }

    /* renamed from: new, reason: not valid java name */
    private void m28519new(Map<Object, Object> map, Map<Cdo, List<Method>> map2) {
        Method methodM28518native = m28518native(Cdo.f24510for, map2);
        if (methodM28518native == null) {
            methodM28518native = m28518native(Cdo.f24511new, map2);
        }
        if (methodM28518native != null) {
            map.put(f24492switch, methodM28518native);
        }
    }

    /* renamed from: protected, reason: not valid java name */
    private void m28520protected(LinkedHashMap<String, Object> linkedHashMap, String str, Cif cif) {
        Object objPut = linkedHashMap.put(str, cif);
        if (objPut != null) {
            m28516implements(linkedHashMap, str, objPut, cif);
        }
    }

    /* renamed from: return, reason: not valid java name */
    private static Method m28521return(Method method, Map<Cdo, List<Method>> map) {
        List<Method> list;
        if (method == null || (list = map.get(new Cdo(method))) == null) {
            return null;
        }
        for (Method method2 : list) {
            if (method2.getReturnType() == method.getReturnType()) {
                return method2;
            }
        }
        return null;
    }

    /* renamed from: super, reason: not valid java name */
    private static Map<Method, Class<?>[]> m28522super(Map<Object, Object> map) {
        Object obj = f24490return;
        Map<Method, Class<?>[]> map2 = (Map) map.get(obj);
        if (map2 != null) {
            return map2;
        }
        HashMap map3 = new HashMap();
        map.put(obj, map3);
        return map3;
    }

    /* renamed from: switch, reason: not valid java name */
    private List<MethodDescriptor> m28523switch(BeanInfo beanInfo, Class<?> cls) throws SecurityException {
        MethodDescriptor[] methodDescriptors = beanInfo.getMethodDescriptors();
        List<MethodDescriptor> listEmptyList = (methodDescriptors == null || methodDescriptors.length == 0) ? Collections.emptyList() : Arrays.asList(methodDescriptors);
        if (!this.f24509try || ml2.f3944new == null) {
            return listEmptyList;
        }
        HashMap map = null;
        for (Method method : cls.getMethods()) {
            if (ml2.f3944new.isDefaultMethod(method) && !method.isBridge()) {
                if (map == null) {
                    map = new HashMap();
                }
                List arrayList = (List) map.get(method.getName());
                if (arrayList == null) {
                    arrayList = new ArrayList(0);
                    map.put(method.getName(), arrayList);
                }
                arrayList.add(method);
            }
        }
        if (map == null) {
            return listEmptyList;
        }
        ArrayList arrayList2 = new ArrayList(listEmptyList.size() + 16);
        for (MethodDescriptor methodDescriptor : listEmptyList) {
            Method method2 = methodDescriptor.getMethod();
            if (!m28512else((List) map.get(method2.getName()), method2)) {
                arrayList2.add(methodDescriptor);
            }
        }
        Iterator it = map.entrySet().iterator();
        while (it.hasNext()) {
            Iterator it2 = ((List) ((Map.Entry) it.next()).getValue()).iterator();
            while (it2.hasNext()) {
                arrayList2.add(new MethodDescriptor((Method) it2.next()));
            }
        }
        return arrayList2;
    }

    /* renamed from: this, reason: not valid java name */
    private Map<Object, Object> m28524this(Class<?> cls) throws SecurityException {
        HashMap map = new HashMap();
        if (this.f24505if) {
            m28514for(map, cls);
        }
        Map<Cdo, List<Method>> mapM28507break = m28507break(cls);
        m28519new(map, mapM28507break);
        if (this.f24500do != 3) {
            try {
                m28511do(map, cls, mapM28507break);
            } catch (IntrospectionException e) {
                f24493throw.mo29188private("Couldn't properly perform introspection for class " + cls, e);
                map.clear();
            }
        }
        m28515if(map, cls);
        if (map.size() > 1) {
            return map;
        }
        if (map.size() == 0) {
            return Collections.emptyMap();
        }
        Map.Entry<Object, Object> next = map.entrySet().iterator().next();
        return Collections.singletonMap(next.getKey(), next.getValue());
    }

    /* renamed from: transient, reason: not valid java name */
    private void m28525transient(String str) {
        freemarker.log.Cif cif = f24493throw;
        if (cif.mo29185native()) {
            cif.mo29180const("Detected multiple classes with the same name, \"" + str + "\". Assuming it was a class-reloading. Clearing class introspection caches to release old data.");
        }
        m28509class();
    }

    /* renamed from: try, reason: not valid java name */
    private void m28526try(Map<Object, Object> map, PropertyDescriptor propertyDescriptor, Class<?> cls, Map<Cdo, List<Method>> map2) {
        Method methodM28521return = m28521return(propertyDescriptor.getReadMethod(), map2);
        if (methodM28521return != null && !m28538private(methodM28521return)) {
            methodM28521return = null;
        }
        if (propertyDescriptor instanceof IndexedPropertyDescriptor) {
            Method methodM28521return2 = m28521return(((IndexedPropertyDescriptor) propertyDescriptor).getIndexedReadMethod(), map2);
            method = (methodM28521return2 == null || m28538private(methodM28521return2)) ? methodM28521return2 : null;
            if (method != null) {
                m28522super(map).put(method, method.getParameterTypes());
            }
        }
        if (methodM28521return == null && method == null) {
            return;
        }
        map.put(propertyDescriptor.getName(), new Cpublic(methodM28521return, method));
    }

    /* renamed from: volatile, reason: not valid java name */
    private void m28527volatile(LinkedHashMap<String, Object> linkedHashMap, PropertyDescriptor propertyDescriptor) {
        String name = propertyDescriptor.getName();
        Object objPut = linkedHashMap.put(name, propertyDescriptor);
        if (objPut != null) {
            m28516implements(linkedHashMap, name, objPut, new Cif(propertyDescriptor));
        }
    }

    /* renamed from: abstract, reason: not valid java name */
    public boolean m28528abstract() {
        return this.f24504goto;
    }

    public void b(Class<?> cls) {
        synchronized (this.f24508this) {
            this.f24495break.remove(cls);
            this.f24497catch.remove(cls.getName());
            this.f24507super++;
            Iterator<WeakReference<Object>> it = this.f24499const.iterator();
            while (it.hasNext()) {
                Object obj = it.next().get();
                if (obj != null) {
                    if (obj instanceof Ccatch) {
                        ((Ccatch) obj).m28506try(cls);
                    } else {
                        if (!(obj instanceof freemarker.ext.util.Cif)) {
                            throw new mc();
                        }
                        ((freemarker.ext.util.Cif) obj).m29132do();
                    }
                }
            }
            c();
        }
    }

    /* renamed from: case, reason: not valid java name */
    public void m28529case() {
        if (!m28539public()) {
            m28509class();
            return;
        }
        throw new IllegalStateException("It's not allowed to clear the whole cache in a read-only " + getClass().getName() + "instance. Use removeFromClassIntrospectionCache(String prefix) instead.");
    }

    /* renamed from: const, reason: not valid java name */
    public Map<Object, Object> m28530const(Class<?> cls) {
        Map<Object, Object> map = this.f24495break.get(cls);
        if (map != null) {
            return map;
        }
        synchronized (this.f24508this) {
            Map<Object, Object> map2 = this.f24495break.get(cls);
            if (map2 != null) {
                return map2;
            }
            String name = cls.getName();
            if (this.f24497catch.contains(name)) {
                m28525transient(name);
            }
            while (map2 == null && this.f24498class.contains(cls)) {
                try {
                    this.f24508this.wait();
                    map2 = this.f24495break.get(cls);
                } catch (InterruptedException e) {
                    throw new RuntimeException("Class inrospection data lookup aborded: " + e);
                }
            }
            if (map2 != null) {
                return map2;
            }
            this.f24498class.add(cls);
            try {
                Map<Object, Object> mapM28524this = m28524this(cls);
                synchronized (this.f24508this) {
                    this.f24495break.put(cls, mapM28524this);
                    this.f24497catch.add(name);
                }
                synchronized (this.f24508this) {
                    this.f24498class.remove(cls);
                    this.f24508this.notifyAll();
                }
                return mapM28524this;
            } catch (Throwable th) {
                synchronized (this.f24508this) {
                    this.f24498class.remove(cls);
                    this.f24508this.notifyAll();
                    throw th;
                }
            }
        }
    }

    /* renamed from: continue, reason: not valid java name */
    public int m28531continue(Class<?> cls) {
        Map<Object, Object> mapM28530const = m28530const(cls);
        int size = mapM28530const.size();
        if (mapM28530const.containsKey(f24491static)) {
            size--;
        }
        if (mapM28530const.containsKey(f24492switch)) {
            size--;
        }
        return mapM28530const.containsKey(f24490return) ? size - 1 : size;
    }

    public void e(Ccatch ccatch) {
        g(ccatch);
    }

    /* renamed from: extends, reason: not valid java name */
    public Object[] m28532extends() {
        Object[] array;
        synchronized (this.f24508this) {
            array = this.f24499const.toArray();
        }
        return array;
    }

    public void f(freemarker.ext.util.Cif cif) {
        g(cif);
    }

    /* renamed from: finally, reason: not valid java name */
    public Object m28533finally() {
        return this.f24508this;
    }

    public void g(Object obj) {
        synchronized (this.f24508this) {
            Iterator<WeakReference<Object>> it = this.f24499const.iterator();
            while (it.hasNext()) {
                if (it.next().get() == obj) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: goto, reason: not valid java name */
    public Cconst m28534goto() {
        return new Cconst(this);
    }

    /* renamed from: import, reason: not valid java name */
    public int m28535import() {
        return this.f24500do;
    }

    /* renamed from: instanceof, reason: not valid java name */
    public void m28536instanceof(Ccatch ccatch) {
        a(ccatch);
    }

    /* renamed from: package, reason: not valid java name */
    public boolean m28537package() {
        return this.f24509try;
    }

    /* renamed from: private, reason: not valid java name */
    public boolean m28538private(Method method) {
        return this.f24500do < 1 || !h.m28616for(method);
    }

    /* renamed from: public, reason: not valid java name */
    public boolean m28539public() {
        return this.f24501else;
    }

    /* renamed from: static, reason: not valid java name */
    public MethodAppearanceFineTuner m28540static() {
        return this.f24503for;
    }

    /* renamed from: strictfp, reason: not valid java name */
    public Set<Object> m28541strictfp(Class<?> cls) {
        HashSet hashSet = new HashSet(m28530const(cls).keySet());
        hashSet.remove(f24491static);
        hashSet.remove(f24492switch);
        hashSet.remove(f24490return);
        return hashSet;
    }

    /* renamed from: synchronized, reason: not valid java name */
    public void m28542synchronized(freemarker.ext.util.Cif cif) {
        a(cif);
    }

    /* renamed from: throw, reason: not valid java name */
    public int m28543throw() {
        int i;
        synchronized (this.f24508this) {
            i = this.f24507super;
        }
        return i;
    }

    /* renamed from: throws, reason: not valid java name */
    public MethodSorter m28544throws() {
        return this.f24506new;
    }

    /* renamed from: while, reason: not valid java name */
    public boolean m28545while() {
        return this.f24505if;
    }

    public Cclass(Cconst cconst, Object obj, boolean z, boolean z2) {
        this.f24495break = new ConcurrentHashMap(0, 0.75f, 16);
        this.f24497catch = new HashSet(0);
        this.f24498class = new HashSet(0);
        this.f24499const = new LinkedList();
        this.f24502final = new ReferenceQueue<>();
        w41.check("sharedLock", obj);
        this.f24500do = cconst.m28564new();
        this.f24505if = cconst.m28562for();
        this.f24503for = cconst.m28555case();
        this.f24506new = cconst.m28560else();
        this.f24509try = cconst.m28563goto();
        this.f24496case = cconst.m28566this();
        this.f24508this = obj;
        this.f24501else = z;
        this.f24504goto = z2;
        ClassChangeNotifier classChangeNotifier = f24489public;
        if (classChangeNotifier != null) {
            classChangeNotifier.subscribe(this);
        }
    }

    /* renamed from: freemarker.ext.beans.class$do, reason: invalid class name */
    public static final class Cdo {

        /* renamed from: for, reason: not valid java name */
        private static final Cdo f24510for = new Cdo("get", new Class[]{String.class});

        /* renamed from: new, reason: not valid java name */
        private static final Cdo f24511new = new Cdo("get", new Class[]{Object.class});

        /* renamed from: do, reason: not valid java name */
        private final String f24512do;

        /* renamed from: if, reason: not valid java name */
        private final Class<?>[] f24513if;

        private Cdo(String str, Class<?>[] clsArr) {
            this.f24512do = str;
            this.f24513if = clsArr;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof Cdo)) {
                return false;
            }
            Cdo cdo = (Cdo) obj;
            return cdo.f24512do.equals(this.f24512do) && Arrays.equals(this.f24513if, cdo.f24513if);
        }

        public int hashCode() {
            return this.f24512do.hashCode() ^ this.f24513if.length;
        }

        public Cdo(Method method) {
            this(method.getName(), method.getParameterTypes());
        }
    }

    /* renamed from: freemarker.ext.beans.class$if, reason: invalid class name */
    public static class Cif {

        /* renamed from: do, reason: not valid java name */
        private final Method f24514do;

        /* renamed from: if, reason: not valid java name */
        private final Method f24515if;

        public Cif(Method method, Method method2) {
            this.f24514do = method;
            this.f24515if = method2;
        }

        /* renamed from: for, reason: not valid java name */
        public static Cif m28549for(Object obj) {
            if (obj instanceof Cif) {
                return (Cif) obj;
            }
            if (obj instanceof PropertyDescriptor) {
                return new Cif((PropertyDescriptor) obj);
            }
            if (obj instanceof Method) {
                return new Cif((Method) obj, null);
            }
            throw new mc("Unexpected obj type: " + obj.getClass().getName());
        }

        /* renamed from: new, reason: not valid java name */
        public static Cif m28551new(Cif cif, Cif cif2) {
            Method method = cif2.f24514do;
            if (method == null) {
                method = cif.f24514do;
            }
            Method method2 = cif2.f24515if;
            if (method2 == null) {
                method2 = cif.f24515if;
            }
            return new Cif(method, method2);
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            Cif cif = (Cif) obj;
            return cif.f24514do == this.f24514do && cif.f24515if == this.f24515if;
        }

        public int hashCode() {
            Method method = this.f24515if;
            int iHashCode = ((method == null ? 0 : method.hashCode()) + 31) * 31;
            Method method2 = this.f24514do;
            return iHashCode + (method2 != null ? method2.hashCode() : 0);
        }

        public Cif(PropertyDescriptor propertyDescriptor) {
            this(propertyDescriptor.getReadMethod(), propertyDescriptor instanceof IndexedPropertyDescriptor ? ((IndexedPropertyDescriptor) propertyDescriptor).getIndexedReadMethod() : null);
        }
    }
}
