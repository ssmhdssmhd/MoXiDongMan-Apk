package com.jayway.jsonpath.internal.function;

import com.jayway.jsonpath.internal.Path;
import com.jayway.jsonpath.internal.function.latebinding.ILateBindingValue;

/* loaded from: classes2.dex */
public class Parameter {
    private Boolean evaluated;
    private String json;
    private ILateBindingValue lateBinding;
    private Path path;
    private ParamType type;

    public Parameter() {
        this.evaluated = Boolean.FALSE;
    }

    public String getJson() {
        return this.json;
    }

    public Path getPath() {
        return this.path;
    }

    public ParamType getType() {
        return this.type;
    }

    public Object getValue() {
        return this.lateBinding.get();
    }

    public boolean hasEvaluated() {
        return this.evaluated.booleanValue();
    }

    public void setEvaluated(Boolean bool) {
        this.evaluated = bool;
    }

    public void setJson(String str) {
        this.json = str;
    }

    public void setLateBinding(ILateBindingValue iLateBindingValue) {
        this.lateBinding = iLateBindingValue;
    }

    public void setPath(Path path) {
        this.path = path;
    }

    public void setType(ParamType paramType) {
        this.type = paramType;
    }

    public Parameter(String str) {
        this.evaluated = Boolean.FALSE;
        this.json = str;
        this.type = ParamType.JSON;
    }

    public Parameter(Path path) {
        this.evaluated = Boolean.FALSE;
        this.path = path;
        this.type = ParamType.PATH;
    }
}
