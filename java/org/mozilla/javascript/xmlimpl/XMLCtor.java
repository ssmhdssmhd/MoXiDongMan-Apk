package org.mozilla.javascript.xmlimpl;

import freemarker.ext.servlet.Ccase;
import org.mozilla.javascript.Context;
import org.mozilla.javascript.IdFunctionObject;
import org.mozilla.javascript.IdScriptableObject;
import org.mozilla.javascript.ScriptRuntime;
import org.mozilla.javascript.Scriptable;
import org.mozilla.javascript.ScriptableObject;
import org.mozilla.javascript.Undefined;

/* loaded from: classes3.dex */
class XMLCtor extends IdFunctionObject {
    private static final int Id_defaultSettings = 1;
    private static final int Id_ignoreComments = 1;
    private static final int Id_ignoreProcessingInstructions = 2;
    private static final int Id_ignoreWhitespace = 3;
    private static final int Id_prettyIndent = 4;
    private static final int Id_prettyPrinting = 5;
    private static final int Id_setSettings = 3;
    private static final int Id_settings = 2;
    private static final int MAX_FUNCTION_ID = 3;
    private static final int MAX_INSTANCE_ID = 5;
    private static final Object XMLCTOR_TAG = "XMLCtor";
    public static final long serialVersionUID = -8708195078359817341L;
    private XmlProcessor options;

