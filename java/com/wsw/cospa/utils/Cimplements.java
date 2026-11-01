package com.wsw.cospa.utils;

import com.sun.script.javascript.RhinoScriptEngine;
import com.uc.crashsdk.export.LogType;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeRule;
import com.wsw.cospa.utils.analyzeUrl.AnalyzeYCYJS;
import javax.script.ScriptEngine;
import javax.script.SimpleBindings;

/* renamed from: com.wsw.cospa.utils.implements, reason: invalid class name */
/* loaded from: classes2.dex */
public class Cimplements {

    /* renamed from: do, reason: not valid java name */
    public static final ScriptEngine f22661do = new RhinoScriptEngine();

    /* renamed from: do, reason: not valid java name */
    public static Object m26920do(String str, String str2) throws Exception {
        SimpleBindings simpleBindings = new SimpleBindings();
        simpleBindings.put(LogType.JAVA_TYPE, (Object) new AnalyzeRule());
        simpleBindings.put("baseUrl", (Object) str2);
        new AnalyzeYCYJS().setBindings(simpleBindings);
        return f22661do.eval(str, simpleBindings);
    }

    /* renamed from: if, reason: not valid java name */
    public static Object m26921if(String str, String str2, String str3) throws Exception {
        SimpleBindings simpleBindings = new SimpleBindings();
        simpleBindings.put(LogType.JAVA_TYPE, (Object) new AnalyzeRule(str3));
        simpleBindings.put("baseUrl", (Object) str2);
        new AnalyzeYCYJS().setBindings(simpleBindings);
        return f22661do.eval(str, simpleBindings);
    }
}
