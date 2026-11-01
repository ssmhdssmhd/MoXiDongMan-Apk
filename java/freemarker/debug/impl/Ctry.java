package freemarker.debug.impl;

import android.support.v4.ez1;
import android.support.v4.k52;
import android.support.v4.kb2;
import freemarker.cache.CacheStorage;
import freemarker.cache.Cthrow;
import freemarker.core.d0;
import freemarker.core.k;
import freemarker.core.t;
import freemarker.debug.DebuggedEnvironment;
import freemarker.template.Cimport;
import freemarker.template.Cstatic;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateHashModelEx;
import freemarker.template.TemplateModel;
import java.rmi.Remote;
import java.rmi.RemoteException;
import java.rmi.server.UnicastRemoteObject;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

/* renamed from: freemarker.debug.impl.try, reason: invalid class name */
/* loaded from: classes.dex */
class Ctry extends freemarker.debug.impl.Cfor implements DebuggedEnvironment {

    /* renamed from: case, reason: not valid java name */
    private static final long f24420case = 1;

    /* renamed from: new, reason: not valid java name */
    private boolean f24424new;

    /* renamed from: try, reason: not valid java name */
    private final long f24425try;

    /* renamed from: else, reason: not valid java name */
    private static final CacheStorage f24421else = new Cthrow(new IdentityHashMap());

    /* renamed from: goto, reason: not valid java name */
    private static final Object f24422goto = new Object();

    /* renamed from: this, reason: not valid java name */
    private static long f24423this = 1;

    /* renamed from: break, reason: not valid java name */
    private static Set f24419break = new HashSet();

    /* renamed from: freemarker.debug.impl.try$case, reason: invalid class name */
    public static class Ccase extends Cif {

        /* renamed from: new, reason: not valid java name */
        private static final List f24426new = AbstractC0249try.m28451do(Cif.f24431if, Arrays.asList("configuration", "name"));

        /* renamed from: for, reason: not valid java name */
        private final ez1 f24427for;

        public Ccase(Cstatic cstatic) {
            super(cstatic);
            this.f24427for = new ez1(cstatic.h1());
        }

        @Override // freemarker.debug.impl.Ctry.Cif, freemarker.template.TemplateHashModel
        public TemplateModel get(String str) throws k52 {
            if (!"configuration".equals(str)) {
                return "name".equals(str) ? this.f24427for : super.get(str);
            }
            try {
                return (TemplateModel) Ctry.m28448new(((Cstatic) this.f24432do).b1());
            } catch (RemoteException e) {
                throw new k52((Exception) e);
            }
        }

        @Override // freemarker.debug.impl.Ctry.Cif, freemarker.debug.impl.Ctry.AbstractC0249try
        /* renamed from: if, reason: not valid java name */
        public Collection mo28450if() {
            return f24426new;
        }
    }

    /* renamed from: freemarker.debug.impl.try$for, reason: invalid class name */
    public static class Cfor extends Cif {

        /* renamed from: new, reason: not valid java name */
        private static final List f24428new = AbstractC0249try.m28451do(Cif.f24431if, Collections.singleton("sharedVariables"));

        /* renamed from: for, reason: not valid java name */
        private TemplateModel f24429for;

        /* renamed from: freemarker.debug.impl.try$for$do, reason: invalid class name */
        public class Cdo extends AbstractC0249try {
            public Cdo() {
                super();
            }

            @Override // freemarker.template.TemplateHashModel
            public TemplateModel get(String str) {
                return ((freemarker.template.Cdo) Cfor.this.f24432do).I1(str);
            }

            @Override // freemarker.debug.impl.Ctry.AbstractC0249try
            /* renamed from: if */
            public Collection mo28450if() {
                return ((freemarker.template.Cdo) Cfor.this.f24432do).J1();
            }
        }

        public Cfor(freemarker.template.Cdo cdo) {
            super(cdo);
            this.f24429for = new Cdo();
        }

        @Override // freemarker.debug.impl.Ctry.Cif, freemarker.template.TemplateHashModel
        public TemplateModel get(String str) throws k52 {
            return "sharedVariables".equals(str) ? this.f24429for : super.get(str);
        }

        @Override // freemarker.debug.impl.Ctry.Cif, freemarker.debug.impl.Ctry.AbstractC0249try
        /* renamed from: if */
        public Collection mo28450if() {
            return f24428new;
        }
    }

    /* renamed from: freemarker.debug.impl.try$if, reason: invalid class name */
    public static class Cif extends AbstractC0249try {

        /* renamed from: if, reason: not valid java name */
        public static final List f24431if = Arrays.asList("arithmetic_engine", "boolean_format", "classic_compatible", "locale", "number_format", "object_wrapper", "template_exception_handler");

        /* renamed from: do, reason: not valid java name */
        public final t f24432do;

        public Cif(t tVar) {
            super();
            this.f24432do = tVar;
        }

        @Override // freemarker.template.TemplateHashModel
        public TemplateModel get(String str) throws k52 {
            String strB = this.f24432do.b(str);
            if (strB == null) {
                return null;
            }
            return new ez1(strB);
        }

        @Override // freemarker.debug.impl.Ctry.AbstractC0249try
        /* renamed from: if */
        public Collection mo28450if() {
            return f24431if;
        }
    }

    /* renamed from: freemarker.debug.impl.try$new, reason: invalid class name */
    public static class Cnew extends Cif {

