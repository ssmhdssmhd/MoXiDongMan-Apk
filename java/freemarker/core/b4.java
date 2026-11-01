package freemarker.core;

import android.support.v4.tk2;
import freemarker.template.Creturn;
import freemarker.template.TemplateException;
import freemarker.template.TemplateNodeModel;
import freemarker.template.TemplateSequenceModel;
import java.io.IOException;
import java.util.Collections;
import java.util.Enumeration;
import javax.swing.tree.TreeNode;

@Deprecated
/* loaded from: classes.dex */
public abstract class b4 extends h4 implements TreeNode {

    /* renamed from: catch, reason: not valid java name */
    private static final int f23515catch = 6;

    /* renamed from: break, reason: not valid java name */
    private int f23516break;

    /* renamed from: else, reason: not valid java name */
    private b4 f23517else;

    /* renamed from: goto, reason: not valid java name */
    private b4[] f23518goto;

    /* renamed from: this, reason: not valid java name */
    private int f23519this;

    /* renamed from: abstract, reason: not valid java name */
    public static String m27829abstract(b4[] b4VarArr) {
        if (b4VarArr == null) {
            return "";
        }
        StringBuilder sb = new StringBuilder();
        for (b4 b4Var : b4VarArr) {
            if (b4Var == null) {
                break;
            }
            sb.append(b4Var.mo27815for());
        }
        return sb.toString();
    }

    /* renamed from: implements, reason: not valid java name */
    private b4 m27830implements() {
        b4 b4VarM27832transient = this;
        while (!b4VarM27832transient.e() && !(b4VarM27832transient instanceof x1) && !(b4VarM27832transient instanceof Cfinal)) {
            b4VarM27832transient = b4VarM27832transient.m27832transient();
        }
        return b4VarM27832transient;
    }

    /* renamed from: strictfp, reason: not valid java name */
    private b4 m27831strictfp() {
        if (this.f23519this == 0) {
            return null;
        }
        return this.f23518goto[0];
    }

    /* renamed from: transient, reason: not valid java name */
    private b4 m27832transient() {
        int i = this.f23519this;
        if (i == 0) {
            return null;
        }
        return this.f23518goto[i - 1];
    }

    /* renamed from: volatile, reason: not valid java name */
    private b4 m27833volatile() {
        b4 b4VarM27831strictfp = this;
        while (!b4VarM27831strictfp.e() && !(b4VarM27831strictfp instanceof x1) && !(b4VarM27831strictfp instanceof Cfinal)) {
            b4VarM27831strictfp = b4VarM27831strictfp.m27831strictfp();
        }
        return b4VarM27831strictfp;
    }

    public boolean a() {
        return false;
    }

    public boolean b() {
        return false;
    }

    public boolean c() {
        int i = this.f23519this;
        for (int i2 = 0; i2 < i; i2++) {
            if (!this.f23518goto[i2].g()) {
                return false;
            }
        }
        return true;
    }

    /* renamed from: continue, reason: not valid java name */
    public final String m27834continue() {
        return mo27846switch(false);
    }

    public boolean d(boolean z) {
        return false;
    }

    /* renamed from: default, reason: not valid java name */
    public final b4 m27835default(int i) {
        return this.f23518goto[i];
    }

    public boolean e() {
        return this.f23519this == 0;
    }

