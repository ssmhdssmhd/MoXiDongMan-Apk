package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.hy1;
import android.support.v4.y60;
import freemarker.template.TemplateException;
import freemarker.template.TemplateTransformModel;
import java.io.IOException;
import java.lang.ref.SoftReference;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
final class n4 extends b4 {

    /* renamed from: class, reason: not valid java name */
    private h0 f24015class;

    /* renamed from: const, reason: not valid java name */
    public Map f24016const;

    /* renamed from: final, reason: not valid java name */
    private volatile transient SoftReference f24017final;

    public n4(h0 h0Var, Map map, c4 c4Var) {
        this.f24015class = h0Var;
        this.f24016const = map;
        p(c4Var);
    }

    private List r() {
        List list;
        SoftReference softReference = this.f24017final;
        if (softReference != null && (list = (List) softReference.get()) != null) {
            return list;
        }
        List listM27826if = b2.m27826if(this.f24016const);
        this.f24017final = new SoftReference(listM27826if);
        return listM27826if;
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#transform";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        Map map = this.f24016const;
        return (map != null ? map.size() * 2 : 0) + 1;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return false;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            return f3.f23763implements;
        }
        int i2 = i - 1;
        if (i2 < this.f24016const.size() * 2) {
            return i2 % 2 == 0 ? f3.f23770private : f3.f23748abstract;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    public boolean h() {
        return true;
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        Map map;
        TemplateTransformModel templateTransformModelC2 = d0Var.C2(this.f24015class);
        if (templateTransformModelC2 == null) {
            throw new r4(this.f24015class, this.f24015class.m28055throws(d0Var), "transform", new Class[]{TemplateTransformModel.class}, d0Var);
        }
        Map map2 = this.f24016const;
        if (map2 == null || map2.isEmpty()) {
            map = y60.f8142do;
        } else {
            map = new HashMap();
            for (Map.Entry entry : this.f24016const.entrySet()) {
                map.put((String) entry.getKey(), ((h0) entry.getValue()).m28055throws(d0Var));
            }
        }
        d0Var.D3(m27837finally(), templateTransformModelC2, map);
        return null;
    }

    @Override // freemarker.core.b4
    /* renamed from: switch */
    public String mo27846switch(boolean z) {
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append(ca2.f687new);
        }
        sb.append(mo27813case());
        sb.append(' ');
        sb.append(this.f24015class);
        if (this.f24016const != null) {
            for (Map.Entry entry : r()) {
                sb.append(' ');
                sb.append(entry.getKey());
                sb.append(hy1.f2563new);
                b5.m27857do(sb, (h0) entry.getValue());
            }
        }
        if (z) {
            sb.append(">");
            sb.append(m27841private());
            sb.append("</");
            sb.append(mo27813case());
            sb.append(ca2.f702try);
        }
        return sb.toString();
    }

    @Override // freemarker.core.h4
    /* renamed from: this */
    public Object mo27819this(int i) {
        int i2;
        if (i == 0) {
            return this.f24015class;
        }
        Map map = this.f24016const;
        if (map == null || i - 1 >= map.size() * 2) {
            throw new IndexOutOfBoundsException();
        }
        Map.Entry entry = (Map.Entry) r().get(i2 / 2);
        return i2 % 2 == 0 ? entry.getKey() : entry.getValue();
    }
}