        /* renamed from: new, reason: not valid java name */
        private static final List f24433new = AbstractC0249try.m28451do(Cif.f24431if, Arrays.asList("currentNamespace", k.f23938public, "globalNamespace", "knownVariables", "mainNamespace", "template"));

        /* renamed from: for, reason: not valid java name */
        private TemplateModel f24434for;

        /* renamed from: freemarker.debug.impl.try$new$do, reason: invalid class name */
        public class Cdo extends AbstractC0249try {
            public Cdo() {
                super();
            }

            @Override // freemarker.template.TemplateHashModel
            public TemplateModel get(String str) throws k52 {
                return ((d0) Cnew.this.f24432do).D2(str);
            }

            @Override // freemarker.debug.impl.Ctry.AbstractC0249try
            /* renamed from: if */
            public Collection mo28450if() {
                try {
                    return ((d0) Cnew.this.f24432do).P1();
                } catch (k52 e) {
                    throw new kb2(e);
                }
            }
        }

        public Cnew(d0 d0Var) {
            super(d0Var);
            this.f24434for = new Cdo();
        }

        @Override // freemarker.debug.impl.Ctry.Cif, freemarker.template.TemplateHashModel
        public TemplateModel get(String str) throws k52 {
            if ("currentNamespace".equals(str)) {
                return ((d0) this.f24432do).y1();
            }
            if (k.f23938public.equals(str)) {
                return ((d0) this.f24432do).D1();
            }
            if ("globalNamespace".equals(str)) {
                return ((d0) this.f24432do).I1();
            }
            if ("knownVariables".equals(str)) {
                return this.f24434for;
            }
            if ("mainNamespace".equals(str)) {
                return ((d0) this.f24432do).U1();
            }
            if (!"template".equals(str)) {
                return super.get(str);
            }
            try {
                return (TemplateModel) Ctry.m28448new(((d0) this.f24432do).e2());
            } catch (RemoteException e) {
                throw new k52((Exception) e);
            }
        }

        @Override // freemarker.debug.impl.Ctry.Cif, freemarker.debug.impl.Ctry.AbstractC0249try
        /* renamed from: if */
        public Collection mo28450if() {
            return f24433new;
        }
    }

    /* renamed from: freemarker.debug.impl.try$try, reason: invalid class name and collision with other inner class name */
    public static abstract class AbstractC0249try implements TemplateHashModelEx {
        private AbstractC0249try() {
        }

        /* renamed from: do, reason: not valid java name */
        public static List m28451do(Collection collection, Collection collection2) {
            ArrayList arrayList = new ArrayList(collection);
            arrayList.addAll(collection2);
            Collections.sort(arrayList);
            return arrayList;
        }

        /* renamed from: if */
        public abstract Collection mo28450if();

        @Override // freemarker.template.TemplateHashModel
        public boolean isEmpty() {
            return size() == 0;
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel keys() {
            return new Cimport(mo28450if());
        }

        @Override // freemarker.template.TemplateHashModelEx
        public int size() {
            return mo28450if().size();
        }

        @Override // freemarker.template.TemplateHashModelEx
        public TemplateCollectionModel values() throws k52 {
            Collection collectionMo28450if = mo28450if();
            ArrayList arrayList = new ArrayList(collectionMo28450if.size());
            Iterator it = collectionMo28450if.iterator();
            while (it.hasNext()) {
                arrayList.add(get((String) it.next()));
            }
            return new Cimport((Collection) arrayList);
        }
    }

    private Ctry(d0 d0Var) throws RemoteException {
        super(new Cnew(d0Var), 2048);
        this.f24424new = false;
        synchronized (f24422goto) {
            long j = f24423this;
            f24423this = 1 + j;
            this.f24425try = j;
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static void m28447for() {
        Iterator it = f24419break.iterator();
        while (it.hasNext()) {
            try {
                UnicastRemoteObject.unexportObject((Remote) it.next(), true);
            } catch (Exception unused) {
            }
        }
    }

    /* renamed from: new, reason: not valid java name */
    public static synchronized Object m28448new(Object obj) throws RemoteException {
        Object cfor;
        CacheStorage cacheStorage = f24421else;
        cfor = cacheStorage.get(obj);
        if (cfor == null) {
            if (obj instanceof TemplateModel) {
                cfor = new freemarker.debug.impl.Cfor((TemplateModel) obj, obj instanceof Cfor ? 8192 : obj instanceof Ccase ? 4096 : 0);
            } else if (obj instanceof d0) {
                cfor = new Ctry((d0) obj);
            } else if (obj instanceof Cstatic) {
                cfor = new Ccase((Cstatic) obj);
            } else if (obj instanceof freemarker.template.Cdo) {
                cfor = new Cfor((freemarker.template.Cdo) obj);
            }
        }
        if (cfor != null) {
            cacheStorage.put(obj, cfor);
        }
        if (cfor instanceof Remote) {
            f24419break.add(cfor);
        }
        return cfor;
    }

    @Override // freemarker.debug.DebuggedEnvironment
    public long getId() {
        return this.f24425try;
    }

    @Override // freemarker.debug.DebuggedEnvironment
    public void resume() {
        synchronized (this) {
            notify();
        }
    }

    @Override // freemarker.debug.DebuggedEnvironment
    public void stop() {
        this.f24424new = true;
        resume();
    }

    /* renamed from: try, reason: not valid java name */
    public boolean m28449try() {
        return this.f24424new;
    }
}
