package freemarker.debug.impl;

import android.support.v4.c80;
import android.support.v4.hc;
import android.support.v4.kb2;
import freemarker.core.b4;
import freemarker.core.d0;
import freemarker.core.w;
import freemarker.core.y4;
import freemarker.debug.DebuggerListener;
import freemarker.template.Cstatic;
import java.io.IOException;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.rmi.RemoteException;
import java.rmi.server.RemoteObject;
import java.rmi.server.UnicastRemoteObject;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* renamed from: freemarker.debug.impl.catch, reason: invalid class name */
/* loaded from: classes.dex */
class Ccatch extends freemarker.debug.impl.Cif {

    /* renamed from: case, reason: not valid java name */
    private final Celse f24359case;

    /* renamed from: else, reason: not valid java name */
    private freemarker.debug.impl.Cdo f24360else;

    /* renamed from: if, reason: not valid java name */
    private final Map f24362if = new HashMap();

    /* renamed from: for, reason: not valid java name */
    private final HashSet f24361for = new HashSet();

    /* renamed from: new, reason: not valid java name */
    private final Map f24363new = new HashMap();

    /* renamed from: try, reason: not valid java name */
    private final ReferenceQueue f24364try = new ReferenceQueue();

    /* renamed from: freemarker.debug.impl.catch$for, reason: invalid class name */
    public static final class Cfor extends WeakReference {

        /* renamed from: do, reason: not valid java name */
        public final String f24365do;

        public Cfor(String str, Cstatic cstatic, ReferenceQueue referenceQueue) {
            super(cstatic, referenceQueue);
            this.f24365do = str;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: do, reason: not valid java name */
        public Cstatic m28427do() {
            return (Cstatic) get();
        }
    }

    /* renamed from: freemarker.debug.impl.catch$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        public final List f24366do;

        /* renamed from: if, reason: not valid java name */
        public final List f24367if;

        private Cif() {
            this.f24366do = new ArrayList();
            this.f24367if = new ArrayList();
        }

        /* renamed from: do, reason: not valid java name */
        public boolean m28428do() {
            return this.f24366do.isEmpty() && this.f24367if.isEmpty();
        }
    }

    public Ccatch() {
        try {
            Celse celse = new Celse(this);
            this.f24359case = celse;
            freemarker.debug.impl.Cdo cdo = new freemarker.debug.impl.Cdo(RemoteObject.toStub(celse));
            this.f24360else = cdo;
            cdo.m28435case();
        } catch (RemoteException e) {
            e.printStackTrace();
            throw new kb2(e);
        }
    }

    /* renamed from: class, reason: not valid java name */
    private Cif m28407class(String str) {
        Cif cifM28408const = m28408const(str);
        if (cifM28408const != null) {
            return cifM28408const;
        }
        Cif cif = new Cif();
        this.f24362if.put(str, cif);
        return cif;
    }

    /* renamed from: const, reason: not valid java name */
    private Cif m28408const(String str) {
        m28410import();
        return (Cif) this.f24362if.get(str);
    }

    /* renamed from: final, reason: not valid java name */
    private static b4 m28409final(b4 b4Var, int i) {
        b4 b4Var2 = null;
        if (b4Var.getBeginLine() > i || b4Var.getEndLine() < i) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        Enumeration enumerationM27845static = b4Var.m27845static();
        while (enumerationM27845static.hasMoreElements()) {
            b4 b4VarM28409final = m28409final((b4) enumerationM27845static.nextElement(), i);
            if (b4VarM28409final != null) {
                arrayList.add(b4VarM28409final);
            }
        }
        int i2 = 0;
        while (true) {
            if (i2 >= arrayList.size()) {
                break;
            }
            b4 b4Var3 = (b4) arrayList.get(i2);
            if (b4Var2 == null) {
                b4Var2 = b4Var3;
            }
            if (b4Var3.getBeginLine() == i && b4Var3.getEndLine() > i) {
                b4Var2 = b4Var3;
            }
            if (b4Var3.getBeginLine() == b4Var3.getEndLine() && b4Var3.getBeginLine() == i) {
                b4Var2 = b4Var3;
                break;
            }
            i2++;
        }
        return b4Var2 != null ? b4Var2 : b4Var;
    }

