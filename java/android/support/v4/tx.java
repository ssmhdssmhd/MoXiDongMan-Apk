package android.support.v4;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import org.apache.commons.lang3.Cclass;
import org.apache.commons.lang3.exception.ExceptionContext;

/* loaded from: classes3.dex */
public class tx implements ExceptionContext, Serializable {
    private static final long serialVersionUID = 20110706;
    private final List<pb1<String, Object>> contextValues = new ArrayList();

    @Override // org.apache.commons.lang3.exception.ExceptionContext
    public List<pb1<String, Object>> getContextEntries() {
        return this.contextValues;
    }

    @Override // org.apache.commons.lang3.exception.ExceptionContext
    public Set<String> getContextLabels() {
        HashSet hashSet = new HashSet();
        Iterator<pb1<String, Object>> it = this.contextValues.iterator();
        while (it.hasNext()) {
            hashSet.add(it.next().getKey());
        }
        return hashSet;
    }

    @Override // org.apache.commons.lang3.exception.ExceptionContext
    public List<Object> getContextValues(String str) {
        ArrayList arrayList = new ArrayList();
        for (pb1<String, Object> pb1Var : this.contextValues) {
            if (Cclass.m32273transient(str, pb1Var.getKey())) {
                arrayList.add(pb1Var.getValue());
            }
        }
        return arrayList;
    }

    @Override // org.apache.commons.lang3.exception.ExceptionContext
    public Object getFirstContextValue(String str) {
        for (pb1<String, Object> pb1Var : this.contextValues) {
            if (Cclass.m32273transient(str, pb1Var.getKey())) {
                return pb1Var.getValue();
            }
        }
        return null;
    }

    @Override // org.apache.commons.lang3.exception.ExceptionContext
    public String getFormattedExceptionMessage(String str) {
        String string;
        StringBuilder sb = new StringBuilder(256);
        if (str != null) {
            sb.append(str);
        }
        if (this.contextValues.size() > 0) {
            if (sb.length() > 0) {
                sb.append('\n');
            }
            sb.append("Exception Context:\n");
            int i = 0;
            for (pb1<String, Object> pb1Var : this.contextValues) {
                sb.append("\t[");
                i++;
                sb.append(i);
                sb.append(':');
                sb.append(pb1Var.getKey());
                sb.append("=");
                Object value = pb1Var.getValue();
                if (value == null) {
                    sb.append("null");
                } else {
                    try {
                        string = value.toString();
                    } catch (Exception e) {
                        string = "Exception thrown on toString(): " + r80.m6825class(e);
                    }
                    sb.append(string);
                }
                sb.append("]\n");
            }
            sb.append("---------------------------------");
        }
        return sb.toString();
    }

    @Override // org.apache.commons.lang3.exception.ExceptionContext
    public tx addContextValue(String str, Object obj) {
        this.contextValues.add(new gm0(str, obj));
        return this;
    }

    @Override // org.apache.commons.lang3.exception.ExceptionContext
    public tx setContextValue(String str, Object obj) {
        Iterator<pb1<String, Object>> it = this.contextValues.iterator();
        while (it.hasNext()) {
            if (Cclass.m32273transient(str, it.next().getKey())) {
                it.remove();
            }
        }
        addContextValue(str, obj);
        return this;
    }
}
