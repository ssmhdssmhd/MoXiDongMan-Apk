package freemarker.core;

import freemarker.template.Cstatic;
import freemarker.template.utility.Cconst;
import freemarker.template.utility.Csuper;
import java.io.IOException;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import org.apache.commons.lang3.Cclass;

/* loaded from: classes.dex */
public class h3 extends IOException implements FMParserConstants {

    /* renamed from: do, reason: not valid java name */
    private static volatile Boolean f23819do;
    public int columnNumber;
    public m4 currentToken;
    private String description;
    public int endColumnNumber;
    public int endLineNumber;
    public String eol;
    public int[][] expectedTokenSequences;
    public int lineNumber;
    private String message;
    private boolean messageAndDescriptionRendered;

    @Deprecated
    public boolean specialConstructor;
    private String templateName;
    public String[] tokenImage;

    public h3(m4 m4Var, int[][] iArr, String[] strArr) {
        super("");
        this.eol = Cconst.m29258for("line.separator", "\n");
        this.currentToken = m4Var;
        this.specialConstructor = true;
        this.expectedTokenSequences = iArr;
        this.tokenImage = strArr;
        m4 m4Var2 = m4Var.next;
        this.lineNumber = m4Var2.beginLine;
        this.columnNumber = m4Var2.beginColumn;
        this.endLineNumber = m4Var2.endLine;
        this.endColumnNumber = m4Var2.endColumn;
    }

    /* renamed from: case, reason: not valid java name */
    private void m28058case() {
        String str;
        String strM28062new = m28062new();
        if (m28063try()) {
            str = "[col. " + this.columnNumber + "] ";
        } else {
            str = "Syntax error " + b5.m27852catch(this.templateName, this.lineNumber, this.columnNumber) + ":\n";
        }
        String str2 = str + strM28062new;
        String strSubstring = str2.substring(str.length());
        synchronized (this) {
            this.message = str2;
            this.description = strSubstring;
            this.messageAndDescriptionRendered = true;
        }
    }

