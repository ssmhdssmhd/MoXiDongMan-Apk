package kotlin.text;

import android.support.v4.dn0;
import android.support.v4.m41;
import android.support.v4.um0;
import android.support.v4.z41;
import java.util.List;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import org.mozilla.javascript.ES6Iterator;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010 \n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\bf\u0018\u00002\u00020\u0001:\u0001\u0017J\n\u0010\u0002\u001a\u0004\u0018\u00010\u0000H&R\u0016\u0010\u0006\u001a\u00020\u00038&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0004\u0010\u0005R\u0016\u0010\n\u001a\u00020\u00078&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\b\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\f\u0010\rR\u001c\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00070\u000f8&@&X¦\u0004¢\u0006\u0006\u001a\u0004\b\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b\u0014\u0010\u0015¨\u0006\u0018"}, d2 = {"Lkotlin/text/MatchResult;", "", ES6Iterator.NEXT_METHOD, "Landroid/support/v4/dn0;", "getRange", "()Landroid/support/v4/dn0;", "range", "", "getValue", "()Ljava/lang/String;", ES6Iterator.VALUE_PROPERTY, "Lkotlin/text/MatchGroupCollection;", "getGroups", "()Lkotlin/text/MatchGroupCollection;", "groups", "", "getGroupValues", "()Ljava/util/List;", "groupValues", "Lkotlin/text/MatchResult$if;", "getDestructured", "()Lkotlin/text/MatchResult$if;", "destructured", "if", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public interface MatchResult {

    @Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* renamed from: kotlin.text.MatchResult$do, reason: invalid class name */
    public static final class Cdo {
        @m41
        /* renamed from: do, reason: not valid java name */
        public static Cif m31109do(@m41 MatchResult matchResult) {
            return new Cif(matchResult);
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0010 \n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0011\b\u0000\u0012\u0006\u0010\u0013\u001a\u00020\u000f¢\u0006\u0004\b\u0014\u0010\u0015J\t\u0010\u0003\u001a\u00020\u0002H\u0087\nJ\t\u0010\u0004\u001a\u00020\u0002H\u0087\nJ\t\u0010\u0005\u001a\u00020\u0002H\u0087\nJ\t\u0010\u0006\u001a\u00020\u0002H\u0087\nJ\t\u0010\u0007\u001a\u00020\u0002H\u0087\nJ\t\u0010\b\u001a\u00020\u0002H\u0087\nJ\t\u0010\t\u001a\u00020\u0002H\u0087\nJ\t\u0010\n\u001a\u00020\u0002H\u0087\nJ\t\u0010\u000b\u001a\u00020\u0002H\u0087\nJ\t\u0010\f\u001a\u00020\u0002H\u0087\nJ\f\u0010\u000e\u001a\b\u0012\u0004\u0012\u00020\u00020\rR\u0019\u0010\u0013\u001a\u00020\u000f8\u0006@\u0006¢\u0006\f\n\u0004\b\u0003\u0010\u0010\u001a\u0004\b\u0011\u0010\u0012¨\u0006\u0016"}, d2 = {"kotlin/text/MatchResult$if", "", "", "do", "for", "new", "try", "case", "else", "goto", "this", "break", "if", "", "class", "Lkotlin/text/MatchResult;", "Lkotlin/text/MatchResult;", "catch", "()Lkotlin/text/MatchResult;", "match", "<init>", "(Lkotlin/text/MatchResult;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.text.MatchResult$if, reason: invalid class name */
    public static final class Cif {

        /* renamed from: do, reason: not valid java name */
        @m41
        private final MatchResult f28020do;

        public Cif(@m41 MatchResult match) {
            Csuper.m30700throw(match, "match");
            this.f28020do = match;
        }

        @um0
        /* renamed from: break, reason: not valid java name */
        private final String m31110break() {
            return m31120catch().getGroupValues().get(9);
        }

        @um0
        /* renamed from: case, reason: not valid java name */
        private final String m31111case() {
            return m31120catch().getGroupValues().get(5);
        }

        @um0
        /* renamed from: do, reason: not valid java name */
        private final String m31112do() {
            return m31120catch().getGroupValues().get(1);
        }

        @um0
        /* renamed from: else, reason: not valid java name */
        private final String m31113else() {
            return m31120catch().getGroupValues().get(6);
        }

        @um0
        /* renamed from: for, reason: not valid java name */
        private final String m31114for() {
            return m31120catch().getGroupValues().get(2);
        }

        @um0
        /* renamed from: goto, reason: not valid java name */
        private final String m31115goto() {
            return m31120catch().getGroupValues().get(7);
        }

        @um0
        /* renamed from: if, reason: not valid java name */
        private final String m31116if() {
            return m31120catch().getGroupValues().get(10);
        }

        @um0
        /* renamed from: new, reason: not valid java name */
        private final String m31117new() {
            return m31120catch().getGroupValues().get(3);
        }

        @um0
        /* renamed from: this, reason: not valid java name */
        private final String m31118this() {
            return m31120catch().getGroupValues().get(8);
        }

        @um0
        /* renamed from: try, reason: not valid java name */
        private final String m31119try() {
            return m31120catch().getGroupValues().get(4);
        }

        @m41
        /* renamed from: catch, reason: not valid java name */
        public final MatchResult m31120catch() {
            return this.f28020do;
        }

        @m41
        /* renamed from: class, reason: not valid java name */
        public final List<String> m31121class() {
            return this.f28020do.getGroupValues().subList(1, this.f28020do.getGroupValues().size());
        }
    }

    @m41
    Cif getDestructured();

    @m41
    List<String> getGroupValues();

    @m41
    MatchGroupCollection getGroups();

    @m41
    dn0 getRange();

    @m41
    String getValue();

    @z41
    MatchResult next();
}
