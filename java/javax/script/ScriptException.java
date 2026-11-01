package javax.script;

/* loaded from: classes3.dex */
public class ScriptException extends Exception {
    private int columnNumber;
    private String fileName;
    private int lineNumber;

    public ScriptException(String str) {
        super(str);
        this.fileName = null;
        this.lineNumber = -1;
        this.columnNumber = -1;
    }

    public int getColumnNumber() {
        return this.columnNumber;
    }

    public String getFileName() {
        return this.fileName;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String message = super.getMessage();
        if (this.fileName == null) {
            return message;
        }
        String str = message + " in " + this.fileName;
        if (this.lineNumber != -1) {
            str = str + " at line number " + this.lineNumber;
        }
        if (this.columnNumber == -1) {
            return str;
        }
        return str + " at column number " + this.columnNumber;
    }

    public ScriptException(Exception exc) {
        super(exc);
        this.fileName = null;
        this.lineNumber = -1;
        this.columnNumber = -1;
    }

    public ScriptException(String str, String str2, int i) {
        super(str);
        this.fileName = str2;
        this.lineNumber = i;
        this.columnNumber = -1;
    }

    public ScriptException(String str, String str2, int i, int i2) {
        super(str);
        this.fileName = str2;
        this.lineNumber = i;
        this.columnNumber = i2;
    }
}
