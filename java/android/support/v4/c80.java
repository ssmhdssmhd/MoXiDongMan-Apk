package android.support.v4;

import freemarker.debug.DebuggedEnvironment;
import java.util.EventObject;

/* loaded from: classes.dex */
public class c80 extends EventObject {
    private static final long serialVersionUID = 1;
    private final DebuggedEnvironment env;
    private final int line;
    private final String name;

    public c80(Object obj, String str, int i, DebuggedEnvironment debuggedEnvironment) {
        super(obj);
        this.name = str;
        this.line = i;
        this.env = debuggedEnvironment;
    }

    public DebuggedEnvironment getEnvironment() {
        return this.env;
    }

    public int getLine() {
        return this.line;
    }

    public String getName() {
        return this.name;
    }
}
