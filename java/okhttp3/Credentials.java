package okhttp3;

import android.support.v4.aq0;
import android.support.v4.m41;
import android.support.v4.xp0;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;
import okio.ByteString;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\b\u0010\tJ\"\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0004\u001a\u00020\u00022\b\b\u0002\u0010\u0006\u001a\u00020\u0005H\u0007¨\u0006\n"}, d2 = {"Lokhttp3/Credentials;", "", "", "username", "password", "Ljava/nio/charset/Charset;", "charset", "basic", "<init>", "()V", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class Credentials {
    public static final Credentials INSTANCE = new Credentials();

    private Credentials() {
    }

    @m41
    @aq0
    @xp0
    public static final String basic(@m41 String str, @m41 String str2) {
        return basic$default(str, str2, null, 4, null);
    }

    @m41
    @aq0
    @xp0
    public static final String basic(@m41 String username, @m41 String password, @m41 Charset charset) {
        Csuper.m30700throw(username, "username");
        Csuper.m30700throw(password, "password");
        Csuper.m30700throw(charset, "charset");
        return "Basic " + ByteString.Companion.encodeString(username + ':' + password, charset).base64();
    }

    public static /* synthetic */ String basic$default(String str, String str2, Charset ISO_8859_1, int i, Object obj) {
        if ((i & 4) != 0) {
            ISO_8859_1 = StandardCharsets.ISO_8859_1;
            Csuper.m30696super(ISO_8859_1, "ISO_8859_1");
        }
        return basic(str, str2, ISO_8859_1);
    }
}