    /* renamed from: import, reason: not valid java name */
    private void m28410import() {
        while (true) {
            Cfor cfor = (Cfor) this.f24364try.poll();
            if (cfor == null) {
                return;
            }
            Cif cifM28408const = m28408const(cfor.f24365do);
            if (cifM28408const != null) {
                cifM28408const.f24366do.remove(cfor);
                if (cifM28408const.m28428do()) {
                    this.f24362if.remove(cfor.f24365do);
                }
            }
        }
    }

    /* renamed from: return, reason: not valid java name */
    private void m28411return(Cif cif) {
        cif.f24367if.clear();
        Iterator it = cif.f24366do.iterator();
        while (it.hasNext()) {
            Cstatic cstaticM28427do = ((Cfor) it.next()).m28427do();
            if (cstaticM28427do == null) {
                it.remove();
            } else {
                m28413throws(cstaticM28427do.o1());
            }
        }
    }

    /* renamed from: switch, reason: not valid java name */
    private void m28412switch(Cstatic cstatic, hc hcVar) {
        b4 b4VarM28409final = m28409final(cstatic.o1(), hcVar.getLine());
        if (b4VarM28409final == null) {
            return;
        }
        w wVar = null;
        while (true) {
            if (b4VarM28409final == null) {
                break;
            }
            if (b4VarM28409final instanceof w) {
                wVar = (w) b4VarM28409final;
                break;
            }
            b4VarM28409final = y4.m28373break(b4VarM28409final);
        }
        if (wVar == null) {
            return;
        }
        b4 b4VarM28373break = y4.m28373break(wVar);
        b4VarM28373break.n(b4VarM28373break.m27842protected(wVar), y4.m28382goto(wVar, 0));
    }

    /* renamed from: throws, reason: not valid java name */
    private void m28413throws(b4 b4Var) {
        int iM27840package = b4Var.m27840package();
        for (int i = 0; i < iM27840package; i++) {
            b4 b4VarM28382goto = y4.m28382goto(b4Var, i);
            while (b4VarM28382goto instanceof w) {
                b4VarM28382goto = y4.m28382goto(b4VarM28382goto, 0);
                b4Var.n(i, b4VarM28382goto);
            }
            m28413throws(b4VarM28382goto);
        }
    }

    /* renamed from: while, reason: not valid java name */
    private static void m28414while(Cstatic cstatic, hc hcVar) {
        b4 b4VarM28409final = m28409final(cstatic.o1(), hcVar.getLine());
        if (b4VarM28409final == null) {
            return;
        }
        b4 b4VarM28373break = y4.m28373break(b4VarM28409final);
        b4VarM28373break.n(b4VarM28373break.m27842protected(b4VarM28409final), new w(b4VarM28409final));
    }

    /* renamed from: break, reason: not valid java name */
    public void m28415break(hc hcVar) {
        String templateName = hcVar.getTemplateName();
        synchronized (this.f24362if) {
            Cif cifM28407class = m28407class(templateName);
            List list = cifM28407class.f24367if;
            if (Collections.binarySearch(list, hcVar) < 0) {
                list.add((-r3) - 1, hcVar);
                Iterator it = cifM28407class.f24366do.iterator();
                while (it.hasNext()) {
                    Cstatic cstaticM28427do = ((Cfor) it.next()).m28427do();
                    if (cstaticM28427do == null) {
                        it.remove();
                    } else {
                        m28414while(cstaticM28427do, hcVar);
                    }
                }
            }
        }
    }

    /* renamed from: catch, reason: not valid java name */
    public Object m28416catch(DebuggerListener debuggerListener) {
        Long lValueOf;
        synchronized (this.f24363new) {
            lValueOf = Long.valueOf(System.currentTimeMillis());
            this.f24363new.put(lValueOf, debuggerListener);
        }
        return lValueOf;
    }

    /* renamed from: default, reason: not valid java name */
    public void m28417default(Object obj) {
        synchronized (this.f24363new) {
            this.f24363new.remove(obj);
        }
    }

    @Override // freemarker.debug.impl.Cif
    /* renamed from: else, reason: not valid java name */
    public void mo28418else() throws IOException {
        this.f24360else.m28436goto();
        try {
            UnicastRemoteObject.unexportObject(this.f24359case, true);
        } catch (Exception unused) {
        }
        Ctry.m28447for();
    }

