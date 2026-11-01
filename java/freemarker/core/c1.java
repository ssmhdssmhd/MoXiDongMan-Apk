package freemarker.core;

import android.support.v4.ca2;
import android.support.v4.nl2;
import android.support.v4.yk2;
import freemarker.core.d1;
import freemarker.template.TemplateException;
import java.io.IOException;

/* loaded from: classes.dex */
class c1 extends b4 {

    /* renamed from: class, reason: not valid java name */
    private final String f23535class;

    /* renamed from: const, reason: not valid java name */
    private final String f23536const;

    public c1(String str, String str2, c4 c4Var) {
        this.f23535class = str;
        this.f23536const = str2;
        p(c4Var);
    }

    @Override // freemarker.core.h4
    /* renamed from: case */
    public String mo27813case() {
        return "#items";
    }

    @Override // freemarker.core.h4
    /* renamed from: else */
    public int mo27814else() {
        return this.f23536const != null ? 2 : 1;
    }

    @Override // freemarker.core.b4
    public boolean f() {
        return true;
    }

    @Override // freemarker.core.h4
    /* renamed from: goto */
    public f3 mo27816goto(int i) {
        if (i == 0) {
            if (this.f23535class != null) {
                return f3.f23773return;
            }
            throw new IndexOutOfBoundsException();
        }
        if (i != 1) {
            throw new IndexOutOfBoundsException();
        }
        if (this.f23536const != null) {
            return f3.f23773return;
        }
        throw new IndexOutOfBoundsException();
    }

    @Override // freemarker.core.b4
    /* renamed from: native */
    public b4[] mo27820native(d0 d0Var) throws TemplateException, IOException {
        d1.Cdo cdoK1 = d0Var.k1();
        if (cdoK1 == null) {
            throw new nl2(d0Var, mo27813case(), " without iteration in context");
        }
        cdoK1.m27950goto(d0Var, m27837finally(), this.f23535class, this.f23536const);
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
        sb.append(" as ");
        sb.append(yk2.m9888case(this.f23535class));
        if (this.f23536const != null) {
            sb.append(", ");
            sb.append(yk2.m9888case(this.f23536const));
        }
        if (z) {
            sb.append(ca2.f702try);
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
        if (i == 0) {
            String str = this.f23535class;
            if (str != null) {
                return str;
            }
            throw new IndexOutOfBoundsException();
        }
        if (i != 1) {
            throw new IndexOutOfBoundsException();
        }
        String str2 = this.f23536const;
        if (str2 != null) {
            return str2;
        }
        throw new IndexOutOfBoundsException();
    }
}
