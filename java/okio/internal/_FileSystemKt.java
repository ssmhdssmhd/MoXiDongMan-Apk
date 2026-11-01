package okio.internal;

import android.support.v4.m41;
import android.support.v4.rw1;
import android.support.v4.sn1;
import android.support.v4.ub2;
import android.support.v4.z41;
import androidx.constraintlayout.core.motion.utils.TypedValues;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import kotlin.Cpackage;
import kotlin.Cwhile;
import kotlin.collections.Celse;
import kotlin.collections.Cthrow;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.Cnew;
import kotlin.coroutines.jvm.internal.Cdo;
import kotlin.coroutines.jvm.internal.Cif;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Cgoto;
import kotlin.sequences.Sequence;
import okio.BufferedSink;
import okio.FileMetadata;
import okio.FileSystem;
import okio.Okio;
import okio.Path;
import okio.Source;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u001a\u0014\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000\u001a\u0014\u0010\u0006\u001a\u00020\u0005*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000\u001a\u001c\u0010\n\u001a\u00020\t*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\b\u001a\u00020\u0005H\u0000\u001a\u001c\u0010\r\u001a\u00020\t*\u00020\u00002\u0006\u0010\u000b\u001a\u00020\u00012\u0006\u0010\f\u001a\u00020\u0001H\u0000\u001a\u001c\u0010\u0010\u001a\u00020\t*\u00020\u00002\u0006\u0010\u000e\u001a\u00020\u00012\u0006\u0010\u000f\u001a\u00020\u0005H\u0000\u001a\"\u0010\u0013\u001a\b\u0012\u0004\u0012\u00020\u00010\u0012*\u00020\u00002\u0006\u0010\u0007\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u0005H\u0000\u001aK\u0010\u0019\u001a\u00020\t*\b\u0012\u0004\u0012\u00020\u00010\u00142\u0006\u0010\u0015\u001a\u00020\u00002\f\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u00010\u00162\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0011\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0005H\u0080@ø\u0001\u0000¢\u0006\u0004\b\u0019\u0010\u001a\u001a\u0016\u0010\u001b\u001a\u0004\u0018\u00010\u0001*\u00020\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006\u001c"}, d2 = {"Lokio/FileSystem;", "Lokio/Path;", "path", "Lokio/FileMetadata;", "commonMetadata", "", "commonExists", "dir", "mustCreate", "Landroid/support/v4/ub2;", "commonCreateDirectories", "source", TypedValues.Attributes.S_TARGET, "commonCopy", "fileOrDirectory", "mustExist", "commonDeleteRecursively", "followSymlinks", "Lkotlin/sequences/Sequence;", "commonListRecursively", "Landroid/support/v4/rw1;", "fileSystem", "Lkotlin/collections/else;", "stack", "postorder", "collectRecursively", "(Landroid/support/v4/rw1;Lokio/FileSystem;Lkotlin/collections/else;Lokio/Path;ZZLkotlin/coroutines/Continuation;)Ljava/lang/Object;", "symlinkTarget", "okio"}, k = 2, mv = {1, 5, 1})
/* loaded from: classes3.dex */
public final class _FileSystemKt {

    @Cif(c = "okio.internal._FileSystemKt", f = "-FileSystem.kt", i = {0, 0, 0, 0, 0, 0, 1, 1, 1, 1, 1, 1}, l = {113, 132, 142}, m = "collectRecursively", n = {"$this$collectRecursively", "fileSystem", "stack", "path", "followSymlinks", "postorder", "$this$collectRecursively", "fileSystem", "stack", "path", "followSymlinks", "postorder"}, s = {"L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1", "L$0", "L$1", "L$2", "L$3", "Z$0", "Z$1"})
    @Cwhile(bv = {1, 0, 3}, d1 = {}, d2 = {}, k = 3, mv = {1, 5, 1})
    /* renamed from: okio.internal._FileSystemKt$collectRecursively$1, reason: invalid class name */
    public static final class AnonymousClass1 extends Cdo {
        public Object L$0;
        public Object L$1;
        public Object L$2;
        public Object L$3;
        public Object L$4;
        public boolean Z$0;
        public boolean Z$1;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(Continuation<? super AnonymousClass1> continuation) {
            super(continuation);
        }

        @Override // android.support.v4.e7
        @z41
        public final Object invokeSuspend(@m41 Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return _FileSystemKt.collectRecursively(null, null, null, null, false, false, this);
        }
    }

