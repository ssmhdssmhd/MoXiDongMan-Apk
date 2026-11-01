package okhttp3.internal.cache;

import android.support.v4.m41;
import android.support.v4.ub2;
import android.support.v4.yr0;
import java.io.IOException;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Csuper;
import okhttp3.internal.cache.DiskLruCache;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0006\u001a\u00020\u00022\u0006\u0010\u0001\u001a\u00020\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004¨\u0006\u0005"}, d2 = {"Ljava/io/IOException;", "it", "Landroid/support/v4/ub2;", "invoke", "(Ljava/io/IOException;)V", "okhttp3/internal/cache/DiskLruCache$Editor$newSink$1$1", "<anonymous>"}, k = 3, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1 extends yr0 implements Function1<IOException, ub2> {
    public final /* synthetic */ int $index$inlined;
    public final /* synthetic */ DiskLruCache.Editor this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DiskLruCache$Editor$newSink$$inlined$synchronized$lambda$1(DiskLruCache.Editor editor, int i) {
        super(1);
        this.this$0 = editor;
        this.$index$inlined = i;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ ub2 invoke(IOException iOException) {
        invoke2(iOException);
        return ub2.f6820do;
    }

    /* renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(@m41 IOException it) {
        Csuper.m30700throw(it, "it");
        synchronized (this.this$0.this$0) {
            this.this$0.detach$okhttp();
            ub2 ub2Var = ub2.f6820do;
        }
    }
}
