package kotlin.io;

import android.support.v4.ab0;
import android.support.v4.m41;
import android.support.v4.rx;
import android.support.v4.ub2;
import android.support.v4.w31;
import android.support.v4.z41;
import java.io.File;
import java.io.IOException;
import java.util.ArrayDeque;
import java.util.Iterator;
import kotlin.Cwhile;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Csuper;
import kotlin.sequences.Sequence;
import org.apache.commons.lang3.Ctry;
import org.mozilla.javascript.optimizer.OptRuntime;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0018\u0002\n\u0002\b\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\u0011\u0015\u0018B\u008b\u0001\b\u0002\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0014\u0012\u0014\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0005\u0012\u0014\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u0005\u00128\u0010#\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\t\u0018\u00010\u000b\u0012\b\b\u0002\u0010&\u001a\u00020\u000e¢\u0006\u0004\b'\u0010(B\u001b\b\u0010\u0012\u0006\u0010\u0013\u001a\u00020\u0002\u0012\b\b\u0002\u0010\u0017\u001a\u00020\u0014¢\u0006\u0004\b'\u0010)J\u000f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00020\u0003H\u0096\u0002J\u001a\u0010\b\u001a\u00020\u00002\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00060\u0005J\u001a\u0010\n\u001a\u00020\u00002\u0012\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t0\u0005J \u0010\r\u001a\u00020\u00002\u0018\u0010\u0007\u001a\u0014\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\f\u0012\u0004\u0012\u00020\t0\u000bJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u000f\u001a\u00020\u000eR\u0016\u0010\u0013\u001a\u00020\u00028\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0015\u0010\u0016R$\u0010\u001a\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0018\u0010\u0019R$\u0010\u001c\u001a\u0010\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\t\u0018\u00010\u00058\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001b\u0010\u0019RH\u0010#\u001a4\u0012\u0013\u0012\u00110\u0002¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b(\u001f\u0012\u0013\u0012\u00110\f¢\u0006\f\b\u001d\u0012\b\b\u001e\u0012\u0004\b\b( \u0012\u0004\u0012\u00020\t\u0018\u00010\u000b8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b!\u0010\"R\u0016\u0010&\u001a\u00020\u000e8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b$\u0010%¨\u0006*"}, d2 = {"Lkotlin/io/if;", "Lkotlin/sequences/Sequence;", "Ljava/io/File;", "", "iterator", "Lkotlin/Function1;", "", "function", "goto", "Landroid/support/v4/ub2;", "break", "Lkotlin/Function2;", "Ljava/io/IOException;", "this", "", "depth", "else", "do", "Ljava/io/File;", "start", "Lkotlin/io/for;", "if", "Lkotlin/io/for;", "direction", "for", "Lkotlin/jvm/functions/Function1;", "onEnter", "new", "onLeave", "Landroid/support/v4/xb1;", "name", "f", "e", "try", "Lkotlin/jvm/functions/Function2;", "onFail", "case", OptRuntime.GeneratorState.resumptionPoint_TYPE, "maxDepth", "<init>", "(Ljava/io/File;Lkotlin/io/for;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function2;I)V", "(Ljava/io/File;Lkotlin/io/for;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
/* renamed from: kotlin.io.if, reason: invalid class name */
/* loaded from: classes3.dex */
public final class Cif implements Sequence<File> {

    /* renamed from: case, reason: not valid java name */
    private final int f27842case;

    /* renamed from: do, reason: not valid java name */
    private final File f27843do;

    /* renamed from: for, reason: not valid java name */
    private final Function1<File, Boolean> f27844for;

    /* renamed from: if, reason: not valid java name */
    private final kotlin.io.Cfor f27845if;

    /* renamed from: new, reason: not valid java name */
    private final Function1<File, ub2> f27846new;

