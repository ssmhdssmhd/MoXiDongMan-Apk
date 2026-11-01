package kotlin.io;

import android.support.v4.m41;
import java.io.File;
import kotlin.Cwhile;
import kotlin.jvm.internal.Csuper;

@Cwhile(bv = {1, 0, 3}, d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u001a\u0014\u0010\u0004\u001a\u00020\u0003*\u00020\u00002\b\b\u0002\u0010\u0002\u001a\u00020\u0001\u001a\n\u0010\u0005\u001a\u00020\u0003*\u00020\u0000\u001a\n\u0010\u0006\u001a\u00020\u0003*\u00020\u0000¨\u0006\u0007"}, d2 = {"Ljava/io/File;", "Lkotlin/io/for;", "direction", "Lkotlin/io/if;", "transient", "synchronized", "instanceof", "kotlin-stdlib"}, k = 5, mv = {1, 5, 1}, xs = "kotlin/io/FilesKt")
/* renamed from: kotlin.io.else, reason: invalid class name */
/* loaded from: classes3.dex */
class Celse extends Ccase {
    /* renamed from: implements, reason: not valid java name */
    public static /* synthetic */ Cif m30563implements(File file, Cfor cfor, int i, Object obj) {
        if ((i & 1) != 0) {
            cfor = Cfor.TOP_DOWN;
        }
        return m30566transient(file, cfor);
    }

    @m41
    /* renamed from: instanceof, reason: not valid java name */
    public static final Cif m30564instanceof(@m41 File walkBottomUp) {
        Csuper.m30700throw(walkBottomUp, "$this$walkBottomUp");
        return m30566transient(walkBottomUp, Cfor.BOTTOM_UP);
    }

    @m41
    /* renamed from: synchronized, reason: not valid java name */
    public static final Cif m30565synchronized(@m41 File walkTopDown) {
        Csuper.m30700throw(walkTopDown, "$this$walkTopDown");
        return m30566transient(walkTopDown, Cfor.TOP_DOWN);
    }

    @m41
    /* renamed from: transient, reason: not valid java name */
    public static final Cif m30566transient(@m41 File walk, @m41 Cfor direction) {
        Csuper.m30700throw(walk, "$this$walk");
        Csuper.m30700throw(direction, "direction");
        return new Cif(walk, direction);
    }
}
