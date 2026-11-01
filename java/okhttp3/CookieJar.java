package okhttp3;

import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.tp0;
import java.util.List;
import kotlin.Cwhile;
import kotlin.collections.Cthrow;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018\u0000 \n2\u00020\u0001:\u0001\nJ\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H&J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H&¨\u0006\u000b"}, d2 = {"Lokhttp3/CookieJar;", "", "Lokhttp3/HttpUrl;", "url", "", "Lokhttp3/Cookie;", "cookies", "Landroid/support/v4/ub2;", "saveFromResponse", "loadForRequest", "Companion", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public interface CookieJar {
    public static final Companion Companion = new Companion(null);

    @m41
    @tp0
    public static final CookieJar NO_COOKIES = new Companion.NoCookies();

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0086\u0003\u0018\u00002\u00020\u0001:\u0001\u0007B\t\b\u0002¢\u0006\u0004\b\u0005\u0010\u0006R\u001c\u0010\u0003\u001a\u00020\u00028\u0006@\u0007X\u0087\u0004ø\u0001\u0000¢\u0006\u0006\n\u0004\b\u0003\u0010\u0004¨\u0006\u0001\u0082\u0002\u0007\n\u0005\b\u0091F0\u0001¨\u0006\b"}, d2 = {"Lokhttp3/CookieJar$Companion;", "", "Lokhttp3/CookieJar;", "NO_COOKIES", "Lokhttp3/CookieJar;", "<init>", "()V", "NoCookies", "okhttp"}, k = 1, mv = {1, 4, 0})
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = null;

        @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b\n\u0010\u000bJ\u001e\u0010\b\u001a\u00020\u00072\u0006\u0010\u0003\u001a\u00020\u00022\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004H\u0016J\u0016\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u00050\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016¨\u0006\f"}, d2 = {"Lokhttp3/CookieJar$Companion$NoCookies;", "Lokhttp3/CookieJar;", "Lokhttp3/HttpUrl;", "url", "", "Lokhttp3/Cookie;", "cookies", "Landroid/support/v4/ub2;", "saveFromResponse", "loadForRequest", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
        public static final class NoCookies implements CookieJar {
            @Override // okhttp3.CookieJar
            @m41
            public List<Cookie> loadForRequest(@m41 HttpUrl url) {
                Csuper.m30700throw(url, "url");
                return Cthrow.m30175continue();
            }

            @Override // okhttp3.CookieJar
            public void saveFromResponse(@m41 HttpUrl url, @m41 List<Cookie> cookies) {
                Csuper.m30700throw(url, "url");
                Csuper.m30700throw(cookies, "cookies");
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(rx rxVar) {
            this();
        }
    }

    @m41
    List<Cookie> loadForRequest(@m41 HttpUrl httpUrl);

    void saveFromResponse(@m41 HttpUrl httpUrl, @m41 List<Cookie> list);
}
