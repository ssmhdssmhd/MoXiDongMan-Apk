package freemarker.ext.jsp;

import freemarker.log.Cif;
import java.util.Iterator;
import java.util.LinkedList;
import javax.el.ArrayELResolver;
import javax.el.BeanELResolver;
import javax.el.CompositeELResolver;
import javax.el.ELContext;
import javax.el.ELContextEvent;
import javax.el.ELContextListener;
import javax.el.ELResolver;
import javax.el.ExpressionFactory;
import javax.el.FunctionMapper;
import javax.el.ListELResolver;
import javax.el.MapELResolver;
import javax.el.ResourceBundleELResolver;
import javax.el.ValueExpression;
import javax.el.VariableMapper;
import javax.servlet.jsp.JspApplicationContext;
import javax.servlet.jsp.el.ImplicitObjectELResolver;
import javax.servlet.jsp.el.ScopedAttributeELResolver;

/* renamed from: freemarker.ext.jsp.for, reason: invalid class name */
/* loaded from: classes3.dex */
class Cfor implements JspApplicationContext {

    /* renamed from: new, reason: not valid java name */
    private static final Cif f24850new = Cif.m29193break("freemarker.jsp");

    /* renamed from: try, reason: not valid java name */
    private static final ExpressionFactory f24851try = m28998case();

    /* renamed from: do, reason: not valid java name */
    private final LinkedList f24852do = new LinkedList();

    /* renamed from: for, reason: not valid java name */
    private final CompositeELResolver f24853for;

    /* renamed from: if, reason: not valid java name */
    private final CompositeELResolver f24854if;

    /* renamed from: freemarker.ext.jsp.for$do, reason: invalid class name */
    public class Cdo extends ELContext {

        /* renamed from: do, reason: not valid java name */
        private final Celse f24855do;

        /* renamed from: freemarker.ext.jsp.for$do$do, reason: invalid class name and collision with other inner class name */
        public class C0255do extends VariableMapper {
            public C0255do() {
            }

            /* renamed from: do, reason: not valid java name */
            public ValueExpression m29010do(String str) {
                Object objMo28933do = Cdo.this.f24855do.mo28933do(str);
                if (objMo28933do == null) {
                    return null;
                }
                return Cfor.f24851try.createValueExpression(objMo28933do, objMo28933do.getClass());
            }

            /* renamed from: if, reason: not valid java name */
            public ValueExpression m29011if(String str, ValueExpression valueExpression) {
                ValueExpression valueExpressionM29010do = m29010do(str);
                Cdo.this.f24855do.mo28956volatile(str, valueExpression.getValue(Cdo.this));
                return valueExpressionM29010do;
            }
        }

        public Cdo(Celse celse) {
            this.f24855do = celse;
        }

        /* renamed from: for, reason: not valid java name */
        public FunctionMapper m29007for() {
            return null;
        }

        /* renamed from: if, reason: not valid java name */
        public ELResolver m29008if() {
            return Cfor.this.f24854if;
        }

        /* renamed from: new, reason: not valid java name */
        public VariableMapper m29009new() {
            return new C0255do();
        }
    }

    public Cfor() {
        CompositeELResolver compositeELResolver = new CompositeELResolver();
        this.f24854if = compositeELResolver;
        CompositeELResolver compositeELResolver2 = new CompositeELResolver();
        this.f24853for = compositeELResolver2;
        compositeELResolver.add(new ImplicitObjectELResolver());
        compositeELResolver.add(compositeELResolver2);
        compositeELResolver.add(new MapELResolver());
        compositeELResolver.add(new ResourceBundleELResolver());
        compositeELResolver.add(new ListELResolver());
        compositeELResolver.add(new ArrayELResolver());
        compositeELResolver.add(new BeanELResolver());
        compositeELResolver.add(new ScopedAttributeELResolver());
    }

    /* renamed from: case, reason: not valid java name */
    private static ExpressionFactory m28998case() {
        ExpressionFactory expressionFactoryM29000goto = m29000goto("com.sun");
        if (expressionFactoryM29000goto == null && (expressionFactoryM29000goto = m29000goto("org.apache")) == null) {
            f24850new.mo29187package("Could not find any implementation for " + ExpressionFactory.class.getName());
        }
        return expressionFactoryM29000goto;
    }

    /* renamed from: goto, reason: not valid java name */
    private static ExpressionFactory m29000goto(String str) {
        String str2 = str + ".el.ExpressionFactoryImpl";
        try {
            Class clsM29285try = freemarker.template.utility.Cif.m29285try(str2);
            if (ExpressionFactory.class.isAssignableFrom(clsM29285try)) {
                f24850new.mo29180const("Using " + str2 + " as implementation of " + ExpressionFactory.class.getName());
                return (ExpressionFactory) clsM29285try.newInstance();
            }
            f24850new.mo29187package("Class " + str2 + " does not implement " + ExpressionFactory.class.getName());
            return null;
        } catch (ClassNotFoundException unused) {
            return null;
        } catch (Exception e) {
            f24850new.mo29181else("Failed to instantiate " + str2, e);
            return null;
        }
    }

    /* renamed from: else, reason: not valid java name */
    public ExpressionFactory m29002else() {
        return f24851try;
    }

    /* renamed from: for, reason: not valid java name */
    public void m29003for(ELContextListener eLContextListener) {
        synchronized (this.f24852do) {
            this.f24852do.addLast(eLContextListener);
        }
    }

    /* renamed from: new, reason: not valid java name */
    public void m29004new(ELResolver eLResolver) {
        this.f24853for.add(eLResolver);
    }

    /* renamed from: try, reason: not valid java name */
    public ELContext m29005try(Celse celse) {
        Cdo cdo = new Cdo(celse);
        ELContextEvent eLContextEvent = new ELContextEvent(cdo);
        synchronized (this.f24852do) {
            Iterator it = this.f24852do.iterator();
            while (it.hasNext()) {
                ((ELContextListener) it.next()).contextCreated(eLContextEvent);
            }
        }
        return cdo;
    }
}
