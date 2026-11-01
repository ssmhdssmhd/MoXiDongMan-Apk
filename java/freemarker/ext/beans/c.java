package freemarker.ext.beans;

import android.support.v4.az1;
import android.support.v4.bl2;
import android.support.v4.jl2;
import android.support.v4.k52;
import android.support.v4.vl2;
import com.umeng.analytics.pro.ak;
import freemarker.core._UnexpectedTypeErrorExplainerTemplateModel;
import freemarker.core.z4;
import freemarker.template.TemplateMethodModelEx;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateSequenceModel;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class c extends b implements TemplateMethodModelEx, TemplateSequenceModel, _UnexpectedTypeErrorExplainerTemplateModel {

    /* renamed from: new, reason: not valid java name */
    private final Object f24479new;

    /* renamed from: try, reason: not valid java name */
    private final Ctry f24480try;

    public c(Object obj, Method method, Class[] clsArr, Ctry ctry) {
        super(method, clsArr);
        this.f24479new = obj;
        this.f24480try = ctry;
    }

    @Override // freemarker.template.TemplateMethodModelEx, freemarker.template.TemplateMethodModel
    public Object exec(List list) throws k52 {
        try {
            return this.f24480try.m28687abstract(this.f24479new, (Method) m28494for(), m28495new(list, this.f24480try));
        } catch (k52 e) {
            throw e;
        } catch (Exception e2) {
            throw j.m28653const(this.f24479new, m28494for(), e2);
        }
    }

    @Override // freemarker.core._UnexpectedTypeErrorExplainerTemplateModel
    public Object[] explainTypeError(Class[] clsArr) {
        Method method;
        Class<?> returnType;
        Member memberM28494for = m28494for();
        if (!(memberM28494for instanceof Method) || (returnType = (method = (Method) memberM28494for).getReturnType()) == null || returnType == Void.TYPE || returnType == Void.class) {
            return null;
        }
        String name = method.getName();
        if (name.startsWith("get") && name.length() > 3 && Character.isUpperCase(name.charAt(3)) && method.getParameterTypes().length == 0) {
            return new Object[]{"Maybe using obj.something instead of obj.getSomething will yield the desired value."};
        }
        if (name.startsWith(ak.ae) && name.length() > 2 && Character.isUpperCase(name.charAt(2)) && method.getParameterTypes().length == 0) {
            return new Object[]{"Maybe using obj.something instead of obj.isSomething will yield the desired value."};
        }
        Object[] objArr = new Object[3];
        objArr[0] = "Maybe using obj.something(";
        objArr[1] = method.getParameterTypes().length != 0 ? "params" : "";
        objArr[2] = ") instead of obj.something will yield the desired value";
        return objArr;
    }

    @Override // freemarker.template.TemplateSequenceModel
    public TemplateModel get(int i) throws k52 {
        return (TemplateModel) exec(Collections.singletonList(new az1(Integer.valueOf(i))));
    }

    @Override // freemarker.template.TemplateSequenceModel
    public int size() throws k52 {
        throw new vl2(new z4("Getting the number of items or listing the items is not supported on this ", new bl2(this), " value, because this value wraps the following Java method, not a real listable value: ", new jl2(m28494for())).m28398catch("Maybe you should to call this method first and then do something with its return value.", "obj.someMethod(i) and obj.someMethod[i] does the same for this method, hence it's a \"+sequence\"."));
    }

    public String toString() {
        return m28494for().toString();
    }
}
