package freemarker.core;

import java.io.Serializable;

/* loaded from: classes.dex */
class m4 implements Serializable {
    private static final long serialVersionUID = 1;
    public int beginColumn;
    public int beginLine;
    public int endColumn;
    public int endLine;
    public String image;
    public int kind;
    public m4 next;
    public m4 specialToken;

    public m4() {
    }

    public static m4 newToken(int i, String str) {
        return new m4(i, str);
    }

    public Object getValue() {
        return null;
    }

    public String toString() {
        return this.image;
    }

    public m4(int i) {
        this(i, null);
    }

    public static m4 newToken(int i) {
        return newToken(i, null);
    }

    public m4(int i, String str) {
        this.kind = i;
        this.image = str;
    }
}
