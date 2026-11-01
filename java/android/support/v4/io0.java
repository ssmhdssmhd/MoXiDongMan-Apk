package android.support.v4;

import java.util.regex.MatchResult;
import java.util.regex.Matcher;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.random.Ctry;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0010\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u001a\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H\u0016J\b\u0010\t\u001a\u00020\bH\u0016¨\u0006\f"}, d2 = {"Landroid/support/v4/io0;", "Landroid/support/v4/ho0;", "Ljava/util/regex/MatchResult;", "matchResult", "", "name", "Landroid/support/v4/mx0;", "for", "Lkotlin/random/try;", "if", "<init>", "()V", "kotlin-stdlib-jdk8"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public class io0 extends ho0 {
    @Override // kotlin.internal.Cdo
    @z41
    /* renamed from: for, reason: not valid java name */
    public mx0 mo3523for(@m41 MatchResult matchResult, @m41 String name) {
        Csuper.m30700throw(matchResult, "matchResult");
        Csuper.m30700throw(name, "name");
        if (!(matchResult instanceof Matcher)) {
            matchResult = null;
        }
        Matcher matcher = (Matcher) matchResult;
        if (matcher == null) {
            throw new UnsupportedOperationException("Retrieving groups by name is not supported on this platform.");
        }
        dn0 dn0Var = new dn0(matcher.start(name), matcher.end(name) - 1);
        if (dn0Var.getStart().intValue() < 0) {
            return null;
        }
        String strGroup = matcher.group(name);
        Csuper.m30696super(strGroup, "matcher.group(name)");
        return new mx0(strGroup, dn0Var);
    }

    @Override // kotlin.internal.Cdo
    @m41
    /* renamed from: if, reason: not valid java name */
    public Ctry mo3524if() {
        return new be1();
    }
}
