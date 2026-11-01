package freemarker.core;

import org.mozilla.javascript.ES6Iterator;

/* loaded from: classes.dex */
final class f3 {

    /* renamed from: do, reason: not valid java name */
    private final String f23785do;

    /* renamed from: if, reason: not valid java name */
    public static final f3 f23762if = new f3("[unknown role]");

    /* renamed from: for, reason: not valid java name */
    public static final f3 f23760for = new f3("left-hand operand");

    /* renamed from: new, reason: not valid java name */
    public static final f3 f23768new = new f3("right-hand operand");

    /* renamed from: try, reason: not valid java name */
    public static final f3 f23782try = new f3("enclosed operand");

    /* renamed from: case, reason: not valid java name */
    public static final f3 f23750case = new f3("item value");

    /* renamed from: else, reason: not valid java name */
    public static final f3 f23756else = new f3("item key");

    /* renamed from: goto, reason: not valid java name */
    public static final f3 f23761goto = new f3("assignment target");

    /* renamed from: this, reason: not valid java name */
    public static final f3 f23778this = new f3("assignment operator");

    /* renamed from: break, reason: not valid java name */
    public static final f3 f23749break = new f3("assignment source");

    /* renamed from: catch, reason: not valid java name */
    public static final f3 f23751catch = new f3("variable scope");

    /* renamed from: class, reason: not valid java name */
    public static final f3 f23752class = new f3(k.f23945throw);

    /* renamed from: const, reason: not valid java name */
    public static final f3 f23753const = new f3("error handler");

    /* renamed from: final, reason: not valid java name */
    public static final f3 f23758final = new f3("passed value");

    /* renamed from: super, reason: not valid java name */
    public static final f3 f23776super = new f3("condition");

    /* renamed from: throw, reason: not valid java name */
    public static final f3 f23779throw = new f3(ES6Iterator.VALUE_PROPERTY);

    /* renamed from: while, reason: not valid java name */
    public static final f3 f23784while = new f3("AST-node subtype");

    /* renamed from: import, reason: not valid java name */
    public static final f3 f23764import = new f3("placeholder variable");

    /* renamed from: native, reason: not valid java name */
    public static final f3 f23767native = new f3("expression template");

    /* renamed from: public, reason: not valid java name */
    public static final f3 f23772public = new f3("list source");

    /* renamed from: return, reason: not valid java name */
    public static final f3 f23773return = new f3("target loop variable");

    /* renamed from: static, reason: not valid java name */
    public static final f3 f23774static = new f3("template name");

    /* renamed from: switch, reason: not valid java name */
    public static final f3 f23777switch = new f3("\"parse\" parameter");

    /* renamed from: throws, reason: not valid java name */
    public static final f3 f23780throws = new f3("\"encoding\" parameter");

    /* renamed from: default, reason: not valid java name */
    public static final f3 f23755default = new f3("\"ignore_missing\" parameter");

    /* renamed from: extends, reason: not valid java name */
    public static final f3 f23757extends = new f3("parameter name");

    /* renamed from: finally, reason: not valid java name */
    public static final f3 f23759finally = new f3("parameter default");

    /* renamed from: package, reason: not valid java name */
    public static final f3 f23769package = new f3("catch-all parameter name");

    /* renamed from: private, reason: not valid java name */
    public static final f3 f23770private = new f3("argument name");

    /* renamed from: abstract, reason: not valid java name */
    public static final f3 f23748abstract = new f3("argument value");

    /* renamed from: continue, reason: not valid java name */
    public static final f3 f23754continue = new f3("content");

    /* renamed from: strictfp, reason: not valid java name */
    public static final f3 f23775strictfp = new f3("embedded template");

    /* renamed from: volatile, reason: not valid java name */
    public static final f3 f23783volatile = new f3("value part");

    /* renamed from: interface, reason: not valid java name */
    public static final f3 f23766interface = new f3("minimum decimals");

    /* renamed from: protected, reason: not valid java name */
    public static final f3 f23771protected = new f3("maximum decimals");

    /* renamed from: transient, reason: not valid java name */
    public static final f3 f23781transient = new f3(k.f23935package);

    /* renamed from: implements, reason: not valid java name */
    public static final f3 f23763implements = new f3("callee");

    /* renamed from: instanceof, reason: not valid java name */
    public static final f3 f23765instanceof = new f3("message");

    private f3(String str) {
        this.f23785do = str;
    }

    /* renamed from: do, reason: not valid java name */
    public static f3 m28031do(int i) {
        if (i == 0) {
            return f23760for;
        }
        if (i == 1) {
            return f23768new;
        }
        throw new IndexOutOfBoundsException();
    }

    /* renamed from: if, reason: not valid java name */
    public String m28032if() {
        return this.f23785do;
    }

    public String toString() {
        return this.f23785do;
    }
}
