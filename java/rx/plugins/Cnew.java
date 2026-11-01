package rx.plugins;

import android.support.v4.hp1;
import android.support.v4.ip1;
import android.support.v4.kp1;
import android.support.v4.lp1;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;
import java.util.concurrent.atomic.AtomicReference;

/* renamed from: rx.plugins.new, reason: invalid class name */
/* loaded from: classes4.dex */
public class Cnew {

    /* renamed from: case, reason: not valid java name */
    private static final Cnew f36144case = new Cnew();

    /* renamed from: else, reason: not valid java name */
    public static final rx.plugins.Cdo f36145else = new Cdo();

    /* renamed from: do, reason: not valid java name */
    private final AtomicReference<rx.plugins.Cdo> f36146do = new AtomicReference<>();

    /* renamed from: if, reason: not valid java name */
    private final AtomicReference<ip1> f36148if = new AtomicReference<>();

    /* renamed from: for, reason: not valid java name */
    private final AtomicReference<lp1> f36147for = new AtomicReference<>();

    /* renamed from: new, reason: not valid java name */
    private final AtomicReference<hp1> f36149new = new AtomicReference<>();

    /* renamed from: try, reason: not valid java name */
    private final AtomicReference<kp1> f36150try = new AtomicReference<>();

    /* renamed from: rx.plugins.new$do, reason: invalid class name */
    public static class Cdo extends rx.plugins.Cdo {
    }

    /* renamed from: rx.plugins.new$if, reason: invalid class name */
    public class Cif extends hp1 {
        public Cif() {
        }
    }

    @Deprecated
    /* renamed from: for, reason: not valid java name */
    public static Cnew m39185for() {
        return f36144case;
    }

    /* renamed from: try, reason: not valid java name */
    public static Object m39186try(Class<?> cls, Properties properties) {
        Properties properties2 = (Properties) properties.clone();
        String simpleName = cls.getSimpleName();
        String property = properties2.getProperty("rxjava.plugin." + simpleName + ".implementation");
        if (property == null) {
            Iterator it = properties2.entrySet().iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Map.Entry entry = (Map.Entry) it.next();
                String string = entry.getKey().toString();
                if (string.startsWith("rxjava.plugin.") && string.endsWith(".class") && simpleName.equals(entry.getValue().toString())) {
                    String str = "rxjava.plugin." + string.substring(0, string.length() - 6).substring(14) + ".impl";
                    String property2 = properties2.getProperty(str);
                    if (property2 == null) {
                        throw new IllegalStateException("Implementing class declaration for " + simpleName + " missing: " + str);
                    }
                    property = property2;
                }
            }
        }
        if (property == null) {
            return null;
        }
        try {
            return Class.forName(property).asSubclass(cls).newInstance();
        } catch (ClassCastException e) {
            throw new IllegalStateException(simpleName + " implementation is not an instance of " + simpleName + ": " + property, e);
        } catch (ClassNotFoundException e2) {
            throw new IllegalStateException(simpleName + " implementation class not found: " + property, e2);
        } catch (IllegalAccessException e3) {
            throw new IllegalStateException(simpleName + " implementation not able to be accessed: " + property, e3);
        } catch (InstantiationException e4) {
            throw new IllegalStateException(simpleName + " implementation not able to be instantiated: " + property, e4);
        }
    }

    /* renamed from: break, reason: not valid java name */
    public void m39187break(ip1 ip1Var) {
        if (this.f36148if.compareAndSet(null, ip1Var)) {
            return;
        }
        throw new IllegalStateException("Another strategy was already registered: " + this.f36148if.get());
    }

    /* renamed from: case, reason: not valid java name */
    public kp1 m39188case() {
        if (this.f36150try.get() == null) {
            Object objM39186try = m39186try(kp1.class, System.getProperties());
            if (objM39186try == null) {
                this.f36150try.compareAndSet(null, kp1.m4463goto());
            } else {
                this.f36150try.compareAndSet(null, (kp1) objM39186try);
            }
        }
        return this.f36150try.get();
    }

    /* renamed from: catch, reason: not valid java name */
    public void m39189catch(kp1 kp1Var) {
        if (this.f36150try.compareAndSet(null, kp1Var)) {
            return;
        }
        throw new IllegalStateException("Another strategy was already registered: " + this.f36150try.get());
    }

    /* renamed from: class, reason: not valid java name */
    public void m39190class(lp1 lp1Var) {
        if (this.f36147for.compareAndSet(null, lp1Var)) {
            return;
        }
        throw new IllegalStateException("Another strategy was already registered: " + this.f36147for.get());
    }

    /* renamed from: const, reason: not valid java name */
    public void m39191const() {
        Cnew cnew = f36144case;
        cnew.f36146do.set(null);
        cnew.f36148if.set(null);
        cnew.f36147for.set(null);
        cnew.f36149new.set(null);
        cnew.f36150try.set(null);
    }

    /* renamed from: do, reason: not valid java name */
    public hp1 m39192do() {
        if (this.f36149new.get() == null) {
            Object objM39186try = m39186try(hp1.class, System.getProperties());
            if (objM39186try == null) {
                this.f36149new.compareAndSet(null, new Cif());
            } else {
                this.f36149new.compareAndSet(null, (hp1) objM39186try);
            }
        }
        return this.f36149new.get();
    }

    /* renamed from: else, reason: not valid java name */
    public lp1 m39193else() {
        if (this.f36147for.get() == null) {
            Object objM39186try = m39186try(lp1.class, System.getProperties());
            if (objM39186try == null) {
                this.f36147for.compareAndSet(null, Ctry.m39198case());
            } else {
                this.f36147for.compareAndSet(null, (lp1) objM39186try);
            }
        }
        return this.f36147for.get();
    }

    /* renamed from: goto, reason: not valid java name */
    public void m39194goto(hp1 hp1Var) {
        if (this.f36149new.compareAndSet(null, hp1Var)) {
            return;
        }
        throw new IllegalStateException("Another strategy was already registered: " + this.f36147for.get());
    }

    /* renamed from: if, reason: not valid java name */
    public rx.plugins.Cdo m39195if() {
        if (this.f36146do.get() == null) {
            Object objM39186try = m39186try(rx.plugins.Cdo.class, System.getProperties());
            if (objM39186try == null) {
                this.f36146do.compareAndSet(null, f36145else);
            } else {
                this.f36146do.compareAndSet(null, (rx.plugins.Cdo) objM39186try);
            }
        }
        return this.f36146do.get();
    }

    /* renamed from: new, reason: not valid java name */
    public ip1 m39196new() {
        if (this.f36148if.get() == null) {
            Object objM39186try = m39186try(ip1.class, System.getProperties());
            if (objM39186try == null) {
                this.f36148if.compareAndSet(null, Cfor.m39126case());
            } else {
                this.f36148if.compareAndSet(null, (ip1) objM39186try);
            }
        }
        return this.f36148if.get();
    }

    /* renamed from: this, reason: not valid java name */
    public void m39197this(rx.plugins.Cdo cdo) {
        if (this.f36146do.compareAndSet(null, cdo)) {
            return;
        }
        throw new IllegalStateException("Another strategy was already registered: " + this.f36146do.get());
    }
}
