package freemarker.core;

import freemarker.template.Cstatic;
import javax.swing.JTree;
import javax.swing.tree.DefaultTreeModel;

@Deprecated
/* loaded from: classes.dex */
public class o0 extends JTree {
    public o0(Cstatic cstatic) {
        super(cstatic.o1());
    }

    /* renamed from: do, reason: not valid java name */
    public String m28187do(Object obj, boolean z, boolean z2, boolean z3, int i, boolean z4) {
        return obj instanceof b4 ? ((b4) obj).m27834continue() : obj.toString();
    }

    /* renamed from: if, reason: not valid java name */
    public void m28188if(Cstatic cstatic) {
        setModel(new DefaultTreeModel(cstatic.o1()));
        invalidate();
    }
}
