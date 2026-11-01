package com.sun.script.javascript;

import javax.script.CompiledScript;
import javax.script.ScriptContext;
import javax.script.ScriptEngine;
import javax.script.ScriptException;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.JavaScriptException;
import org.mozilla.javascript.RhinoException;
import org.mozilla.javascript.Script;

/* loaded from: classes2.dex */
final class RhinoCompiledScript extends CompiledScript {
    private RhinoScriptEngine engine;
    private Script script;

    public RhinoCompiledScript(RhinoScriptEngine rhinoScriptEngine, Script script) {
        this.engine = rhinoScriptEngine;
        this.script = script;
    }

    @Override // javax.script.CompiledScript
    public Object eval(ScriptContext scriptContext) throws RuntimeException, ScriptException {
        try {
            try {
                return this.engine.unwrapReturnValue(this.script.exec(RhinoScriptEngine.enterContext(), this.engine.getRuntimeScope(scriptContext)));
            } catch (RhinoException e) {
                int iLineNumber = e.lineNumber();
                if (iLineNumber == 0) {
                    iLineNumber = -1;
                }
                ScriptException scriptException = new ScriptException(e instanceof JavaScriptException ? String.valueOf(((JavaScriptException) e).getValue()) : e.toString(), e.sourceName(), iLineNumber);
                scriptException.initCause(e);
                throw scriptException;
            }
        } finally {
            Context.exit();
        }
    }

    @Override // javax.script.CompiledScript
    public ScriptEngine getEngine() {
        return this.engine;
    }
}
