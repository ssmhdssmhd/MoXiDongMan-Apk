package android.support.v4;

import java.util.HashMap;
import java.util.Map;
import org.seimicrawler.xpath.core.AxisSelector;
import org.seimicrawler.xpath.core.Function;
import org.seimicrawler.xpath.core.NodeTest;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

/* loaded from: classes.dex */
public class as1 {

    /* renamed from: do, reason: not valid java name */
    private static Map<String, AxisSelector> f229do = new HashMap();

    /* renamed from: if, reason: not valid java name */
    private static Map<String, NodeTest> f231if = new HashMap();

    /* renamed from: for, reason: not valid java name */
    private static Map<String, Function> f230for = new HashMap();

    /* renamed from: new, reason: not valid java name */
    private static Logger f232new = LoggerFactory.getLogger((Class<?>) as1.class);

    static {
        m324new(q1.class, r1.class, s4.class, nl.class, jz.class, kz.class, ed0.class, fd0.class, gd0.class, gc1.class, xe1.class, ye1.class, ze1.class, ow1.class);
        m326try(kq.class, br.class, as.class, gc0.class, bs0.class, i41.class, te1.class, l12.class, h22.class, o22.class, p22.class, r22.class, t22.class, kd0.class, q22.class, s22.class);
        m318case(k1.class, jk0.class, x31.class, d51.class, d91.class, a62.class);
    }

    /* renamed from: case, reason: not valid java name */
    public static void m318case(Class<? extends NodeTest>... clsArr) throws IllegalAccessException, InstantiationException {
        for (Class<? extends NodeTest> cls : clsArr) {
            m325this(cls);
        }
    }

    /* renamed from: do, reason: not valid java name */
    public static Function m319do(String str) {
        Function function = f230for.get(str);
        if (function != null) {
            return function;
        }
        throw new s31("not support function: " + str);
    }

    /* renamed from: else, reason: not valid java name */
    public static void m320else(Class<? extends AxisSelector> cls) throws IllegalAccessException, InstantiationException {
        try {
            AxisSelector axisSelectorNewInstance = cls.newInstance();
            f229do.put(axisSelectorNewInstance.name(), axisSelectorNewInstance);
        } catch (Exception e) {
            f232new.info(r80.m6828else(e), (Throwable) e);
        }
    }

    /* renamed from: for, reason: not valid java name */
    public static AxisSelector m321for(String str) {
        AxisSelector axisSelector = f229do.get(str);
        if (axisSelector != null) {
            return axisSelector;
        }
        throw new p31("not support axis: " + str);
    }

    /* renamed from: goto, reason: not valid java name */
    public static void m322goto(Class<? extends Function> cls) throws IllegalAccessException, InstantiationException {
        try {
            Function functionNewInstance = cls.newInstance();
            f230for.put(functionNewInstance.name(), functionNewInstance);
        } catch (Exception e) {
            f232new.info(r80.m6828else(e), (Throwable) e);
        }
    }

    /* renamed from: if, reason: not valid java name */
    public static NodeTest m323if(String str) {
        NodeTest nodeTest = f231if.get(str);
        if (nodeTest != null) {
            return nodeTest;
        }
        throw new s31("not support nodeTest: " + str);
    }

    /* renamed from: new, reason: not valid java name */
    public static void m324new(Class<? extends AxisSelector>... clsArr) throws IllegalAccessException, InstantiationException {
        for (Class<? extends AxisSelector> cls : clsArr) {
            m320else(cls);
        }
    }

    /* renamed from: this, reason: not valid java name */
    public static void m325this(Class<? extends NodeTest> cls) throws IllegalAccessException, InstantiationException {
        try {
            NodeTest nodeTestNewInstance = cls.newInstance();
            f231if.put(nodeTestNewInstance.name(), nodeTestNewInstance);
        } catch (Exception e) {
            f232new.info(r80.m6828else(e), (Throwable) e);
        }
    }

    /* renamed from: try, reason: not valid java name */
    public static void m326try(Class<? extends Function>... clsArr) throws IllegalAccessException, InstantiationException {
        for (Class<? extends Function> cls : clsArr) {
            m322goto(cls);
        }
    }
}
