package freemarker.ext.beans;

import android.support.v4.k52;
import android.support.v4.mc;
import android.support.v4.vm;
import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.lang.reflect.Array;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

/* loaded from: classes.dex */
public class _BeansAPI {

    public interface _BeansWrapperSubclassFactory<BW extends Ctry, BWC extends Celse> {
        BW create(BWC bwc);
    }

    private _BeansAPI() {
    }

    /* renamed from: case, reason: not valid java name */
    private static Object m28480case(Cthis cthis, Object[] objArr, Ctry ctry) throws IllegalAccessException, k52, InstantiationException, ArrayIndexOutOfBoundsException, IllegalArgumentException, NegativeArraySizeException, InvocationTargetException {
        if (objArr == null) {
            objArr = vm.f7294do;
        }
        if (cthis.mo28631goto()) {
            Class[] clsArrMo28630for = cthis.mo28630for();
            int length = clsArrMo28630for.length - 1;
            Object[] objArr2 = new Object[length + 1];
            for (int i = 0; i < length; i++) {
                objArr2[i] = objArr[i];
            }
            Class<?> componentType = clsArrMo28630for[length].getComponentType();
            int length2 = objArr.length - length;
            Object objNewInstance = Array.newInstance(componentType, length2);
            for (int i2 = 0; i2 < length2; i2++) {
                Array.set(objNewInstance, i2, objArr[length + i2]);
            }
            objArr2[length] = objNewInstance;
            objArr = objArr2;
        }
        return cthis.mo28633new(ctry, objArr);
    }

    /* renamed from: do, reason: not valid java name */
    private static <BWC extends Celse> BWC m28481do(BWC bwc) {
        return (BWC) bwc.m28588do(true);
    }

    /* renamed from: else, reason: not valid java name */
    public static Object m28482else(Class<?> cls, Object[] objArr, Ctry ctry) throws IllegalAccessException, k52, NoSuchMethodException, InstantiationException, IllegalArgumentException, InvocationTargetException {
        return m28480case(m28487try(cls, objArr), objArr, ctry);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* renamed from: for, reason: not valid java name */
    public static <BW extends Ctry, BWC extends Celse> BW m28483for(BWC bwc, Map<ClassLoader, Map<BWC, WeakReference<BW>>> map, ReferenceQueue<BW> referenceQueue, _BeansWrapperSubclassFactory<BW, BWC> _beanswrappersubclassfactory) {
        Map map2;
        Reference reference;
        ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
        synchronized (map) {
            map2 = (Map) map.get(contextClassLoader);
            if (map2 == null) {
                map2 = new HashMap();
                map.put(contextClassLoader, map2);
                reference = null;
            } else {
                reference = (Reference) map2.get(bwc);
            }
        }
        BW bw = reference != null ? (BW) reference.get() : null;
        if (bw != null) {
            return bw;
        }
        Celse celseM28481do = m28481do(bwc);
        BW bw2 = (BW) _beanswrappersubclassfactory.create(celseM28481do);
        if (!bw2.isWriteProtected()) {
            throw new mc();
        }
        synchronized (map) {
            Reference reference2 = (Reference) map2.get(celseM28481do);
            Ctry ctry = reference2 != null ? (Ctry) reference2.get() : null;
            if (ctry == null) {
                map2.put(celseM28481do, new WeakReference(bw2, referenceQueue));
            } else {
                bw2 = (BW) ctry;
            }
        }
        m28484goto(map, referenceQueue);
        return bw2;
    }

    /* renamed from: goto, reason: not valid java name */
    private static <BW extends Ctry, BWC extends Celse> void m28484goto(Map<ClassLoader, Map<BWC, WeakReference<BW>>> map, ReferenceQueue<BW> referenceQueue) {
        while (true) {
            Reference<? extends BW> referencePoll = referenceQueue.poll();
            if (referencePoll == null) {
                return;
            }
            synchronized (map) {
                Iterator<Map<BWC, WeakReference<BW>>> it = map.values().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    Iterator<WeakReference<BW>> it2 = it.next().values().iterator();
                    while (it2.hasNext()) {
                        if (it2.next() == referencePoll) {
                            it2.remove();
                            break;
                        }
                    }
                }
            }
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static String m28485if(Cnew cnew) {
        return cnew.m28668if();
    }

    /* renamed from: new, reason: not valid java name */
    public static Cconst m28486new(Celse celse) {
        return celse.m28593if();
    }

    /* renamed from: try, reason: not valid java name */
    private static Cthis m28487try(Class<?> cls, Object[] objArr) throws NoSuchMethodException, SecurityException {
        if (objArr == null) {
            objArr = vm.f7294do;
        }
        Cif cif = new Cif(objArr, true);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Constructor<?> constructor : cls.getConstructors()) {
            Ctransient ctransient = new Ctransient(constructor, constructor.getParameterTypes());
            if (j.m28658goto(constructor)) {
                arrayList2.add(ctransient);
            } else {
                arrayList.add(ctransient);
            }
        }
        Cdefault cdefaultM28625new = cif.m28625new(arrayList, false);
        Cwhile cwhile = Cwhile.f24667do;
        if (cdefaultM28625new == cwhile) {
            cdefaultM28625new = cif.m28625new(arrayList2, true);
        }
        if (!(cdefaultM28625new instanceof Cwhile)) {
            return (Cthis) cdefaultM28625new;
        }
        if (cdefaultM28625new == cwhile) {
            throw new NoSuchMethodException("There's no public " + cls.getName() + " constructor with compatible parameter list.");
        }
        if (cdefaultM28625new != Cwhile.f24668if) {
            throw new NoSuchMethodException();
        }
        throw new NoSuchMethodException("There are multiple public " + cls.getName() + " constructors that match the compatible parameter list with the same preferability.");
    }
}
