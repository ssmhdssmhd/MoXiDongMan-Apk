package com.jayway.jsonpath.internal.path;

import com.jayway.jsonpath.InvalidPathException;
import com.jayway.jsonpath.internal.PathRef;
import com.jayway.jsonpath.internal.function.ParamType;
import com.jayway.jsonpath.internal.function.Parameter;
import com.jayway.jsonpath.internal.function.PathFunction;
import com.jayway.jsonpath.internal.function.PathFunctionFactory;
import com.jayway.jsonpath.internal.function.latebinding.JsonLateBindingValue;
import com.jayway.jsonpath.internal.function.latebinding.PathLateBindingValue;
import java.util.List;

/* loaded from: classes2.dex */
public class FunctionPathToken extends PathToken {
    private final String functionName;
    private final List<Parameter> functionParams;
    private final String pathFragment;

    /* renamed from: com.jayway.jsonpath.internal.path.FunctionPathToken$1, reason: invalid class name */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] $SwitchMap$com$jayway$jsonpath$internal$function$ParamType;

        static {
            int[] iArr = new int[ParamType.values().length];
            $SwitchMap$com$jayway$jsonpath$internal$function$ParamType = iArr;
            try {
                iArr[ParamType.PATH.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$jayway$jsonpath$internal$function$ParamType[ParamType.JSON.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public FunctionPathToken(String str, List<Parameter> list) {
        StringBuilder sb = new StringBuilder();
        sb.append(str);
        sb.append((list == null || list.size() <= 0) ? "()" : "(...)");
        this.pathFragment = sb.toString();
        if (str != null) {
            this.functionName = str;
            this.functionParams = list;
        } else {
            this.functionName = null;
            this.functionParams = null;
        }
    }

    private void evaluateParameters(String str, PathRef pathRef, Object obj, EvaluationContextImpl evaluationContextImpl) {
        List<Parameter> list = this.functionParams;
        if (list != null) {
            for (Parameter parameter : list) {
                if (!parameter.hasEvaluated()) {
                    int i = AnonymousClass1.$SwitchMap$com$jayway$jsonpath$internal$function$ParamType[parameter.getType().ordinal()];
                    if (i == 1) {
                        parameter.setLateBinding(new PathLateBindingValue(parameter.getPath(), evaluationContextImpl.rootDocument(), evaluationContextImpl.configuration()));
                        parameter.setEvaluated(Boolean.TRUE);
                    } else if (i == 2) {
                        parameter.setLateBinding(new JsonLateBindingValue(evaluationContextImpl.configuration().jsonProvider(), parameter));
                        parameter.setEvaluated(Boolean.TRUE);
                    }
                }
            }
        }
    }

    @Override // com.jayway.jsonpath.internal.path.PathToken
    public void evaluate(String str, PathRef pathRef, Object obj, EvaluationContextImpl evaluationContextImpl) throws InvalidPathException {
        PathFunction pathFunctionNewFunction = PathFunctionFactory.newFunction(this.functionName);
        evaluateParameters(str, pathRef, obj, evaluationContextImpl);
        Object objInvoke = pathFunctionNewFunction.invoke(str, pathRef, obj, evaluationContextImpl, this.functionParams);
        evaluationContextImpl.addResult(str + "." + this.functionName, pathRef, objInvoke);
        if (isLeaf()) {
            return;
        }
        next().evaluate(str, pathRef, objInvoke, evaluationContextImpl);
    }

    @Override // com.jayway.jsonpath.internal.path.PathToken
    public String getPathFragment() {
        return "." + this.pathFragment;
    }

    @Override // com.jayway.jsonpath.internal.path.PathToken
    public boolean isTokenDefinite() {
        return true;
    }
}
