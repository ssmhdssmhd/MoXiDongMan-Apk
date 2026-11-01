package okio.internal;

import android.support.v4.m41;
import android.support.v4.rw1;
import android.support.v4.sn1;
import android.support.v4.ub2;
import android.support.v4.z41;
import kotlin.Cpackage;
import kotlin.Cwhile;
import kotlin.collections.Celse;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.Cnew;
import kotlin.coroutines.jvm.internal.Cif;
import kotlin.jvm.functions.Function2;
import okio.FileSystem;
import okio.Path;

@Cif(c = "okio.internal._FileSystemKt$commonDeleteRecursively$sequence$1", f = "-FileSystem.kt", i = {}, l = {72}, m = "invokeSuspend", n = {}, s = {})
@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Landroid/support/v4/rw1;", "Lokio/Path;", "Landroid/support/v4/ub2;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class _FileSystemKt$commonDeleteRecursively$sequence$1 extends sn1 implements Function2<rw1<? super Path>, Continuation<? super ub2>, Object> {
    public final /* synthetic */ Path $fileOrDirectory;
    public final /* synthetic */ FileSystem $this_commonDeleteRecursively;
    private /* synthetic */ Object L$0;
    public int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public _FileSystemKt$commonDeleteRecursively$sequence$1(FileSystem fileSystem, Path path, Continuation<? super _FileSystemKt$commonDeleteRecursively$sequence$1> continuation) {
        super(2, continuation);
        this.$this_commonDeleteRecursively = fileSystem;
        this.$fileOrDirectory = path;
    }

    @Override // android.support.v4.e7
    @m41
    public final Continuation<ub2> create(@z41 Object obj, @m41 Continuation<?> continuation) {
        _FileSystemKt$commonDeleteRecursively$sequence$1 _filesystemkt_commondeleterecursively_sequence_1 = new _FileSystemKt$commonDeleteRecursively$sequence$1(this.$this_commonDeleteRecursively, this.$fileOrDirectory, continuation);
        _filesystemkt_commondeleterecursively_sequence_1.L$0 = obj;
        return _filesystemkt_commondeleterecursively_sequence_1;
    }

    @Override // kotlin.jvm.functions.Function2
    @z41
    public final Object invoke(@m41 rw1<? super Path> rw1Var, @z41 Continuation<? super ub2> continuation) {
        return ((_FileSystemKt$commonDeleteRecursively$sequence$1) create(rw1Var, continuation)).invokeSuspend(ub2.f6820do);
    }

    @Override // android.support.v4.e7
    @z41
    public final Object invokeSuspend(@m41 Object obj) {
        Object objM30408goto = Cnew.m30408goto();
        int i = this.label;
        if (i == 0) {
            Cpackage.m30783final(obj);
            rw1 rw1Var = (rw1) this.L$0;
            FileSystem fileSystem = this.$this_commonDeleteRecursively;
            Celse celse = new Celse();
            Path path = this.$fileOrDirectory;
            this.label = 1;
            if (_FileSystemKt.collectRecursively(rw1Var, fileSystem, celse, path, false, true, this) == objM30408goto) {
                return objM30408goto;
            }
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            Cpackage.m30783final(obj);
        }
        return ub2.f6820do;
    }
}