    @Cif(c = "okio.internal._FileSystemKt$commonListRecursively$1", f = "-FileSystem.kt", i = {0, 0}, l = {93}, m = "invokeSuspend", n = {"$this$sequence", "stack"}, s = {"L$0", "L$1"})
    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\u0010\u0003\u001a\u00020\u0002*\b\u0012\u0004\u0012\u00020\u00010\u0000H\u008a@"}, d2 = {"Landroid/support/v4/rw1;", "Lokio/Path;", "Landroid/support/v4/ub2;", "<anonymous>"}, k = 3, mv = {1, 5, 1})
    /* renamed from: okio.internal._FileSystemKt$commonListRecursively$1, reason: invalid class name and case insensitive filesystem */
    public static final class C05821 extends sn1 implements Function2<rw1<? super Path>, Continuation<? super ub2>, Object> {
        public final /* synthetic */ Path $dir;
        public final /* synthetic */ boolean $followSymlinks;
        public final /* synthetic */ FileSystem $this_commonListRecursively;
        private /* synthetic */ Object L$0;
        public Object L$1;
        public Object L$2;
        public int label;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C05821(Path path, FileSystem fileSystem, boolean z, Continuation<? super C05821> continuation) {
            super(2, continuation);
            this.$dir = path;
            this.$this_commonListRecursively = fileSystem;
            this.$followSymlinks = z;
        }

        @Override // android.support.v4.e7
        @m41
        public final Continuation<ub2> create(@z41 Object obj, @m41 Continuation<?> continuation) {
            C05821 c05821 = new C05821(this.$dir, this.$this_commonListRecursively, this.$followSymlinks, continuation);
            c05821.L$0 = obj;
            return c05821;
        }

        @Override // kotlin.jvm.functions.Function2
        @z41
        public final Object invoke(@m41 rw1<? super Path> rw1Var, @z41 Continuation<? super ub2> continuation) {
            return ((C05821) create(rw1Var, continuation)).invokeSuspend(ub2.f6820do);
        }

