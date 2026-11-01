package retrofit2.adapter.rxjava2;

import android.support.v4.y41;
import java.util.Objects;
import retrofit2.Response;

/* loaded from: classes4.dex */
public final class Result<T> {

    @y41
    private final Throwable error;

    @y41
    private final Response<T> response;

    private Result(@y41 Response<T> response, @y41 Throwable th) {
        this.response = response;
        this.error = th;
    }

    public static <T> Result<T> error(Throwable th) {
        Objects.requireNonNull(th, "error == null");
        return new Result<>(null, th);
    }

    public static <T> Result<T> response(Response<T> response) {
        Objects.requireNonNull(response, "response == null");
        return new Result<>(response, null);
    }

    public boolean isError() {
        return this.error != null;
    }

    @y41
    public Throwable error() {
        return this.error;
    }

    @y41
    public Response<T> response() {
        return this.response;
    }
}
