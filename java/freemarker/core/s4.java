package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.ef;
import android.support.v4.fl2;
import android.support.v4.hy1;
import android.support.v4.nl2;
import android.support.v4.y60;
import android.support.v4.yk2;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateTransformModel;
import freemarker.template.utility.Csuper;
import freemarker.template.utility.ObjectFactory;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;

/* loaded from: classes.dex */
final class s4 extends b4 implements DirectiveCallPlace {

    /* renamed from: class, reason: not valid java name */
    private h0 f24136class;

    /* renamed from: const, reason: not valid java name */
    private Map f24137const;

    /* renamed from: final, reason: not valid java name */
    private List f24138final;

    /* renamed from: import, reason: not valid java name */
    private Cdo f24139import;

    /* renamed from: super, reason: not valid java name */
    private List f24140super;

    /* renamed from: throw, reason: not valid java name */
    public boolean f24141throw;

    /* renamed from: while, reason: not valid java name */
    private volatile transient SoftReference f24142while;

    /* renamed from: freemarker.core.s4$do, reason: invalid class name */
    public static class Cdo {

        /* renamed from: do, reason: not valid java name */
        private final Object f24143do;

        /* renamed from: if, reason: not valid java name */
        private final Object f24144if;

        public Cdo(Object obj, Object obj2) {
            this.f24143do = obj;
            this.f24144if = obj2;
        }
    }

    public s4(h0 h0Var, Map map, c4 c4Var, List list) {
        this.f24136class = h0Var;
        this.f24137const = map;
        p(c4Var);
        this.f24140super = list;
    }

    private Cdo r(Object obj, ObjectFactory objectFactory) throws ef {
        try {
            Object objCreateObject = objectFactory.createObject();
            Objects.requireNonNull(objCreateObject, "ObjectFactory.createObject() has returned null");
            return new Cdo(obj, objCreateObject);
        } catch (Exception e) {
            throw new ef("Failed to initialize custom data for provider identity " + Csuper.A(obj) + " via factory " + Csuper.A(objectFactory), e);
        }
    }

    private List s() {
        List list;
        SoftReference softReference = this.f24142while;
        if (softReference != null && (list = (List) softReference.get()) != null) {
            return list;
        }
        List listM27826if = b2.m27826if(this.f24137const);
        this.f24142while = new SoftReference(listM27826if);
        return listM27826if;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "@";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        List list = this.f24138final;
        int size = (list != null ? list.size() : 0) + 1;
        Map map = this.f24137const;
        int size2 = size + (map != null ? map.size() * 2 : 0);
        List list2 = this.f24140super;
        return size2 + (list2 != null ? list2.size() : 0);
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return true;
    }