    /* renamed from: try, reason: not valid java name */
    private final Function2<File, IOException, ub2> f27847try;

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\b\"\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0003\u001a\u00020\u0002¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"kotlin/io/if$do", "Lkotlin/io/if$for;", "Ljava/io/File;", "rootDir", "<init>", "(Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.io.if$do, reason: invalid class name */
    public static abstract class Cdo extends Cfor {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public Cdo(@m41 File rootDir) {
            super(rootDir);
            Csuper.m30700throw(rootDir, "rootDir");
        }
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\b\b\b\"\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H&R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006¢\u0006\f\n\u0004\b\u0004\u0010\u0005\u001a\u0004\b\u0004\u0010\u0006¨\u0006\n"}, d2 = {"kotlin/io/if$for", "", "Ljava/io/File;", "if", "do", "Ljava/io/File;", "()Ljava/io/File;", "root", "<init>", "(Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.io.if$for, reason: invalid class name */
    public static abstract class Cfor {

        /* renamed from: do, reason: not valid java name */
        @m41
        private final File f27848do;

        public Cfor(@m41 File root) {
            Csuper.m30700throw(root, "root");
            this.f27848do = root;
        }

        @m41
        /* renamed from: do, reason: not valid java name */
        public final File m30592do() {
            return this.f27848do;
        }

        @z41
        /* renamed from: if, reason: not valid java name */
        public abstract File mo30593if();
    }

    @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000&\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0003\b\u0010\u000bB\u0007¢\u0006\u0004\b\u000e\u0010\u000fJ\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u000b\u0010\u0006\u001a\u0004\u0018\u00010\u0002H\u0082\u0010J\b\u0010\b\u001a\u00020\u0007H\u0014R\u001c\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\t8\u0002@\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u000b\u0010\f¨\u0006\u0011"}, d2 = {"kotlin/io/if$if", "Lkotlin/collections/for;", "Ljava/io/File;", "root", "Lkotlin/io/if$do;", "try", "case", "Landroid/support/v4/ub2;", "do", "Ljava/util/ArrayDeque;", "Lkotlin/io/if$for;", "for", "Ljava/util/ArrayDeque;", "state", "<init>", "(Lkotlin/io/if;)V", "if", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    /* renamed from: kotlin.io.if$if, reason: invalid class name and collision with other inner class name */
    public final class C0367if extends kotlin.collections.Cfor<File> {

        /* renamed from: for, reason: not valid java name */
        private final ArrayDeque<Cfor> f27849for;

        @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\t\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0011\u001a\u00020\u0002¢\u0006\u0004\b\u0012\u0010\u0013J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0005R\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\rR\u0016\u0010\u0010\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000f\u0010\u0005¨\u0006\u0014"}, d2 = {"kotlin/io/if$if$do", "Lkotlin/io/if$do;", "Ljava/io/File;", "if", "", "Z", "rootVisited", "", "for", "[Ljava/io/File;", "fileList", "", "new", OptRuntime.GeneratorState.resumptionPoint_TYPE, "fileIndex", "try", "failed", "rootDir", "<init>", "(Lkotlin/io/if$if;Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
        /* renamed from: kotlin.io.if$if$do, reason: invalid class name */
        public final class Cdo extends Cdo {

            /* renamed from: case, reason: not valid java name */
            public final /* synthetic */ C0367if f27851case;

            /* renamed from: for, reason: not valid java name */
            private File[] f27852for;

            /* renamed from: if, reason: not valid java name */
            private boolean f27853if;

            /* renamed from: new, reason: not valid java name */
            private int f27854new;

            /* renamed from: try, reason: not valid java name */
            private boolean f27855try;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cdo(@m41 C0367if c0367if, File rootDir) {
                super(rootDir);
                Csuper.m30700throw(rootDir, "rootDir");
                this.f27851case = c0367if;
            }

            @Override // kotlin.io.Cif.Cfor
            @z41
            /* renamed from: if */
            public File mo30593if() {
                if (!this.f27855try && this.f27852for == null) {
                    Function1 function1 = Cif.this.f27844for;
                    if (function1 != null && !((Boolean) function1.invoke(m30592do())).booleanValue()) {
                        return null;
                    }
                    File[] fileArrListFiles = m30592do().listFiles();
                    this.f27852for = fileArrListFiles;
                    if (fileArrListFiles == null) {
                        Function2 function2 = Cif.this.f27847try;
                        if (function2 != null) {
                        }
                        this.f27855try = true;
                    }
                }
                File[] fileArr = this.f27852for;
                if (fileArr != null) {
                    int i = this.f27854new;
                    Csuper.m30672const(fileArr);
                    if (i < fileArr.length) {
                        File[] fileArr2 = this.f27852for;
                        Csuper.m30672const(fileArr2);
                        int i2 = this.f27854new;
                        this.f27854new = i2 + 1;
                        return fileArr2[i2];
                    }
                }
                if (!this.f27853if) {
                    this.f27853if = true;
                    return m30592do();
                }
                Function1 function12 = Cif.this.f27846new;
                if (function12 != null) {
                }
                return null;
            }
        }

        @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000$\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0007\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u000f\u001a\u00020\u0002¢\u0006\u0004\b\u0010\u0010\u0011J\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0005R\u001e\u0010\n\u001a\n\u0012\u0004\u0012\u00020\u0002\u0018\u00010\u00078\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\b\u0010\tR\u0016\u0010\u000e\u001a\u00020\u000b8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\f\u0010\r¨\u0006\u0012"}, d2 = {"kotlin/io/if$if$for", "Lkotlin/io/if$do;", "Ljava/io/File;", "if", "", "Z", "rootVisited", "", "for", "[Ljava/io/File;", "fileList", "", "new", OptRuntime.GeneratorState.resumptionPoint_TYPE, "fileIndex", "rootDir", "<init>", "(Lkotlin/io/if$if;Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
        /* renamed from: kotlin.io.if$if$for, reason: invalid class name */
        public final class Cfor extends Cdo {

            /* renamed from: for, reason: not valid java name */
            private File[] f27856for;

            /* renamed from: if, reason: not valid java name */
            private boolean f27857if;

            /* renamed from: new, reason: not valid java name */
            private int f27858new;

            /* renamed from: try, reason: not valid java name */
            public final /* synthetic */ C0367if f27859try;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public Cfor(@m41 C0367if c0367if, File rootDir) {
                super(rootDir);
                Csuper.m30700throw(rootDir, "rootDir");
                this.f27859try = c0367if;
            }

            /* JADX WARN: Code restructure failed: missing block: B:30:0x0085, code lost:
            
                if (r0.length == 0) goto L31;
             */
            @Override // kotlin.io.Cif.Cfor
            @z41
            /* renamed from: if */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public File mo30593if() {
                Function2 function2;
                if (!this.f27857if) {
                    Function1 function1 = Cif.this.f27844for;
                    if (function1 != null && !((Boolean) function1.invoke(m30592do())).booleanValue()) {
                        return null;
                    }
                    this.f27857if = true;
                    return m30592do();
                }
                File[] fileArr = this.f27856for;
                if (fileArr != null) {
                    int i = this.f27858new;
                    Csuper.m30672const(fileArr);
                    if (i >= fileArr.length) {
                        Function1 function12 = Cif.this.f27846new;
                        if (function12 != null) {
                        }
                        return null;
                    }
                }
                if (this.f27856for == null) {
                    File[] fileArrListFiles = m30592do().listFiles();
                    this.f27856for = fileArrListFiles;
                    if (fileArrListFiles == null && (function2 = Cif.this.f27847try) != null) {
                    }
                    File[] fileArr2 = this.f27856for;
                    if (fileArr2 != null) {
                        Csuper.m30672const(fileArr2);
                    }
                    Function1 function13 = Cif.this.f27846new;
                    if (function13 != null) {
                    }
                    return null;
                }
                File[] fileArr3 = this.f27856for;
                Csuper.m30672const(fileArr3);
                int i2 = this.f27858new;
                this.f27858new = i2 + 1;
                return fileArr3[i2];
            }
        }

        @Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0014\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\b\u0082\u0004\u0018\u00002\u00020\u0001B\u000f\u0012\u0006\u0010\u0007\u001a\u00020\u0002¢\u0006\u0004\b\b\u0010\tJ\n\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016R\u0016\u0010\u0006\u001a\u00020\u00048\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0003\u0010\u0005¨\u0006\n"}, d2 = {"kotlin/io/if$if$if", "Lkotlin/io/if$for;", "Ljava/io/File;", "if", "", "Z", "visited", "rootFile", "<init>", "(Lkotlin/io/if$if;Ljava/io/File;)V", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
        /* renamed from: kotlin.io.if$if$if, reason: invalid class name and collision with other inner class name */
        public final class C0368if extends Cfor {

            /* renamed from: for, reason: not valid java name */
            public final /* synthetic */ C0367if f27860for;

            /* renamed from: if, reason: not valid java name */
            private boolean f27861if;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0368if(@m41 C0367if c0367if, File rootFile) {
                super(rootFile);
                Csuper.m30700throw(rootFile, "rootFile");
                this.f27860for = c0367if;
            }

            @Override // kotlin.io.Cif.Cfor
            @z41
            /* renamed from: if */
            public File mo30593if() {
                if (this.f27861if) {
                    return null;
                }
                this.f27861if = true;
                return m30592do();
            }
        }

        public C0367if() {
            ArrayDeque<Cfor> arrayDeque = new ArrayDeque<>();
            this.f27849for = arrayDeque;
            if (Cif.this.f27843do.isDirectory()) {
                arrayDeque.push(m30595try(Cif.this.f27843do));
            } else if (Cif.this.f27843do.isFile()) {
                arrayDeque.push(new C0368if(this, Cif.this.f27843do));
            } else {
                m30085if();
            }
        }

        /* renamed from: case, reason: not valid java name */
        private final File m30594case() {
            File fileMo30593if;
            while (true) {
                Cfor cforPeek = this.f27849for.peek();
                if (cforPeek == null) {
                    return null;
                }
                fileMo30593if = cforPeek.mo30593if();
                if (fileMo30593if == null) {
                    this.f27849for.pop();
                } else {
                    if (Csuper.m30676else(fileMo30593if, cforPeek.m30592do()) || !fileMo30593if.isDirectory() || this.f27849for.size() >= Cif.this.f27842case) {
                        break;
                    }
                    this.f27849for.push(m30595try(fileMo30593if));
                }
            }
            return fileMo30593if;
        }

        /* renamed from: try, reason: not valid java name */
        private final Cdo m30595try(File file) {
            int i = ab0.f76do[Cif.this.f27845if.ordinal()];
            if (i == 1) {
                return new Cfor(this, file);
            }
            if (i == 2) {
                return new Cdo(this, file);
            }
            throw new w31();
        }

        @Override // kotlin.collections.Cfor
        /* renamed from: do */
        public void mo30083do() {
            File fileM30594case = m30594case();
            if (fileM30594case != null) {
                m30084for(fileM30594case);
            } else {
                m30085if();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Cif(File file, kotlin.io.Cfor cfor, Function1<? super File, Boolean> function1, Function1<? super File, ub2> function12, Function2<? super File, ? super IOException, ub2> function2, int i) {
        this.f27843do = file;
        this.f27845if = cfor;
        this.f27844for = function1;
        this.f27846new = function12;
        this.f27847try = function2;
        this.f27842case = i;
    }

    @m41
    /* renamed from: break, reason: not valid java name */
    public final Cif m30588break(@m41 Function1<? super File, ub2> function) {
        Csuper.m30700throw(function, "function");
        return new Cif(this.f27843do, this.f27845if, this.f27844for, function, this.f27847try, this.f27842case);
    }

    @m41
    /* renamed from: else, reason: not valid java name */
    public final Cif m30589else(int i) {
        if (i > 0) {
            return new Cif(this.f27843do, this.f27845if, this.f27844for, this.f27846new, this.f27847try, i);
        }
        throw new IllegalArgumentException("depth must be positive, but was " + i + Ctry.f28883do);
    }

    @m41
    /* renamed from: goto, reason: not valid java name */
    public final Cif m30590goto(@m41 Function1<? super File, Boolean> function) {
        Csuper.m30700throw(function, "function");
        return new Cif(this.f27843do, this.f27845if, function, this.f27846new, this.f27847try, this.f27842case);
    }

    @Override // kotlin.sequences.Sequence
    @m41
    public Iterator<File> iterator() {
        return new C0367if();
    }

    @m41
    /* renamed from: this, reason: not valid java name */
    public final Cif m30591this(@m41 Function2<? super File, ? super IOException, ub2> function) {
        Csuper.m30700throw(function, "function");
        return new Cif(this.f27843do, this.f27845if, this.f27844for, this.f27846new, function, this.f27842case);
    }

    public /* synthetic */ Cif(File file, kotlin.io.Cfor cfor, Function1 function1, Function1 function12, Function2 function2, int i, int i2, rx rxVar) {
        this(file, (i2 & 2) != 0 ? kotlin.io.Cfor.TOP_DOWN : cfor, function1, function12, function2, (i2 & 32) != 0 ? Integer.MAX_VALUE : i);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Cif(@m41 File start, @m41 kotlin.io.Cfor direction) {
        this(start, direction, null, null, null, 0, 32, null);
        Csuper.m30700throw(start, "start");
        Csuper.m30700throw(direction, "direction");
    }

    public /* synthetic */ Cif(File file, kotlin.io.Cfor cfor, int i, rx rxVar) {
        this(file, (i & 2) != 0 ? kotlin.io.Cfor.TOP_DOWN : cfor);
    }
}
