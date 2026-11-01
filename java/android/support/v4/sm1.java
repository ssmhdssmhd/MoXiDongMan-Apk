package android.support.v4;

import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import kotlin.text.MatchGroupCollection;
import kotlin.text.MatchNamedGroupCollection;

@wp0(name = "RegexExtensionsJDK8Kt")
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u001a\u0017\u0010\u0004\u001a\u0004\u0018\u00010\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0087\u0002¨\u0006\u0005"}, d2 = {"Lkotlin/text/MatchGroupCollection;", "", "name", "Landroid/support/v4/mx0;", "do", "kotlin-stdlib-jdk8"}, k = 2, mv = {1, 5, 1}, pn = "kotlin.text")
/* loaded from: classes3.dex */
public final class sm1 {
    @iz1(version = "1.2")
    @z41
    /* renamed from: do, reason: not valid java name */
    public static final mx0 m7514do(@m41 MatchGroupCollection get, @m41 String name) {
        Csuper.m30700throw(get, "$this$get");
        Csuper.m30700throw(name, "name");
        if (!(get instanceof MatchNamedGroupCollection)) {
            get = null;
        }
        MatchNamedGroupCollection matchNamedGroupCollection = (MatchNamedGroupCollection) get;
        if (matchNamedGroupCollection != null) {
            return matchNamedGroupCollection.get(name);
        }
        throw new UnsupportedOperationException("Retrieving groups by name is not supported on this platform.");
    }
}
