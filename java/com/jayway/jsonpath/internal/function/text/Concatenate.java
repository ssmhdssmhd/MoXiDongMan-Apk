package com.jayway.jsonpath.internal.function.text;

import com.jayway.jsonpath.internal.EvaluationContext;
import com.jayway.jsonpath.internal.PathRef;
import com.jayway.jsonpath.internal.function.Parameter;
import com.jayway.jsonpath.internal.function.PathFunction;
import java.util.Iterator;
import java.util.List;

/* loaded from: classes2.dex */
public class Concatenate implements PathFunction {
    @Override // com.jayway.jsonpath.internal.function.PathFunction
    public Object invoke(String str, PathRef pathRef, Object obj, EvaluationContext evaluationContext, List<Parameter> list) {
        StringBuffer stringBuffer = new StringBuffer();
        if (evaluationContext.configuration().jsonProvider().isArray(obj)) {
            for (Object obj2 : evaluationContext.configuration().jsonProvider().toIterable(obj)) {
                if (obj2 instanceof String) {
                    stringBuffer.append(obj2.toString());
                }
            }
        }
        if (list != null) {
            Iterator<Parameter> it = list.iterator();
            while (it.hasNext()) {
                Object value = it.next().getValue();
                if (value != null) {
                    stringBuffer.append(value.toString());
                }
            }
        }
        return stringBuffer.toString();
    }
}
