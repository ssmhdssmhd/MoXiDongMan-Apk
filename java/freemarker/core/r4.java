package freemarker.core;

import android.support.v4.bl2;
import android.support.v4.fl2;
import android.support.v4.zk2;
import freemarker.template.TemplateCollectionModel;
import freemarker.template.TemplateCollectionModelEx;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateSequenceModel;
import java.util.Arrays;

/* loaded from: classes.dex */
public class r4 extends TemplateException {
    public r4(d0 d0Var, String str) {
        super(str, d0Var);
    }

    /* renamed from: goto, reason: not valid java name */
    private static z4 m28226goto(h0 h0Var, String str, TemplateModel templateModel, String str2, Class[] clsArr, d0 d0Var) throws b1 {
        Object[] objArrExplainTypeError;
        if (templateModel == null) {
            throw b1.getInstance(h0Var, d0Var);
        }
        z4 z4VarM28403try = new z4(m28227this(str2, h0Var, str, templateModel)).m28401if(h0Var).m28403try(true);
        if ((templateModel instanceof _UnexpectedTypeErrorExplainerTemplateModel) && (objArrExplainTypeError = ((_UnexpectedTypeErrorExplainerTemplateModel) templateModel).explainTypeError(clsArr)) != null) {
            z4VarM28403try.m28397break(objArrExplainTypeError);
        }
        if ((templateModel instanceof TemplateCollectionModel) && (Arrays.asList(clsArr).contains(TemplateSequenceModel.class) || Arrays.asList(clsArr).contains(TemplateCollectionModelEx.class))) {
            z4VarM28403try.m28402this("As the problematic value contains a collection of items, you could convert it to a sequence like someValue?sequence. Be sure though that you won't have a large number of items, as all will be held in memory the same time.");
        }
        return z4VarM28403try;
    }

    /* renamed from: this, reason: not valid java name */
    private static Object[] m28227this(String str, h0 h0Var, String str2, TemplateModel templateModel) {
        Object[] objArr = new Object[7];
        objArr[0] = "Expected ";
        objArr[1] = new zk2(str);
        objArr[2] = ", but ";
        objArr[3] = str2 == null ? h0Var != null ? "this" : "the expression" : new Object[]{"assignment target variable ", new fl2(str2)};
        objArr[4] = " has evaluated to ";
        objArr[5] = new zk2(new bl2(templateModel));
        objArr[6] = h0Var != null ? ":" : ".";
        return objArr;
    }

    public r4(d0 d0Var, z4 z4Var) {
        super(null, d0Var, null, z4Var);
    }

    public r4(h0 h0Var, TemplateModel templateModel, String str, Class[] clsArr, d0 d0Var) throws b1 {
        super(null, d0Var, h0Var, m28226goto(h0Var, null, templateModel, str, clsArr, d0Var));
    }

    public r4(h0 h0Var, TemplateModel templateModel, String str, Class[] clsArr, String str2, d0 d0Var) throws b1 {
        super(null, d0Var, h0Var, m28226goto(h0Var, null, templateModel, str, clsArr, d0Var).m28402this(str2));
    }

    public r4(h0 h0Var, TemplateModel templateModel, String str, Class[] clsArr, Object[] objArr, d0 d0Var) throws b1 {
        super(null, d0Var, h0Var, m28226goto(h0Var, null, templateModel, str, clsArr, d0Var).m28398catch(objArr));
    }

    public r4(String str, TemplateModel templateModel, String str2, Class[] clsArr, Object[] objArr, d0 d0Var) throws b1 {
        super(null, d0Var, null, m28226goto(null, str, templateModel, str2, clsArr, d0Var).m28398catch(objArr));
    }
}