        @Override // android.support.v4.e7
        @z41
        public final Object invokeSuspend(@m41 Object obj) {
            C05821 c05821;
            rw1 rw1Var;
            Celse celse;
            Iterator<Path> it;
            Object objM30408goto = Cnew.m30408goto();
            int i = this.label;
            if (i == 0) {
                Cpackage.m30783final(obj);
                rw1 rw1Var2 = (rw1) this.L$0;
                Celse celse2 = new Celse();
                celse2.addLast(this.$dir);
                c05821 = this;
                rw1Var = rw1Var2;
                celse = celse2;
                it = this.$this_commonListRecursively.list(this.$dir).iterator();
            } else {
                if (i != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) this.L$2;
                Celse celse3 = (Celse) this.L$1;
                rw1 rw1Var3 = (rw1) this.L$0;
                Cpackage.m30783final(obj);
                c05821 = this;
                celse = celse3;
                rw1Var = rw1Var3;
            }
            while (it.hasNext()) {
                Path next = it.next();
                FileSystem fileSystem = c05821.$this_commonListRecursively;
                boolean z = c05821.$followSymlinks;
                c05821.L$0 = rw1Var;
                c05821.L$1 = celse;
                c05821.L$2 = it;
                c05821.label = 1;
                if (_FileSystemKt.collectRecursively(rw1Var, fileSystem, celse, next, z, false, c05821) == objM30408goto) {
                    return objM30408goto;
                }
            }
            return ub2.f6820do;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:43:0x00d6, code lost:
    
        if (r0 != false) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00d8, code lost:
    
        if (r14 != 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00da, code lost:
    
        r6.addLast(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00e1, code lost:
    
        r13 = r12;
        r12 = r11;
        r11 = r6;
        r6 = r1;
        r1 = r0;
        r0 = r2;
        r2 = r3.iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0125, code lost:
    
        r0 = th;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0126, code lost:
    
        r11 = r6;
     */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0148  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001b  */
    @z41
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object collectRecursively(@m41 rw1<? super Path> rw1Var, @m41 FileSystem fileSystem, @m41 Celse<Path> celse, @m41 Path path, boolean z, boolean z2, @m41 Continuation<? super ub2> continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        FileSystem fileSystem2;
        Celse<Path> celse2;
        boolean z3;
        rw1<? super Path> rw1Var2;
        boolean z4;
        FileSystem fileSystem3;
        Path path2 = path;
        boolean z5 = z2;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        }
        Object obj = anonymousClass1.result;
        Object objM30408goto = Cnew.m30408goto();
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            Cpackage.m30783final(obj);
            if (z5) {
                fileSystem2 = fileSystem;
                celse2 = celse;
                z3 = z;
            } else {
                anonymousClass1.L$0 = rw1Var;
                fileSystem2 = fileSystem;
                anonymousClass1.L$1 = fileSystem2;
                celse2 = celse;
                anonymousClass1.L$2 = celse2;
                anonymousClass1.L$3 = path2;
                z3 = z;
                anonymousClass1.Z$0 = z3;
                anonymousClass1.Z$1 = z5;
                anonymousClass1.label = 1;
                if (rw1Var.mo7186do(path2, anonymousClass1) == objM30408goto) {
                    return objM30408goto;
                }
            }
            rw1Var2 = rw1Var;
            z4 = z3;
            fileSystem3 = fileSystem2;
        } else {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    Cpackage.m30783final(obj);
                    return ub2.f6820do;
                }
                boolean z6 = anonymousClass1.Z$1;
                boolean z7 = anonymousClass1.Z$0;
                Iterator<Path> it = (Iterator) anonymousClass1.L$4;
                Path path3 = (Path) anonymousClass1.L$3;
                Celse<Path> celse3 = (Celse) anonymousClass1.L$2;
                FileSystem fileSystem4 = (FileSystem) anonymousClass1.L$1;
                rw1<? super Path> rw1Var3 = (rw1) anonymousClass1.L$0;
                try {
                    Cpackage.m30783final(obj);
                    while (it.hasNext()) {
                        Path next = it.next();
                        boolean z8 = z6;
                        anonymousClass1.L$0 = rw1Var3;
                        anonymousClass1.L$1 = fileSystem4;
                        anonymousClass1.L$2 = celse3;
                        anonymousClass1.L$3 = path3;
                        anonymousClass1.L$4 = it;
                        anonymousClass1.Z$0 = z7;
                        anonymousClass1.Z$1 = z6;
                        anonymousClass1.label = 2;
                        if (collectRecursively(rw1Var3, fileSystem4, celse3, next, z7, z8, anonymousClass1) == objM30408goto) {
                            return objM30408goto;
                        }
                    }
                    celse3.removeLast();
                    z5 = z6;
                    path2 = path3;
                    rw1Var2 = rw1Var3;
                    if (z5) {
                        return ub2.f6820do;
                    }
                    anonymousClass1.L$0 = null;
                    anonymousClass1.L$1 = null;
                    anonymousClass1.L$2 = null;
                    anonymousClass1.L$3 = null;
                    anonymousClass1.L$4 = null;
                    anonymousClass1.label = 3;
                    if (rw1Var2.mo7186do(path2, anonymousClass1) == objM30408goto) {
                        return objM30408goto;
                    }
                    return ub2.f6820do;
                } catch (Throwable th) {
                    th = th;
                    celse3.removeLast();
                    throw th;
                }
            }
            boolean z9 = anonymousClass1.Z$1;
            boolean z10 = anonymousClass1.Z$0;
            Path path4 = (Path) anonymousClass1.L$3;
            celse2 = (Celse) anonymousClass1.L$2;
            fileSystem3 = (FileSystem) anonymousClass1.L$1;
            rw1Var2 = (rw1) anonymousClass1.L$0;
            Cpackage.m30783final(obj);
            z5 = z9;
            z4 = z10;
            path2 = path4;
        }
        List<Path> listListOrNull = fileSystem3.listOrNull(path2);
        if (listListOrNull == null) {
            listListOrNull = Cthrow.m30175continue();
        }
        if (!listListOrNull.isEmpty()) {
            Path path5 = path2;
            int i3 = 0;
            while (true) {
                if (z4 && celse2.contains(path5)) {
                    throw new IOException(Csuper.m30690private("symlink cycle at ", path2));
                }
                Path pathSymlinkTarget = symlinkTarget(fileSystem3, path5);
                if (pathSymlinkTarget == null) {
                    break;
                }
                i3++;
                path5 = pathSymlinkTarget;
            }
        }
        if (z5) {
        }
    }

