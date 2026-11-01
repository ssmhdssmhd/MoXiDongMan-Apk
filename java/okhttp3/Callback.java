package okhttp3;

import android.support.v4.m41;
import androidx.core.app.NotificationCompat;
import java.io.IOException;
import kotlin.Cwhile;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018\u00002\u00020\u0001J\u0018\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u0004H&J\u0018\u0010\n\u001a\u00020\u00062\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\t\u001a\u00020\bH&¨\u0006\u000b"}, d2 = {"Lokhttp3/Callback;", "", "Lokhttp3/Call;", NotificationCompat.CATEGORY_CALL, "Ljava/io/IOException;", "e", "Landroid/support/v4/ub2;", "onFailure", "Lokhttp3/Response;", "response", "onResponse", "okhttp"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public interface Callback {
    void onFailure(@m41 Call call, @m41 IOException iOException);

    void onResponse(@m41 Call call, @m41 Response response) throws IOException;
}