    @Override // freemarker.core.DirectiveCallPlace
    public Object getOrCreateCustomData(Object obj, ObjectFactory objectFactory) throws ef {
        Cdo cdoR = this.f24139import;
        if (cdoR == null) {
            synchronized (this) {
                cdoR = this.f24139import;
                if (cdoR == null || cdoR.f24143do != obj) {
                    cdoR = r(obj, objectFactory);
                    this.f24139import = cdoR;
                }
            }
        }
        if (cdoR.f24143do != obj) {
            synchronized (this) {
                cdoR = this.f24139import;
                if (cdoR == null || cdoR.f24143do != obj) {
                    Cdo cdoR2 = r(obj, objectFactory);
                    this.f24139import = cdoR2;
                    cdoR = cdoR2;
                }
            }
        }
        return cdoR.f24144if;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23763implements;
        }
        List list = this.f24138final;
        int size = list != null ? list.size() : 0;
        if (i - 1 < size) {
            return f3.f23748abstract;
        }
        int i2 = size + 1;
        Map map = this.f24137const;
        int i3 = i - i2;
        int size2 = (map != null ? map.size() : 0) * 2;
        if (i3 < size2) {
            return i3 % 2 == 0 ? f3.f23770private : f3.f23748abstract;
        }
        int i4 = i2 + size2;
        List list2 = this.f24140super;
        if (i - i4 < (list2 != null ? list2.size() : 0)) {
            return f3.f23773return;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    public boolean h() {
        return true;
    }

    @Override // freemarker.core.DirectiveCallPlace
    public boolean isNestedOutputCacheable() {
        return c();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws Throwable {
        Map map;
        TemplateModel templateModelM28055throws = this.f24136class.m28055throws(d0Var);
        if (templateModelM28055throws == x1.f24268while) {
            return null;
        }
        if (templateModelM28055throws instanceof x1) {
            x1 x1Var = (x1) templateModelM28055throws;
            if (x1Var.z() && !this.f24141throw) {
                throw new nl2(d0Var, "Routine ", new fl2(x1Var.x()), " is a function, not a directive. Functions can only be called from expressions, like in ${f()}, ${x + f()} or ", "<@someDirective someParam=f() />", ".");
            }
            d0Var.P2(x1Var, this.f24137const, this.f24138final, this.f24140super, this);
        } else {
            boolean z = templateModelM28055throws instanceof TemplateDirectiveModel;
            if (!z && !(templateModelM28055throws instanceof TemplateTransformModel)) {
                if (templateModelM28055throws == null) {
                    throw b1.getInstance(this.f24136class, d0Var);
                }
                throw new w2(this.f24136class, templateModelM28055throws, d0Var);
            }
            Map map2 = this.f24137const;
            if (map2 == null || map2.isEmpty()) {
                map = y60.f8142do;
            } else {
                map = new HashMap();
                for (Map.Entry entry : this.f24137const.entrySet()) {
                    map.put((String) entry.getKey(), ((h0) entry.getValue()).m28055throws(d0Var));
                }
            }
            if (z) {
                d0Var.B3(m27837finally(), (TemplateDirectiveModel) templateModelM28055throws, map, this.f24140super);
            } else {
                d0Var.D3(m27837finally(), (TemplateTransformModel) templateModelM28055throws, map);
            }
        }
        return null;
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(ca2.f687new);
        }
        sb.append('@');
        b5.m27857do(sb, this.f24136class);
        boolean z2 = sb.charAt(sb.length() - 1) == ')';
        if (this.f24138final != null) {
            for (int i = 0; i < this.f24138final.size(); i++) {
                h0 h0Var = (h0) this.f24138final.get(i);
                if (i != 0) {
                    sb.append(',');
                }
                sb.append(' ');
                sb.append(h0Var.mo27815for());
            }
        } else {
            List listS = s();
            for (int i2 = 0; i2 < listS.size(); i2++) {
                Map.Entry entry = (Map.Entry) listS.get(i2);
                h0 h0Var2 = (h0) entry.getValue();
                sb.append(' ');
                sb.append(yk2.m9888case((String) entry.getKey()));
                sb.append(hy1.f2563new);
                b5.m27857do(sb, h0Var2);
            }
        }
        List list = this.f24140super;
        if (list != null && !list.isEmpty()) {
            sb.append("; ");
            for (int i3 = 0; i3 < this.f24140super.size(); i3++) {
                if (i3 != 0) {
                    sb.append(", ");
                }
                sb.append(yk2.m9888case((String) this.f24140super.get(i3)));
            }
        }
        if (z) {
            if (m27840package() == 0) {
                sb.append("/>");
            } else {
                sb.append(ca2.f702try);
                sb.append(m27841private());
                sb.append("</@");
                if (!z2) {
                    h0 h0Var3 = this.f24136class;
                    if ((h0Var3 instanceof w0) || ((h0Var3 instanceof a0) && ((a0) h0Var3).e())) {
                        sb.append(this.f24136class.mo27815for());
                    }
                }
                sb.append(ca2.f702try);
            }
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        if (i == 0) {
            return this.f24136class;
        }
        List list = this.f24138final;
        int size = list != null ? list.size() : 0;
        int i2 = i - 1;
        if (i2 < size) {
            return this.f24138final.get(i2);
        }
        int i3 = size + 1;
        Map map = this.f24137const;
        int i4 = i - i3;
        int size2 = (map != null ? map.size() : 0) * 2;
        if (i4 < size2) {
            Map.Entry entry = (Map.Entry) s().get(i4 / 2);
            return i4 % 2 == 0 ? entry.getKey() : entry.getValue();
        }
        int i5 = i3 + size2;
        List list2 = this.f24140super;
        int i6 = i - i5;
        if (i6 < (list2 != null ? list2.size() : 0)) {
            return this.f24140super.get(i6);
        }
        throw new IndexOutOfBoundsException();
    }

    public s4(h0 h0Var, List list, c4 c4Var, List list2) {
        this.f24136class = h0Var;
        this.f24138final = list;
        p(c4Var);
        this.f24140super = list2;
    }
}