    /* renamed from: do, reason: not valid java name */
    private String m28059do(Set set) {
        StringBuilder sb = new StringBuilder();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            String str = (String) it.next();
            if (sb.length() != 0) {
                sb.append(" or ");
            }
            sb.append(str);
        }
        return sb.toString();
    }

    /* renamed from: for, reason: not valid java name */
    private String m28060for() {
        String str;
        synchronized (this) {
            if (this.messageAndDescriptionRendered) {
                return this.description;
            }
            m28058case();
            synchronized (this) {
                str = this.description;
            }
            return str;
        }
    }

    /* renamed from: if, reason: not valid java name */
    private String m28061if() {
        m4 m4Var = this.currentToken.next;
        int i = m4Var.kind;
        if (i != 0) {
            if (i == 54) {
                return "Unexpected directive, \"#else\". Check if you have a valid #if-#elseif-#else or #list-#else structure.";
            }
            if (i != 36 && i != 9) {
                return null;
            }
            return "Unexpected directive, " + Csuper.m29317instanceof(m4Var) + ". Check if you have a valid #if-#elseif-#else structure.";
        }
        HashSet hashSet = new HashSet();
        int i2 = 0;
        while (true) {
            int[][] iArr = this.expectedTokenSequences;
            if (i2 >= iArr.length) {
                StringBuilder sb = new StringBuilder();
                sb.append("Unexpected end of file reached.");
                sb.append(hashSet.size() == 0 ? "" : " You have an unclosed " + m28059do(hashSet) + ".");
                return sb.toString();
            }
            for (int i3 : iArr[i2]) {
                if (i3 == 36) {
                    hashSet.add("#if");
                } else if (i3 == 37) {
                    hashSet.add("#list");
                } else if (i3 == 71) {
                    hashSet.add("#escape");
                } else if (i3 == 73) {
                    hashSet.add("#noescape");
                } else if (i3 == 75) {
                    hashSet.add("@...");
                } else if (i3 == 134) {
                    hashSet.add("\"[\"");
                } else if (i3 == 136) {
                    hashSet.add("\"(\"");
                } else if (i3 != 138) {
                    switch (i3) {
                        case 41:
                            hashSet.add("#attempt");
                            break;
                        case 42:
                            hashSet.add("#foreach");
                            break;
                        case 43:
                            hashSet.add("#local");
                            break;
                        case 44:
                            hashSet.add("#global");
                            break;
                        case 45:
                            hashSet.add("#assign");
                            break;
                        case 47:
                            hashSet.add("#macro");
                        case 46:
                            hashSet.add("#function");
                            break;
                        default:
                            switch (i3) {
                                case 51:
                                    hashSet.add("#compress");
                                    break;
                                case 52:
                                    hashSet.add("#transform");
                                    break;
                                case 53:
                                    hashSet.add("#switch");
                                    break;
                            }
                    }
                } else {
                    hashSet.add("\"{\"");
                }
            }
            i2++;
        }
    }

    /* renamed from: new, reason: not valid java name */
    private String m28062new() {
        synchronized (this) {
            String str = this.description;
            if (str != null) {
                return str;
            }
            if (this.currentToken == null) {
                return null;
            }
            String strM28061if = m28061if();
            if (strM28061if != null) {
                return strM28061if;
            }
            StringBuilder sb = new StringBuilder();
            int length = 0;
            for (int i = 0; i < this.expectedTokenSequences.length; i++) {
                if (i != 0) {
                    sb.append(this.eol);
                }
                sb.append("    ");
                int[][] iArr = this.expectedTokenSequences;
                if (length < iArr[i].length) {
                    length = iArr[i].length;
                }
                for (int i2 = 0; i2 < this.expectedTokenSequences[i].length; i2++) {
                    if (i2 != 0) {
                        sb.append(' ');
                    }
                    sb.append(this.tokenImage[this.expectedTokenSequences[i][i2]]);
                }
            }
            String str2 = "Encountered \"";
            m4 m4Var = this.currentToken.next;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    break;
                }
                if (i3 != 0) {
                    str2 = str2 + Cclass.f28652do;
                }
                if (m4Var.kind == 0) {
                    str2 = str2 + this.tokenImage[0];
                    break;
                }
                str2 = str2 + add_escapes(m4Var.image);
                m4Var = m4Var.next;
                i3++;
            }
            String str3 = str2 + "\", but ";
            return (this.expectedTokenSequences.length == 1 ? str3 + "was expecting:" + this.eol : str3 + "was expecting one of:" + this.eol) + ((Object) sb);
        }
    }

    /* renamed from: try, reason: not valid java name */
    private boolean m28063try() {
        if (f23819do == null) {
            try {
                f23819do = Boolean.valueOf(h3.class.getClassLoader().toString().indexOf("[org.jboss.ide.eclipse.freemarker:") != -1);
            } catch (Throwable unused) {
                f23819do = Boolean.FALSE;
            }
        }
        return f23819do.booleanValue();
    }

    public String add_escapes(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            char cCharAt = str.charAt(i);
            if (cCharAt != 0) {
                if (cCharAt == '\"') {
                    sb.append("\\\"");
                } else if (cCharAt == '\'') {
                    sb.append("\\'");
                } else if (cCharAt == '\\') {
                    sb.append("\\\\");
                } else if (cCharAt == '\f') {
                    sb.append("\\f");
                } else if (cCharAt != '\r') {
                    switch (cCharAt) {
                        case '\b':
                            sb.append("\\b");
                            break;
                        case '\t':
                            sb.append("\\t");
                            break;
                        case '\n':
                            sb.append("\\n");
                            break;
                        default:
                            char cCharAt2 = str.charAt(i);
                            if (cCharAt2 < ' ' || cCharAt2 > '~') {
                                String str2 = "0000" + Integer.toString(cCharAt2, 16);
                                sb.append("\\u" + str2.substring(str2.length() - 4, str2.length()));
                                break;
                            } else {
                                sb.append(cCharAt2);
                                break;
                            }
                            break;
                    }
                } else {
                    sb.append("\\r");
                }
            }
        }
        return sb.toString();
    }

    public int getColumnNumber() {
        return this.columnNumber;
    }

    public String getEditorMessage() {
        return m28060for();
    }

    public int getEndColumnNumber() {
        return this.endColumnNumber;
    }

    public int getEndLineNumber() {
        return this.endLineNumber;
    }

    public int getLineNumber() {
        return this.lineNumber;
    }

    @Override // java.lang.Throwable
    public String getMessage() {
        String str;
        synchronized (this) {
            if (this.messageAndDescriptionRendered) {
                return this.message;
            }
            m28058case();
            synchronized (this) {
                str = this.message;
            }
            return str;
        }
    }

    public String getTemplateName() {
        return this.templateName;
    }

    public void setTemplateName(String str) {
        this.templateName = str;
        synchronized (this) {
            this.messageAndDescriptionRendered = false;
            this.message = null;
        }
    }

    @Deprecated
    public h3() {
        this.eol = Cconst.m29258for("line.separator", "\n");
    }

    @Deprecated
    public h3(String str, int i, int i2) {
        this(str, null, i, i2, null);
    }

    public h3(String str, Cstatic cstatic, int i, int i2, int i3, int i4) {
        this(str, cstatic, i, i2, i3, i4, (Throwable) null);
    }

    public h3(String str, Cstatic cstatic, int i, int i2, int i3, int i4, Throwable th) {
        this(str, cstatic == null ? null : cstatic.q1(), i, i2, i3, i4, th);
    }

    @Deprecated
    public h3(String str, Cstatic cstatic, int i, int i2) {
        this(str, cstatic, i, i2, null);
    }

    @Deprecated
    public h3(String str, Cstatic cstatic, int i, int i2, Throwable th) {
        this(str, cstatic == null ? null : cstatic.q1(), i, i2, 0, 0, th);
    }

    public h3(String str, Cstatic cstatic, m4 m4Var) {
        this(str, cstatic, m4Var, (Throwable) null);
    }

    public h3(String str, Cstatic cstatic, m4 m4Var, Throwable th) {
        this(str, cstatic == null ? null : cstatic.q1(), m4Var.beginLine, m4Var.beginColumn, m4Var.endLine, m4Var.endColumn, th);
    }

    public h3(String str, h4 h4Var) {
        this(str, h4Var, (Throwable) null);
    }

    public h3(String str, h4 h4Var, Throwable th) {
        this(str, h4Var.getTemplate() == null ? null : h4Var.getTemplate().q1(), h4Var.f23822for, h4Var.f23823if, h4Var.f23825try, h4Var.f23824new, th);
    }

    private h3(String str, String str2, int i, int i2, int i3, int i4, Throwable th) {
        super(str);
        this.eol = Cconst.m29258for("line.separator", "\n");
        try {
            initCause(th);
        } catch (Exception unused) {
        }
        this.description = str;
        this.templateName = str2;
        this.lineNumber = i;
        this.columnNumber = i2;
        this.endLineNumber = i3;
        this.endColumnNumber = i4;
    }
}
