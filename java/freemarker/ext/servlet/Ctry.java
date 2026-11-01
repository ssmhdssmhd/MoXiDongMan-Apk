package freemarker.ext.servlet;

import android.support.v4.bl2;
import android.support.v4.nl2;
import freemarker.core.d0;
import freemarker.template.TemplateBooleanModel;
import freemarker.template.TemplateDirectiveBody;
import freemarker.template.TemplateDirectiveModel;
import freemarker.template.TemplateException;
import freemarker.template.TemplateModel;
import freemarker.template.TemplateScalarModel;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.Writer;
import java.lang.reflect.Array;
import java.util.Collection;
import java.util.Collections;
import java.util.Enumeration;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletRequestWrapper;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpServletResponseWrapper;

/* renamed from: freemarker.ext.servlet.try, reason: invalid class name */
/* loaded from: classes3.dex */
public class Ctry implements TemplateDirectiveModel {

    /* renamed from: do, reason: not valid java name */
    private final HttpServletRequest f24978do;

    /* renamed from: if, reason: not valid java name */
    private final HttpServletResponse f24979if;

    /* renamed from: freemarker.ext.servlet.try$do, reason: invalid class name */
    public class Cdo extends HttpServletResponseWrapper {

        /* renamed from: do, reason: not valid java name */
        public final /* synthetic */ PrintWriter f24980do;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(HttpServletResponse httpServletResponse, PrintWriter printWriter) {
            super(httpServletResponse);
            this.f24980do = printWriter;
        }

        /* renamed from: do, reason: not valid java name */
        public PrintWriter m29123do() {
            return this.f24980do;
        }
    }

    /* renamed from: freemarker.ext.servlet.try$if, reason: invalid class name */
    public static final class Cif extends HttpServletRequestWrapper {

        /* renamed from: do, reason: not valid java name */
        private final HashMap f24982do;

        public /* synthetic */ Cif(HttpServletRequest httpServletRequest, Map map, boolean z, Cdo cdo) {
            this(httpServletRequest, map, z);
        }

        /* renamed from: do, reason: not valid java name */
        public String m29124do(String str) {
            String[] strArr = (String[]) this.f24982do.get(str);
            if (strArr == null || strArr.length <= 0) {
                return null;
            }
            return strArr[0];
        }

        /* renamed from: for, reason: not valid java name */
        public Enumeration m29125for() {
            return Collections.enumeration(this.f24982do.keySet());
        }

        /* renamed from: if, reason: not valid java name */
        public Map m29126if() {
            HashMap map = (HashMap) this.f24982do.clone();
            for (Map.Entry entry : map.entrySet()) {
                entry.setValue(((String[]) entry.getValue()).clone());
            }
            return Collections.unmodifiableMap(map);
        }

        /* renamed from: new, reason: not valid java name */
        public String[] m29127new(String str) {
            String[] strArr = (String[]) this.f24982do.get(str);
            if (strArr != null) {
                return (String[]) strArr.clone();
            }
            return null;
        }

        private Cif(HttpServletRequest httpServletRequest, Map map, boolean z) {
            String[] strArr;
            String[] strArr2;
            super(httpServletRequest);
            this.f24982do = z ? new HashMap(httpServletRequest.getParameterMap()) : new HashMap();
            for (Map.Entry entry : map.entrySet()) {
                String strValueOf = String.valueOf(entry.getKey());
                Object value = entry.getValue();
                if (value == null) {
                    strArr2 = new String[]{null};
                } else if (value instanceof String[]) {
                    strArr2 = (String[]) value;
                } else {
                    if (value instanceof Collection) {
                        Collection collection = (Collection) value;
                        strArr = new String[collection.size()];
                        Iterator it = collection.iterator();
                        int i = 0;
                        while (it.hasNext()) {
                            strArr[i] = String.valueOf(it.next());
                            i++;
                        }
                    } else if (value.getClass().isArray()) {
                        int length = Array.getLength(value);
                        String[] strArr3 = new String[length];
                        for (int i2 = 0; i2 < length; i2++) {
                            strArr3[i2] = String.valueOf(Array.get(value, i2));
                        }
                        strArr2 = strArr3;
                    } else {
                        strArr = new String[]{String.valueOf(value)};
                    }
                    strArr2 = strArr;
                }
                String[] strArr4 = (String[]) this.f24982do.get(strValueOf);
                int length2 = strArr4 == null ? 0 : strArr4.length;
                if (length2 == 0) {
                    this.f24982do.put(strValueOf, strArr2);
                } else {
                    int length3 = strArr2.length;
                    if (length3 > 0) {
                        String[] strArr5 = new String[length2 + length3];
                        System.arraycopy(strArr2, 0, strArr5, 0, length3);
                        System.arraycopy(strArr4, 0, strArr5, length3, length2);
                        this.f24982do.put(strValueOf, strArr5);
                    }
                }
            }
        }
    }

    public Ctry(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse) {
        this.f24978do = httpServletRequest;
        this.f24979if = httpServletResponse;
    }

    @Override // freemarker.template.TemplateDirectiveModel
    public void execute(d0 d0Var, Map map, TemplateModel[] templateModelArr, TemplateDirectiveBody templateDirectiveBody) throws TemplateException, IOException {
        HttpServletResponse cdo;
        boolean asBoolean;
        Map map2;
        HttpServletRequest cif;
        TemplateModel templateModel = (TemplateModel) map.get("path");
        if (templateModel == null) {
            throw new nl2(d0Var, "Missing required parameter \"path\"");
        }
        if (!(templateModel instanceof TemplateScalarModel)) {
            throw new nl2(d0Var, "Expected a scalar model. \"path\" is instead ", new bl2(templateModel));
        }
        String asString = ((TemplateScalarModel) templateModel).getAsString();
        if (asString == null) {
            throw new nl2(d0Var, "String value of \"path\" parameter is null");
        }
        Writer writerC2 = d0Var.c2();
        if (writerC2 == this.f24979if.getWriter()) {
            cdo = this.f24979if;
        } else {
            cdo = new Cdo(this.f24979if, writerC2 instanceof PrintWriter ? (PrintWriter) writerC2 : new PrintWriter(writerC2));
        }
        TemplateModel templateModel2 = (TemplateModel) map.get("inherit_params");
        if (templateModel2 == null) {
            asBoolean = true;
        } else {
            if (!(templateModel2 instanceof TemplateBooleanModel)) {
                throw new nl2(d0Var, "\"inherit_params\" should be a boolean but it's a(n) ", templateModel2.getClass().getName(), " instead");
            }
            asBoolean = ((TemplateBooleanModel) templateModel2).getAsBoolean();
        }
        TemplateModel templateModel3 = (TemplateModel) map.get("params");
        if (templateModel3 == null && asBoolean) {
            cif = this.f24978do;
        } else {
            if (templateModel3 != null) {
                Object objM29347for = freemarker.template.utility.Ctry.m29347for(templateModel3);
                if (!(objM29347for instanceof Map)) {
                    throw new nl2(d0Var, "Expected \"params\" to unwrap into a java.util.Map. It unwrapped into ", objM29347for.getClass().getName(), " instead.");
                }
                map2 = (Map) objM29347for;
            } else {
                map2 = Collections.EMPTY_MAP;
            }
            cif = new Cif(this.f24978do, map2, asBoolean, null);
        }
        try {
            this.f24978do.getRequestDispatcher(asString).include(cif, cdo);
        } catch (ServletException e) {
            throw new nl2((Throwable) e, d0Var);
        }
    }
}