    @Deprecated
    /* renamed from: extends, reason: not valid java name */
    public TreeNode m27836extends(int i) {
        if (this.f23519this == 0) {
            throw new IndexOutOfBoundsException("Template element has no children");
        }
        try {
            return this.f23518goto[i];
        } catch (ArrayIndexOutOfBoundsException unused) {
            throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f23519this);
        }
    }

    public abstract boolean f();

    /* renamed from: finally, reason: not valid java name */
    public final b4[] m27837finally() {
        return this.f23518goto;
    }

    @Override // freemarker.core.h4
    /* renamed from: for */
    public final String mo27815for() {
        return mo27846switch(true);
    }

    public boolean g() {
        return false;
    }

    public TemplateSequenceModel getChildNodes() {
        if (this.f23518goto == null) {
            return new Creturn(0);
        }
        Creturn creturn = new Creturn(this.f23519this);
        for (int i = 0; i < this.f23519this; i++) {
            creturn.add(this.f23518goto[i]);
        }
        return creturn;
    }

    public String getNodeName() {
        String name = getClass().getName();
        return name.substring(name.lastIndexOf(46) + 1);
    }

    public String getNodeNamespace() {
        return null;
    }

    public String getNodeType() {
        return "element";
    }

    public TemplateNodeModel getParentNode() {
        return null;
    }

    public boolean h() {
        return false;
    }

    public b4 i() {
        b4 b4Var = this.f23517else;
        if (b4Var == null) {
            return null;
        }
        int i = this.f23516break;
        if (i + 1 < b4Var.f23519this) {
            return b4Var.f23518goto[i + 1];
        }
        return null;
    }

    @Deprecated
    /* renamed from: instanceof, reason: not valid java name */
    public TreeNode m27838instanceof() {
        return this.f23517else;
    }

    /* renamed from: interface, reason: not valid java name */
    final int m27839interface() {
        return this.f23516break;
    }

    public b4 j() {
        b4 b4VarI = i();
        if (b4VarI != null) {
            return b4VarI.m27833volatile();
        }
        b4 b4Var = this.f23517else;
        if (b4Var != null) {
            return b4Var.j();
        }
        return null;
    }

    public b4 k(boolean z) throws h3 {
        int i = this.f23519this;
        if (i != 0) {
            for (int i2 = 0; i2 < i; i2++) {
                b4 b4VarK = this.f23518goto[i2].k(z);
                this.f23518goto[i2] = b4VarK;
                b4VarK.f23517else = this;
                b4VarK.f23516break = i2;
            }
            int i3 = 0;
            while (i3 < i) {
                if (this.f23518goto[i3].d(z)) {
                    i--;
                    int i4 = i3;
                    while (i4 < i) {
                        b4[] b4VarArr = this.f23518goto;
                        int i5 = i4 + 1;
                        b4 b4Var = b4VarArr[i5];
                        b4VarArr[i4] = b4Var;
                        b4Var.f23516break = i4;
                        i4 = i5;
                    }
                    this.f23518goto[i] = null;
                    this.f23519this = i;
                    i3--;
                }
                i3++;
            }
            if (i == 0) {
                this.f23518goto = null;
            } else {
                b4[] b4VarArr2 = this.f23518goto;
                if (i < b4VarArr2.length && i <= (b4VarArr2.length * 3) / 4) {
                    b4[] b4VarArr3 = new b4[i];
                    for (int i6 = 0; i6 < i; i6++) {
                        b4VarArr3[i6] = this.f23518goto[i6];
                    }
                    this.f23518goto = b4VarArr3;
                }
            }
        }
        return this;
    }

    public b4 l() {
        b4 b4VarM = m();
        if (b4VarM != null) {
            return b4VarM.m27830implements();
        }
        b4 b4Var = this.f23517else;
        if (b4Var != null) {
            return b4Var.l();
        }
        return null;
    }

    public b4 m() {
        int i;
        b4 b4Var = this.f23517else;
        if (b4Var != null && (i = this.f23516break) > 0) {
            return b4Var.f23518goto[i - 1];
        }
        return null;
    }

    public void n(int i, b4 b4Var) {
        if (i < this.f23519this && i >= 0) {
            this.f23518goto[i] = b4Var;
            b4Var.f23516break = i;
            b4Var.f23517else = this;
        } else {
            throw new IndexOutOfBoundsException("Index: " + i + ", Size: " + this.f23519this);
        }
    }

    /* renamed from: native */
    public abstract b4[] mo27820native(d0 d0Var) throws TemplateException, IOException;

    public final void o(int i) {
        int i2 = this.f23519this;
        b4[] b4VarArr = new b4[i];
        for (int i3 = 0; i3 < i2; i3++) {
            b4VarArr[i3] = this.f23518goto[i3];
        }
        this.f23518goto = b4VarArr;
    }

    public final void p(c4 c4Var) {
        b4[] b4VarArrM27887for = c4Var.m27887for();
        int iM27889new = c4Var.m27889new();
        for (int i = 0; i < iM27889new; i++) {
            b4 b4Var = b4VarArrM27887for[i];
            b4Var.f23516break = i;
            b4Var.f23517else = this;
        }
        this.f23518goto = b4VarArrM27887for;
        this.f23519this = iM27889new;
    }

    /* renamed from: package, reason: not valid java name */
    public int m27840package() {
        return this.f23519this;
    }

    /* renamed from: private, reason: not valid java name */
    public final String m27841private() {
        return m27829abstract(this.f23518goto);
    }

    @Deprecated
    /* renamed from: protected, reason: not valid java name */
    public int m27842protected(TreeNode treeNode) {
        for (int i = 0; i < this.f23519this; i++) {
            if (this.f23518goto[i].equals(treeNode)) {
                return i;
            }
        }
        return -1;
    }

    /* renamed from: public, reason: not valid java name */
    public final void m27843public(int i, b4 b4Var) {
        int i2 = this.f23519this;
        b4[] b4VarArr = this.f23518goto;
        if (b4VarArr == null) {
            b4VarArr = new b4[6];
            this.f23518goto = b4VarArr;
        } else if (i2 == b4VarArr.length) {
            o(i2 != 0 ? i2 * 2 : 1);
            b4VarArr = this.f23518goto;
        }
        for (int i3 = i2; i3 > i; i3--) {
            b4 b4Var2 = b4VarArr[i3 - 1];
            b4Var2.f23516break = i3;
            b4VarArr[i3] = b4Var2;
        }
        b4Var.f23516break = i;
        b4Var.f23517else = this;
        b4VarArr[i] = b4Var;
        this.f23519this = i2 + 1;
    }

    public final void q() {
        this.f23516break = 0;
        this.f23517else = null;
    }

    /* renamed from: return, reason: not valid java name */
    public final void m27844return(b4 b4Var) {
        m27843public(this.f23519this, b4Var);
    }

    /* renamed from: static, reason: not valid java name */
    public Enumeration m27845static() {
        b4[] b4VarArr = this.f23518goto;
        return b4VarArr != null ? new tk2(b4VarArr, this.f23519this) : Collections.enumeration(Collections.EMPTY_LIST);
    }

    /* renamed from: switch, reason: not valid java name */
    public abstract String mo27846switch(boolean z);

    /* renamed from: synchronized, reason: not valid java name */
    public final b4 m27847synchronized() {
        return this.f23517else;
    }

    @Deprecated
    /* renamed from: throws, reason: not valid java name */
    public boolean m27848throws() {
        return !e();
    }
}
