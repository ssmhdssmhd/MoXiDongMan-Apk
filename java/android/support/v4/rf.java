package android.support.v4;

import android.webkit.CookieManager;
import androidx.annotation.NonNull;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.HttpUrl;

/* loaded from: classes2.dex */
public class rf implements CookieJar {

    /* renamed from: do, reason: not valid java name */
    public CookieManager f5772do = CookieManager.getInstance();

    /* renamed from: do, reason: not valid java name */
    public void m6953do() {
        this.f5772do.removeAllCookie();
    }

    @Override // okhttp3.CookieJar
    @NonNull
    public List<Cookie> loadForRequest(@NonNull HttpUrl httpUrl) {
        ArrayList arrayList = new ArrayList();
        if (this.f5772do.getCookie(httpUrl.toString()) != null) {
            for (String str : this.f5772do.getCookie(httpUrl.toString()).split("[,;]")) {
                arrayList.add(Cookie.parse(httpUrl, str.trim()));
            }
        }
        return arrayList;
    }

    @Override // okhttp3.CookieJar
    public void saveFromResponse(@NonNull HttpUrl httpUrl, @NonNull List<Cookie> list) {
        Iterator<Cookie> it = list.iterator();
        while (it.hasNext()) {
            this.f5772do.setCookie(httpUrl.toString(), it.next().toString());
        }
    }
}
