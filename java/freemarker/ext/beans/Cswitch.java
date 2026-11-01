package freemarker.ext.beans;

import java.lang.ref.WeakReference;
import org.zeroturnaround.javarebel.ClassEventListener;
import org.zeroturnaround.javarebel.ReloaderFactory;

/* renamed from: freemarker.ext.beans.switch, reason: invalid class name */
/* loaded from: classes.dex */
class Cswitch implements ClassChangeNotifier {

    /* renamed from: freemarker.ext.beans.switch$do, reason: invalid class name */
    public static class Cdo implements ClassEventListener {

        /* renamed from: do, reason: not valid java name */
        private final WeakReference f24620do;

        public Cdo(Cclass cclass) {
            this.f24620do = new WeakReference(cclass);
        }

        /* renamed from: do, reason: not valid java name */
        public void m28677do(int i, Class cls) {
            Cclass cclass = (Cclass) this.f24620do.get();
            if (cclass == null) {
                ReloaderFactory.getInstance().removeClassReloadListener(this);
            } else if (i == 1) {
                cclass.b(cls);
            }
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static void m28676do() {
        ReloaderFactory.getInstance();
    }

    @Override // freemarker.ext.beans.ClassChangeNotifier
    public void subscribe(Cclass cclass) {
        ReloaderFactory.getInstance().addClassReloadListener(new Cdo(cclass));
    }
}