    public XMLCtor(XML xml, Object obj, int i, int i2) {
        super(xml, obj, i, i2);
        this.options = xml.getProcessor();
        activatePrototypeMap(3);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x0035  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0038 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void readSettings(Scriptable scriptable) throws RuntimeException {
        for (int i = 1; i <= 5; i++) {
            int maxInstanceId = super.getMaxInstanceId() + i;
            Object property = ScriptableObject.getProperty(scriptable, getInstanceIdName(maxInstanceId));
            if (property != Scriptable.NOT_FOUND) {
                if (i == 1 || i == 2 || i == 3) {
                    if (!(property instanceof Boolean)) {
                        setInstanceIdValue(maxInstanceId, property);
                    }
                } else if (i != 4) {
                    if (i != 5) {
                        throw new IllegalStateException();
                    }
                    if (!(property instanceof Boolean)) {
                    }
                } else if (!(property instanceof Number)) {
                }
            }
        }
    }

    private void writeSetting(Scriptable scriptable) {
        for (int i = 1; i <= 5; i++) {
            int maxInstanceId = super.getMaxInstanceId() + i;
            ScriptableObject.putProperty(scriptable, getInstanceIdName(maxInstanceId), getInstanceIdValue(maxInstanceId));
        }
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject, org.mozilla.javascript.IdFunctionCall
    public Object execIdCall(IdFunctionObject idFunctionObject, Context context, Scriptable scriptable, Scriptable scriptable2, Object[] objArr) throws RuntimeException {
        if (!idFunctionObject.hasTag(XMLCTOR_TAG)) {
            return super.execIdCall(idFunctionObject, context, scriptable, scriptable2, objArr);
        }
        int iMethodId = idFunctionObject.methodId();
        if (iMethodId == 1) {
            this.options.setDefault();
            Scriptable scriptableNewObject = context.newObject(scriptable);
            writeSetting(scriptableNewObject);
            return scriptableNewObject;
        }
        if (iMethodId == 2) {
            Scriptable scriptableNewObject2 = context.newObject(scriptable);
            writeSetting(scriptableNewObject2);
            return scriptableNewObject2;
        }
        if (iMethodId != 3) {
            throw new IllegalArgumentException(String.valueOf(iMethodId));
        }
        if (objArr.length == 0 || objArr[0] == null || objArr[0] == Undefined.instance) {
            this.options.setDefault();
        } else if (objArr[0] instanceof Scriptable) {
            readSettings((Scriptable) objArr[0]);
        }
        return Undefined.instance;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0037  */
    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int findInstanceIdInfo(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length == 12) {
            str2 = "prettyIndent";
            i = 4;
        } else if (length == 14) {
            char cCharAt = str.charAt(0);
            if (cCharAt == 'i') {
                str2 = "ignoreComments";
                i = 1;
            } else if (cCharAt == 'p') {
                str2 = "prettyPrinting";
                i = 5;
            }
        } else if (length == 16) {
            str2 = "ignoreWhitespace";
            i = 3;
        } else if (length != 28) {
            str2 = null;
            i = 0;
        } else {
            str2 = "ignoreProcessingInstructions";
            i = 2;
        }
        int i2 = (str2 == null || str2 == str || str2.equals(str)) ? i : 0;
        if (i2 == 0) {
            return super.findInstanceIdInfo(str);
        }
        if (i2 == 1 || i2 == 2 || i2 == 3 || i2 == 4 || i2 == 5) {
            return IdScriptableObject.instanceIdInfo(6, super.getMaxInstanceId() + i2);
        }
        throw new IllegalStateException();
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    public int findPrototypeId(String str) {
        String str2;
        int i;
        int length = str.length();
        if (length == 8) {
            i = 2;
            str2 = Ccase.f24961new;
        } else if (length == 11) {
            i = 3;
            str2 = "setSettings";
        } else if (length == 15) {
            i = 1;
            str2 = "defaultSettings";
        } else {
            str2 = null;
            i = 0;
        }
        if (str2 == null || str2 == str || str2.equals(str)) {
            return i;
        }
        return 0;
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    public String getInstanceIdName(int i) {
        int maxInstanceId = i - super.getMaxInstanceId();
        return maxInstanceId != 1 ? maxInstanceId != 2 ? maxInstanceId != 3 ? maxInstanceId != 4 ? maxInstanceId != 5 ? super.getInstanceIdName(i) : "prettyPrinting" : "prettyIndent" : "ignoreWhitespace" : "ignoreProcessingInstructions" : "ignoreComments";
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    public Object getInstanceIdValue(int i) {
        int maxInstanceId = i - super.getMaxInstanceId();
        return maxInstanceId != 1 ? maxInstanceId != 2 ? maxInstanceId != 3 ? maxInstanceId != 4 ? maxInstanceId != 5 ? super.getInstanceIdValue(i) : ScriptRuntime.wrapBoolean(this.options.isPrettyPrinting()) : ScriptRuntime.wrapInt(this.options.getPrettyIndent()) : ScriptRuntime.wrapBoolean(this.options.isIgnoreWhitespace()) : ScriptRuntime.wrapBoolean(this.options.isIgnoreProcessingInstructions()) : ScriptRuntime.wrapBoolean(this.options.isIgnoreComments());
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    public int getMaxInstanceId() {
        return super.getMaxInstanceId() + 5;
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.ScriptableObject, org.mozilla.javascript.Scriptable
    public boolean hasInstance(Scriptable scriptable) {
        return (scriptable instanceof XML) || (scriptable instanceof XMLList);
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    public void initPrototypeId(int i) {
        String str;
        String str2;
        int i2 = 1;
        if (i == 1) {
            str = "defaultSettings";
        } else {
            if (i != 2) {
                if (i != 3) {
                    throw new IllegalArgumentException(String.valueOf(i));
                }
                str2 = "setSettings";
                initPrototypeMethod(XMLCTOR_TAG, i, str2, i2);
            }
            str = Ccase.f24961new;
        }
        str2 = str;
        i2 = 0;
        initPrototypeMethod(XMLCTOR_TAG, i, str2, i2);
    }

    @Override // org.mozilla.javascript.BaseFunction, org.mozilla.javascript.IdScriptableObject
    public void setInstanceIdValue(int i, Object obj) throws RuntimeException {
        int maxInstanceId = i - super.getMaxInstanceId();
        if (maxInstanceId == 1) {
            this.options.setIgnoreComments(ScriptRuntime.toBoolean(obj));
            return;
        }
        if (maxInstanceId == 2) {
            this.options.setIgnoreProcessingInstructions(ScriptRuntime.toBoolean(obj));
            return;
        }
        if (maxInstanceId == 3) {
            this.options.setIgnoreWhitespace(ScriptRuntime.toBoolean(obj));
            return;
        }
        if (maxInstanceId == 4) {
            this.options.setPrettyIndent(ScriptRuntime.toInt32(obj));
        } else if (maxInstanceId != 5) {
            super.setInstanceIdValue(i, obj);
        } else {
            this.options.setPrettyPrinting(ScriptRuntime.toBoolean(obj));
        }
    }
}