    public static final void commonCopy(@m41 FileSystem fileSystem, @m41 Path source, @m41 Path target) throws IOException {
        Long lValueOf;
        Long lValueOf2;
        Csuper.m30700throw(fileSystem, "<this>");
        Csuper.m30700throw(source, "source");
        Csuper.m30700throw(target, "target");
        Source source2 = fileSystem.source(source);
        Throwable th = null;
        try {
            BufferedSink bufferedSinkBuffer = Okio.buffer(fileSystem.sink(target));
            try {
                lValueOf2 = Long.valueOf(bufferedSinkBuffer.writeAll(source2));
                th = null;
            } catch (Throwable th2) {
                th = th2;
                lValueOf2 = null;
            }
            if (bufferedSinkBuffer != null) {
                try {
                    bufferedSinkBuffer.close();
                } catch (Throwable th3) {
                    if (th == null) {
                        th = th3;
                    } else {
                        kotlin.Celse.m30428do(th, th3);
                    }
                }
            }
        } catch (Throwable th4) {
            th = th4;
            lValueOf = null;
        }
        if (th != null) {
            throw th;
        }
        Csuper.m30672const(lValueOf2);
        lValueOf = Long.valueOf(lValueOf2.longValue());
        if (source2 != null) {
            try {
                source2.close();
            } catch (Throwable th5) {
                if (th == null) {
                    th = th5;
                } else {
                    kotlin.Celse.m30428do(th, th5);
                }
            }
        }
        if (th != null) {
            throw th;
        }
        Csuper.m30672const(lValueOf);
    }

    public static final void commonCreateDirectories(@m41 FileSystem fileSystem, @m41 Path dir, boolean z) throws IOException {
        Csuper.m30700throw(fileSystem, "<this>");
        Csuper.m30700throw(dir, "dir");
        Celse celse = new Celse();
        for (Path pathParent = dir; pathParent != null && !fileSystem.exists(pathParent); pathParent = pathParent.parent()) {
            celse.addFirst(pathParent);
        }
        if (z && celse.isEmpty()) {
            throw new IOException(dir + " already exist.");
        }
        Iterator<E> it = celse.iterator();
        while (it.hasNext()) {
            fileSystem.createDirectory((Path) it.next());
        }
    }

    public static final void commonDeleteRecursively(@m41 FileSystem fileSystem, @m41 Path fileOrDirectory, boolean z) throws IOException {
        Csuper.m30700throw(fileSystem, "<this>");
        Csuper.m30700throw(fileOrDirectory, "fileOrDirectory");
        Iterator it = Cgoto.m31081try(new _FileSystemKt$commonDeleteRecursively$sequence$1(fileSystem, fileOrDirectory, null)).iterator();
        while (it.hasNext()) {
            fileSystem.delete((Path) it.next(), z && !it.hasNext());
        }
    }

    public static final boolean commonExists(@m41 FileSystem fileSystem, @m41 Path path) throws IOException {
        Csuper.m30700throw(fileSystem, "<this>");
        Csuper.m30700throw(path, "path");
        return fileSystem.metadataOrNull(path) != null;
    }

    @m41
    public static final Sequence<Path> commonListRecursively(@m41 FileSystem fileSystem, @m41 Path dir, boolean z) throws IOException {
        Csuper.m30700throw(fileSystem, "<this>");
        Csuper.m30700throw(dir, "dir");
        return Cgoto.m31081try(new C05821(dir, fileSystem, z, null));
    }

    @m41
    public static final FileMetadata commonMetadata(@m41 FileSystem fileSystem, @m41 Path path) throws IOException {
        Csuper.m30700throw(fileSystem, "<this>");
        Csuper.m30700throw(path, "path");
        FileMetadata fileMetadataMetadataOrNull = fileSystem.metadataOrNull(path);
        if (fileMetadataMetadataOrNull != null) {
            return fileMetadataMetadataOrNull;
        }
        throw new FileNotFoundException(Csuper.m30690private("no such file: ", path));
    }

    @z41
    public static final Path symlinkTarget(@m41 FileSystem fileSystem, @m41 Path path) throws IOException {
        Csuper.m30700throw(fileSystem, "<this>");
        Csuper.m30700throw(path, "path");
        Path symlinkTarget = fileSystem.metadata(path).getSymlinkTarget();
        if (symlinkTarget == null) {
            return null;
        }
        Path pathParent = path.parent();
        Csuper.m30672const(pathParent);
        return pathParent.resolve(symlinkTarget);
    }
}
