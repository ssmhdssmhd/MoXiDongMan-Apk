package kotlin.text;

import android.support.v4.iz1;
import android.support.v4.ke0;
import android.support.v4.m41;
import android.support.v4.rw1;
import android.support.v4.rx;
import android.support.v4.sn1;
import android.support.v4.ub2;
import android.support.v4.wg1;
import android.support.v4.yr0;
import android.support.v4.z41;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.EnumSet;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import kotlin.Cpackage;
import kotlin.Cwhile;
import kotlin.collections.Creturn;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import kotlin.ranges.Ccase;
import kotlin.sequences.Cbreak;
import kotlin.sequences.Sequence;
import kotlin.text.Cthis;
import org.mozilla.javascript.ES6Iterator;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\"\n\u0002\u0018\u0002\n\u0002\b\u0014\u0018\u0000 32\u00060\u0001j\u0002`\u0002:\u000245B\u0011\b\u0001\u0012\u0006\u0010%\u001a\u00020\u001f¢\u0006\u0004\b-\u0010.B\u0011\b\u0016\u0012\u0006\u0010)\u001a\u00020\u0014¢\u0006\u0004\b-\u0010/B\u0019\b\u0016\u0012\u0006\u0010)\u001a\u00020\u0014\u0012\u0006\u00100\u001a\u00020\"¢\u0006\u0004\b-\u00101B\u001f\b\u0016\u0012\u0006\u0010)\u001a\u00020\u0014\u0012\f\u0010,\u001a\b\u0012\u0004\u0012\u00020\"0!¢\u0006\u0004\b-\u00102J\b\u0010\u0004\u001a\u00020\u0003H\u0002J\u0011\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0086\u0004J\u000e\u0010\t\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005J\u001a\u0010\r\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\nJ\u001e\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\f0\u000e2\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u000b\u001a\u00020\nJ\u0010\u0010\u0010\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0006\u001a\u00020\u0005J\u001a\u0010\u0012\u001a\u0004\u0018\u00010\f2\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\nH\u0007J\u0018\u0010\u0013\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0011\u001a\u00020\nH\u0007J\u0016\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014J\"\u0010\u0016\u001a\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u00052\u0012\u0010\u0018\u001a\u000e\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\u00050\u0017J\u0016\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0015\u001a\u00020\u0014J\u001e\u0010\u001c\u001a\b\u0012\u0004\u0012\u00020\u00140\u001b2\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u001a\u001a\u00020\nJ \u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u00140\u000e2\u0006\u0010\u0006\u001a\u00020\u00052\b\b\u0002\u0010\u001a\u001a\u00020\nH\u0007J\b\u0010\u001e\u001a\u00020\u0014H\u0016J\u0006\u0010 \u001a\u00020\u001fR\u001e\u0010#\u001a\n\u0012\u0004\u0012\u00020\"\u0018\u00010!8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b#\u0010$R\u0016\u0010%\u001a\u00020\u001f8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u0013\u0010)\u001a\u00020\u00148F@\u0006¢\u0006\u0006\u001a\u0004\b'\u0010(R\u0019\u0010,\u001a\b\u0012\u0004\u0012\u00020\"0!8F@\u0006¢\u0006\u0006\u001a\u0004\b*\u0010+¨\u00066"}, d2 = {"Lkotlin/text/goto;", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "writeReplace", "", "input", "", "matches", "containsMatchIn", "", "startIndex", "Lkotlin/text/MatchResult;", "find", "Lkotlin/sequences/Sequence;", "findAll", "matchEntire", "index", "matchAt", "matchesAt", "", "replacement", "replace", "Lkotlin/Function1;", "transform", "replaceFirst", "limit", "", "split", "splitToSequence", "toString", "Ljava/util/regex/Pattern;", "toPattern", "", "Lkotlin/text/break;", "_options", "Ljava/util/Set;", "nativePattern", "Ljava/util/regex/Pattern;", "getPattern", "()Ljava/lang/String;", "pattern", "getOptions", "()Ljava/util/Set;", "options", "<init>", "(Ljava/util/regex/Pattern;)V", "(Ljava/lang/String;)V", "option", "(Ljava/lang/String;Lkotlin/text/break;)V", "(Ljava/lang/String;Ljava/util/Set;)V", "Companion", "do", "if", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.text.goto, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cgoto implements Serializable {

    @m41
    public static final Cdo Companion = new Cdo(null);
    private Set<? extends Cbreak> _options;
    private final Pattern nativePattern;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u000b\u0010\fJ\u0010\u0010\u0004\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\t\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005J\u000e\u0010\n\u001a\u00020\u00052\u0006\u0010\u0006\u001a\u00020\u0005¨\u0006\r"}, d2 = {"kotlin/text/goto$do", "", "", "flags", "if", "", "literal", "Lkotlin/text/goto;", "try", "for", "new", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.text.goto$do, reason: invalid class name */
    public static final class Cdo {
        private Cdo() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: if, reason: not valid java name */
        public final int m31187if(int i) {
            return (i & 2) != 0 ? i | 64 : i;
        }

        @m41
        /* renamed from: for, reason: not valid java name */
        public final String m31188for(@m41 String literal) {
            Csuper.m30700throw(literal, "literal");
            String strQuote = Pattern.quote(literal);
            Csuper.m30696super(strQuote, "Pattern.quote(literal)");
            return strQuote;
        }

        @m41
        /* renamed from: new, reason: not valid java name */
        public final String m31189new(@m41 String literal) {
            Csuper.m30700throw(literal, "literal");
            String strQuoteReplacement = Matcher.quoteReplacement(literal);
            Csuper.m30696super(strQuoteReplacement, "Matcher.quoteReplacement(literal)");
            return strQuoteReplacement;
        }

        @m41
        /* renamed from: try, reason: not valid java name */
        public final Cgoto m31190try(@m41 String literal) {
            Csuper.m30700throw(literal, "literal");
            return new Cgoto(literal, Cbreak.LITERAL);
        }

        public /* synthetic */ Cdo(rx rxVar) {
            this();
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0003\u001a\u0004\u0018\u00010\u0000H\n¢\u0006\u0004\b\u0001\u0010\u0002"}, d2 = {"Lkotlin/text/MatchResult;", "invoke", "()Lkotlin/text/MatchResult;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.goto$for, reason: invalid class name */
    public static final class Cfor extends yr0 implements Function0<MatchResult> {
        public final /* synthetic */ CharSequence $input;
        public final /* synthetic */ int $startIndex;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cfor(CharSequence charSequence, int i) {
            super(0);
            this.$input = charSequence;
            this.$startIndex = i;
        }

        @Override // kotlin.jvm.functions.Function0
        @z41
        public final MatchResult invoke() {
            return Cgoto.this.find(this.$input, this.$startIndex);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0002\b\t\b\u0002\u0018\u0000 \u00112\u00060\u0001j\u0002`\u0002:\u0001\u0012B\u0017\u0012\u0006\u0010\u0006\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\n¢\u0006\u0004\b\u000f\u0010\u0010J\b\u0010\u0004\u001a\u00020\u0003H\u0002R\u0019\u0010\u0006\u001a\u00020\u00058\u0006@\u0006¢\u0006\f\n\u0004\b\u0006\u0010\u0007\u001a\u0004\b\b\u0010\tR\u0019\u0010\u000b\u001a\u00020\n8\u0006@\u0006¢\u0006\f\n\u0004\b\u000b\u0010\f\u001a\u0004\b\r\u0010\u000e¨\u0006\u0013"}, d2 = {"kotlin/text/goto$if", "Ljava/io/Serializable;", "Lkotlin/io/Serializable;", "", "readResolve", "", "pattern", "Ljava/lang/String;", "getPattern", "()Ljava/lang/String;", "", "flags", OptRuntime.GeneratorState.resumptionPoint_TYPE, "getFlags", "()I", "<init>", "(Ljava/lang/String;I)V", "Companion", "do", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.text.goto$if, reason: invalid class name */
    public static final class Cif implements Serializable {

        @m41
        public static final Cdo Companion = new Cdo(null);
        private static final long serialVersionUID = 0;
        private final int flags;

        @m41
        private final String pattern;

        @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\t\n\u0002\b\u0005\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u0016\u0010\u0003\u001a\u00020\u00028\u0002@\u0002X\u0082T¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0007"}, d2 = {"kotlin/text/goto$if$do", "", "", "serialVersionUID", "J", "<init>", "()V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
        /* renamed from: kotlin.text.goto$if$do, reason: invalid class name */
        public static final class Cdo {
            private Cdo() {
            }

            public /* synthetic */ Cdo(rx rxVar) {
                this();
            }
        }

        public Cif(@m41 String pattern, int i) {
            Csuper.m30700throw(pattern, "pattern");
            this.pattern = pattern;
            this.flags = i;
        }

        private final Object readResolve() {
            Pattern patternCompile = Pattern.compile(this.pattern, this.flags);
            Csuper.m30696super(patternCompile, "Pattern.compile(pattern, flags)");
            return new Cgoto(patternCompile);
        }

        public final int getFlags() {
            return this.flags;
        }

        @m41
        public final String getPattern() {
            return this.pattern;
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\b\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0004\u001a\u0004\u0018\u00010\u00002\u0006\u0010\u0001\u001a\u00020\u0000¢\u0006\u0004\b\u0002\u0010\u0003"}, d2 = {"Lkotlin/text/MatchResult;", "p1", "invoke", "(Lkotlin/text/MatchResult;)Lkotlin/text/MatchResult;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.goto$new, reason: invalid class name */
    public static final /* synthetic */ class Cnew extends ke0 implements Function1<MatchResult, MatchResult> {
        public static final Cnew INSTANCE = new Cnew();

        public Cnew() {
            super(1, MatchResult.class, ES6Iterator.NEXT_METHOD, "next()Lkotlin/text/MatchResult;", 0);
        }

        @Override // kotlin.jvm.functions.Function1
        @z41
        public final MatchResult invoke(@m41 MatchResult p1) {
            Csuper.m30700throw(p1, "p1");
            return p1.next();
        }
    }

    @kotlin.coroutines.jvm.internal.Cif(c = "kotlin.text.Regex$splitToSequence$1", f = "Regex.kt", i = {}, l = {243, 251, 255}, m = "invokeSuspend", n = {}, s = {})
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {"Landroid/support/v4/rw1;", "", "Landroid/support/v4/ub2;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.goto$try, reason: invalid class name */
    public static final class Ctry extends sn1 implements Function2<rw1<? super String>, Continuation<? super ub2>, Object> {
        public final /* synthetic */ CharSequence $input;
        public final /* synthetic */ int $limit;
        public int I$0;
        private /* synthetic */ Object L$0;
        public Object L$1;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Ctry(CharSequence charSequence, int i, Continuation continuation) {
            super(2, continuation);
            this.$input = charSequence;
            this.$limit = i;
        }

        @Override // android.support.v4.e7
        @m41
        public final Continuation<ub2> create(@z41 Object obj, @m41 Continuation<?> completion) {
            Csuper.m30700throw(completion, "completion");
            Ctry ctry = Cgoto.this.new Ctry(this.$input, this.$limit, completion);
            ctry.L$0 = obj;
            return ctry;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object invoke(rw1<? super String> rw1Var, Continuation<? super ub2> continuation) {
            return ((Ctry) create(rw1Var, continuation)).invokeSuspend(ub2.f6820do);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0072 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:23:0x007d  */
        /* JADX WARN: Removed duplicated region for block: B:27:0x009e A[RETURN] */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0070 -> B:21:0x0073). Please report as a decompilation issue!!! */
        @Override // android.support.v4.e7
        @z41
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object invokeSuspend(@m41 Object obj) {
            Ctry ctry;
            rw1 rw1Var;
            Matcher matcher;
            int i;
            String string;
            String string2;
            Object objM30408goto = kotlin.coroutines.intrinsics.Cnew.m30408goto();
            int i2 = this.label;
            if (i2 == 0) {
                Cpackage.m30783final(obj);
                rw1 rw1Var2 = (rw1) this.L$0;
                Matcher matcher2 = Cgoto.this.nativePattern.matcher(this.$input);
                if (this.$limit != 1 && matcher2.find()) {
                    ctry = this;
                    rw1Var = rw1Var2;
                    matcher = matcher2;
                    int iEnd = 0;
                    i = 0;
                    string = ctry.$input.subSequence(iEnd, matcher.start()).toString();
                    ctry.L$0 = rw1Var;
                    ctry.L$1 = matcher;
                    ctry.I$0 = i;
                    ctry.label = 2;
                    if (rw1Var.mo7186do(string, ctry) == objM30408goto) {
                    }
                    iEnd = matcher.end();
                    i++;
                    if (i != ctry.$limit - 1) {
                    }
                    CharSequence charSequence = ctry.$input;
                    string2 = charSequence.subSequence(iEnd, charSequence.length()).toString();
                    ctry.L$0 = null;
                    ctry.L$1 = null;
                    ctry.label = 3;
                    if (rw1Var.mo7186do(string2, ctry) == objM30408goto) {
                    }
                    return ub2.f6820do;
                }
                String string3 = this.$input.toString();
                this.label = 1;
                if (rw1Var2.mo7186do(string3, this) == objM30408goto) {
                    return objM30408goto;
                }
            } else {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                        }
                        Cpackage.m30783final(obj);
                        return ub2.f6820do;
                    }
                    i = this.I$0;
                    matcher = (Matcher) this.L$1;
                    rw1Var = (rw1) this.L$0;
                    Cpackage.m30783final(obj);
                    ctry = this;
                    iEnd = matcher.end();
                    i++;
                    if (i != ctry.$limit - 1 || !matcher.find()) {
                        CharSequence charSequence2 = ctry.$input;
                        string2 = charSequence2.subSequence(iEnd, charSequence2.length()).toString();
                        ctry.L$0 = null;
                        ctry.L$1 = null;
                        ctry.label = 3;
                        if (rw1Var.mo7186do(string2, ctry) == objM30408goto) {
                            return objM30408goto;
                        }
                        return ub2.f6820do;
                    }
                    string = ctry.$input.subSequence(iEnd, matcher.start()).toString();
                    ctry.L$0 = rw1Var;
                    ctry.L$1 = matcher;
                    ctry.I$0 = i;
                    ctry.label = 2;
                    if (rw1Var.mo7186do(string, ctry) == objM30408goto) {
                        return objM30408goto;
                    }
                    iEnd = matcher.end();
                    i++;
                    if (i != ctry.$limit - 1) {
                    }
                    CharSequence charSequence22 = ctry.$input;
                    string2 = charSequence22.subSequence(iEnd, charSequence22.length()).toString();
                    ctry.L$0 = null;
                    ctry.L$1 = null;
                    ctry.label = 3;
                    if (rw1Var.mo7186do(string2, ctry) == objM30408goto) {
                    }
                    return ub2.f6820do;
                }
                Cpackage.m30783final(obj);
            }
            return ub2.f6820do;
        }
    }

    @wg1
    public Cgoto(@m41 Pattern nativePattern) {
        Csuper.m30700throw(nativePattern, "nativePattern");
        this.nativePattern = nativePattern;
    }

    public static /* synthetic */ MatchResult find$default(Cgoto cgoto, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return cgoto.find(charSequence, i);
    }

    public static /* synthetic */ Sequence findAll$default(Cgoto cgoto, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return cgoto.findAll(charSequence, i);
    }

    public static /* synthetic */ List split$default(Cgoto cgoto, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return cgoto.split(charSequence, i);
    }

    public static /* synthetic */ Sequence splitToSequence$default(Cgoto cgoto, CharSequence charSequence, int i, int i2, Object obj) {
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return cgoto.splitToSequence(charSequence, i);
    }

    private final Object writeReplace() {
        String strPattern = this.nativePattern.pattern();
        Csuper.m30696super(strPattern, "nativePattern.pattern()");
        return new Cif(strPattern, this.nativePattern.flags());
    }

    public final boolean containsMatchIn(@m41 CharSequence input) {
        Csuper.m30700throw(input, "input");
        return this.nativePattern.matcher(input).find();
    }

    @z41
    public final MatchResult find(@m41 CharSequence input, int i) {
        Csuper.m30700throw(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        Csuper.m30696super(matcher, "nativePattern.matcher(input)");
        return Cthis.m31228else(matcher, i, input);
    }

    @m41
    public final Sequence<MatchResult> findAll(@m41 CharSequence input, int i) {
        Csuper.m30700throw(input, "input");
        if (i >= 0 && i <= input.length()) {
            return Cbreak.m31030while(new Cfor(input, i), Cnew.INSTANCE);
        }
        throw new IndexOutOfBoundsException("Start index out of bounds: " + i + ", input length: " + input.length());
    }

    @m41
    public final Set<Cbreak> getOptions() {
        Set set = this._options;
        if (set != null) {
            return set;
        }
        int iFlags = this.nativePattern.flags();
        EnumSet enumSetAllOf = EnumSet.allOf(Cbreak.class);
        Creturn.c0(enumSetAllOf, new Cthis.Cdo(iFlags));
        Set<Cbreak> setUnmodifiableSet = Collections.unmodifiableSet(enumSetAllOf);
        Csuper.m30696super(setUnmodifiableSet, "Collections.unmodifiable…mask == it.value }\n    })");
        this._options = setUnmodifiableSet;
        return setUnmodifiableSet;
    }

    @m41
    public final String getPattern() {
        String strPattern = this.nativePattern.pattern();
        Csuper.m30696super(strPattern, "nativePattern.pattern()");
        return strPattern;
    }

    @iz1(version = "1.5")
    @z41
    @kotlin.Cthis
    public final MatchResult matchAt(@m41 CharSequence input, int i) {
        Csuper.m30700throw(input, "input");
        Matcher matcherRegion = this.nativePattern.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(i, input.length());
        if (!matcherRegion.lookingAt()) {
            return null;
        }
        Csuper.m30696super(matcherRegion, "this");
        return new Celse(matcherRegion, input);
    }

    @z41
    public final MatchResult matchEntire(@m41 CharSequence input) {
        Csuper.m30700throw(input, "input");
        Matcher matcher = this.nativePattern.matcher(input);
        Csuper.m30696super(matcher, "nativePattern.matcher(input)");
        return Cthis.m31233this(matcher, input);
    }

    public final boolean matches(@m41 CharSequence input) {
        Csuper.m30700throw(input, "input");
        return this.nativePattern.matcher(input).matches();
    }

    @iz1(version = "1.5")
    @kotlin.Cthis
    public final boolean matchesAt(@m41 CharSequence input, int i) {
        Csuper.m30700throw(input, "input");
        return this.nativePattern.matcher(input).useAnchoringBounds(false).useTransparentBounds(true).region(i, input.length()).lookingAt();
    }

    @m41
    public final String replace(@m41 CharSequence input, @m41 String replacement) {
        Csuper.m30700throw(input, "input");
        Csuper.m30700throw(replacement, "replacement");
        String strReplaceAll = this.nativePattern.matcher(input).replaceAll(replacement);
        Csuper.m30696super(strReplaceAll, "nativePattern.matcher(in…).replaceAll(replacement)");
        return strReplaceAll;
    }

    @m41
    public final String replaceFirst(@m41 CharSequence input, @m41 String replacement) {
        Csuper.m30700throw(input, "input");
        Csuper.m30700throw(replacement, "replacement");
        String strReplaceFirst = this.nativePattern.matcher(input).replaceFirst(replacement);
        Csuper.m30696super(strReplaceFirst, "nativePattern.matcher(in…replaceFirst(replacement)");
        return strReplaceFirst;
    }

    @m41
    public final List<String> split(@m41 CharSequence input, int i) {
        Csuper.m30700throw(input, "input");
        Cstatic.Z3(i);
        Matcher matcher = this.nativePattern.matcher(input);
        if (i == 1 || !matcher.find()) {
            return kotlin.collections.Csuper.m30144catch(input.toString());
        }
        ArrayList arrayList = new ArrayList(i > 0 ? Ccase.m30885return(i, 10) : 10);
        int iEnd = 0;
        int i2 = i - 1;
        do {
            arrayList.add(input.subSequence(iEnd, matcher.start()).toString());
            iEnd = matcher.end();
            if (i2 >= 0 && arrayList.size() == i2) {
                break;
            }
        } while (matcher.find());
        arrayList.add(input.subSequence(iEnd, input.length()).toString());
        return arrayList;
    }

    @m41
    @iz1(version = "1.5")
    @kotlin.Cthis
    public final Sequence<String> splitToSequence(@m41 CharSequence input, int i) {
        Csuper.m30700throw(input, "input");
        Cstatic.Z3(i);
        return kotlin.sequences.Cgoto.m31081try(new Ctry(input, i, null));
    }

    @m41
    public final Pattern toPattern() {
        return this.nativePattern;
    }

    @m41
    public String toString() {
        String string = this.nativePattern.toString();
        Csuper.m30696super(string, "nativePattern.toString()");
        return string;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Cgoto(@m41 String pattern) {
        Csuper.m30700throw(pattern, "pattern");
        Pattern patternCompile = Pattern.compile(pattern);
        Csuper.m30696super(patternCompile, "Pattern.compile(pattern)");
        this(patternCompile);
    }

    @m41
    public final String replace(@m41 CharSequence input, @m41 Function1<? super MatchResult, ? extends CharSequence> transform) {
        Csuper.m30700throw(input, "input");
        Csuper.m30700throw(transform, "transform");
        int iIntValue = 0;
        MatchResult matchResultFind$default = find$default(this, input, 0, 2, null);
        if (matchResultFind$default == null) {
            return input.toString();
        }
        int length = input.length();
        StringBuilder sb = new StringBuilder(length);
        do {
            Csuper.m30672const(matchResultFind$default);
            sb.append(input, iIntValue, matchResultFind$default.getRange().getStart().intValue());
            sb.append(transform.invoke(matchResultFind$default));
            iIntValue = matchResultFind$default.getRange().getEndInclusive().intValue() + 1;
            matchResultFind$default = matchResultFind$default.next();
            if (iIntValue >= length) {
                break;
            }
        } while (matchResultFind$default != null);
        if (iIntValue < length) {
            sb.append(input, iIntValue, length);
        }
        String string = sb.toString();
        Csuper.m30696super(string, "sb.toString()");
        return string;
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Cgoto(@m41 String pattern, @m41 Cbreak option) {
        Csuper.m30700throw(pattern, "pattern");
        Csuper.m30700throw(option, "option");
        Pattern patternCompile = Pattern.compile(pattern, Companion.m31187if(option.getValue()));
        Csuper.m30696super(patternCompile, "Pattern.compile(pattern,…nicodeCase(option.value))");
        this(patternCompile);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Cgoto(@m41 String pattern, @m41 Set<? extends Cbreak> options) {
        Csuper.m30700throw(pattern, "pattern");
        Csuper.m30700throw(options, "options");
        Pattern patternCompile = Pattern.compile(pattern, Companion.m31187if(Cthis.m31226class(options)));
        Csuper.m30696super(patternCompile, "Pattern.compile(pattern,…odeCase(options.toInt()))");
        this(patternCompile);
    }
}
