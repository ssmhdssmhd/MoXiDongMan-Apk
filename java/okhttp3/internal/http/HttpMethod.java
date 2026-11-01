package okhttp3.internal.http;

import android.support.v4.aq0;
import android.support.v4.m41;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0002\b\b\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0007J\u000e\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\b\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002J\u000e\u0010\t\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002¨\u0006\f"}, d2 = {"Lokhttp3/internal/http/HttpMethod;", "", "", "method", "", "requiresRequestBody", "permitsRequestBody", "invalidatesCache", "redirectsWithBody", "redirectsToGet", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class HttpMethod {
    public static final HttpMethod INSTANCE = new HttpMethod();

    private HttpMethod() {
    }

    @aq0
    public static final boolean permitsRequestBody(@m41 String method) {
        Csuper.m30700throw(method, "method");
        return (Csuper.m30676else(method, "GET") || Csuper.m30676else(method, "HEAD")) ? false : true;
    }

    @aq0
    public static final boolean requiresRequestBody(@m41 String method) {
        Csuper.m30700throw(method, "method");
        return Csuper.m30676else(method, "POST") || Csuper.m30676else(method, "PUT") || Csuper.m30676else(method, "PATCH") || Csuper.m30676else(method, "PROPPATCH") || Csuper.m30676else(method, "REPORT");
    }

    public final boolean invalidatesCache(@m41 String method) {
        Csuper.m30700throw(method, "method");
        return Csuper.m30676else(method, "POST") || Csuper.m30676else(method, "PATCH") || Csuper.m30676else(method, "PUT") || Csuper.m30676else(method, "DELETE") || Csuper.m30676else(method, "MOVE");
    }

    public final boolean redirectsToGet(@m41 String method) {
        Csuper.m30700throw(method, "method");
        return !Csuper.m30676else(method, "PROPFIND");
    }

    public final boolean redirectsWithBody(@m41 String method) {
        Csuper.m30700throw(method, "method");
        return Csuper.m30676else(method, "PROPFIND");
    }
}
