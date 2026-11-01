package retrofit2.adapter.rxjava2;

import android.support.v4.fy0;
import android.support.v4.jz1;
import android.support.v4.np;
import android.support.v4.y41;
import io.reactivex.Cfor;
import io.reactivex.Cnew;
import io.reactivex.Ctry;
import java.lang.annotation.Annotation;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Objects;
import retrofit2.CallAdapter;
import retrofit2.Response;
import retrofit2.Retrofit;

/* loaded from: classes4.dex */
public final class RxJava2CallAdapterFactory extends CallAdapter.Factory {
    private final boolean isAsync;

    @y41
    private final Ctry scheduler;

    private RxJava2CallAdapterFactory(@y41 Ctry ctry, boolean z) {
        this.scheduler = ctry;
        this.isAsync = z;
    }

    public static RxJava2CallAdapterFactory create() {
        return new RxJava2CallAdapterFactory(null, false);
    }

    public static RxJava2CallAdapterFactory createAsync() {
        return new RxJava2CallAdapterFactory(null, true);
    }

    public static RxJava2CallAdapterFactory createWithScheduler(Ctry ctry) {
        Objects.requireNonNull(ctry, "scheduler == null");
        return new RxJava2CallAdapterFactory(ctry, false);
    }

    @Override // retrofit2.CallAdapter.Factory
    @y41
    public CallAdapter<?, ?> get(Type type, Annotation[] annotationArr, Retrofit retrofit) {
        Type parameterUpperBound;
        boolean z;
        boolean z2;
        Class<?> rawType = CallAdapter.Factory.getRawType(type);
        if (rawType == np.class) {
            return new RxJava2CallAdapter(Void.class, this.scheduler, this.isAsync, false, true, false, false, false, true);
        }
        boolean z3 = rawType == Cfor.class;
        boolean z4 = rawType == jz1.class;
        boolean z5 = rawType == fy0.class;
        if (rawType != Cnew.class && !z3 && !z4 && !z5) {
            return null;
        }
        if (!(type instanceof ParameterizedType)) {
            String str = !z3 ? !z4 ? z5 ? "Maybe" : "Observable" : "Single" : "Flowable";
            throw new IllegalStateException(str + " return type must be parameterized as " + str + "<Foo> or " + str + "<? extends Foo>");
        }
        Type parameterUpperBound2 = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) type);
        Class<?> rawType2 = CallAdapter.Factory.getRawType(parameterUpperBound2);
        if (rawType2 == Response.class) {
            if (!(parameterUpperBound2 instanceof ParameterizedType)) {
                throw new IllegalStateException("Response must be parameterized as Response<Foo> or Response<? extends Foo>");
            }
            parameterUpperBound = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound2);
            z = false;
        } else {
            if (rawType2 != Result.class) {
                parameterUpperBound = parameterUpperBound2;
                z = false;
                z2 = true;
                return new RxJava2CallAdapter(parameterUpperBound, this.scheduler, this.isAsync, z, z2, z3, z4, z5, false);
            }
            if (!(parameterUpperBound2 instanceof ParameterizedType)) {
                throw new IllegalStateException("Result must be parameterized as Result<Foo> or Result<? extends Foo>");
            }
            parameterUpperBound = CallAdapter.Factory.getParameterUpperBound(0, (ParameterizedType) parameterUpperBound2);
            z = true;
        }
        z2 = false;
        return new RxJava2CallAdapter(parameterUpperBound, this.scheduler, this.isAsync, z, z2, z3, z4, z5, false);
    }
}