    @Override // freemarker.debug.impl.Cif
    /* renamed from: for, reason: not valid java name */
    public List mo28419for(String str) {
        List list;
        synchronized (this.f24362if) {
            Cif cifM28408const = m28408const(str);
            list = cifM28408const == null ? Collections.EMPTY_LIST : cifM28408const.f24367if;
        }
        return list;
    }

    /* renamed from: native, reason: not valid java name */
    public void m28420native(hc hcVar) {
        String templateName = hcVar.getTemplateName();
        synchronized (this.f24362if) {
            Cif cifM28408const = m28408const(templateName);
            if (cifM28408const != null) {
                List list = cifM28408const.f24367if;
                int iBinarySearch = Collections.binarySearch(list, hcVar);
                if (iBinarySearch >= 0) {
                    list.remove(iBinarySearch);
                    Iterator it = cifM28408const.f24366do.iterator();
                    while (it.hasNext()) {
                        Cstatic cstaticM28427do = ((Cfor) it.next()).m28427do();
                        if (cstaticM28427do == null) {
                            it.remove();
                        } else {
                            m28412switch(cstaticM28427do, hcVar);
                        }
                    }
                }
                if (cifM28408const.m28428do()) {
                    this.f24362if.remove(templateName);
                }
            }
        }
    }

    /* renamed from: public, reason: not valid java name */
    public void m28421public() {
        synchronized (this.f24362if) {
            Iterator it = this.f24362if.values().iterator();
            while (it.hasNext()) {
                Cif cif = (Cif) it.next();
                m28411return(cif);
                if (cif.m28428do()) {
                    it.remove();
                }
            }
        }
    }

    /* renamed from: static, reason: not valid java name */
    public void m28422static(String str) {
        synchronized (this.f24362if) {
            Cif cifM28408const = m28408const(str);
            if (cifM28408const != null) {
                m28411return(cifM28408const);
                if (cifM28408const.m28428do()) {
                    this.f24362if.remove(str);
                }
            }
        }
    }

    /* renamed from: super, reason: not valid java name */
    public List m28423super() {
        ArrayList arrayList = new ArrayList();
        synchronized (this.f24362if) {
            Iterator it = this.f24362if.values().iterator();
            while (it.hasNext()) {
                arrayList.addAll(((Cif) it.next()).f24367if);
            }
        }
        Collections.sort(arrayList);
        return arrayList;
    }

    @Override // freemarker.debug.impl.Cif
    /* renamed from: this, reason: not valid java name */
    public boolean mo28424this(d0 d0Var, String str, int i) throws RemoteException {
        Ctry ctry = (Ctry) Ctry.m28448new(d0Var);
        synchronized (this.f24361for) {
            this.f24361for.add(ctry);
        }
        try {
            c80 c80Var = new c80(this, str, i, ctry);
            synchronized (this.f24363new) {
                Iterator it = this.f24363new.values().iterator();
                while (it.hasNext()) {
                    ((DebuggerListener) it.next()).environmentSuspended(c80Var);
                }
            }
            synchronized (ctry) {
                try {
                    ctry.wait();
                } catch (InterruptedException unused) {
                }
            }
            boolean zM28449try = ctry.m28449try();
            synchronized (this.f24361for) {
                this.f24361for.remove(ctry);
            }
            return zM28449try;
        } catch (Throwable th) {
            synchronized (this.f24361for) {
                this.f24361for.remove(ctry);
                throw th;
            }
        }
    }

    /* renamed from: throw, reason: not valid java name */
    public Collection m28425throw() {
        return (Collection) this.f24361for.clone();
    }

    @Override // freemarker.debug.impl.Cif
    /* renamed from: try, reason: not valid java name */
    public void mo28426try(Cstatic cstatic) {
        String strH1 = cstatic.h1();
        synchronized (this.f24362if) {
            Cif cifM28407class = m28407class(strH1);
            cifM28407class.f24366do.add(new Cfor(strH1, cstatic, this.f24364try));
            Iterator it = cifM28407class.f24367if.iterator();
            while (it.hasNext()) {
                m28414while(cstatic, (hc) it.next());
            }
        }
    }
}
