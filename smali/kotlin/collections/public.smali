.class Lkotlin/collections/public;
.super Lkotlin/collections/native;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u000f\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u001a5\u0010\u0006\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u001a\u0010\u0004\u001a\u0016\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0002j\n\u0012\u0006\u0008\u0000\u0012\u00028\u0000`\u0003H\u0087\u0008\u001a6\u0010\n\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0018\u0010\t\u001a\u0014\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00028\u0000\u0012\u0004\u0012\u00020\u00080\u0007H\u0087\u0008\u00f8\u0001\u0000\u001a \u0010\u000c\u001a\u00020\u0005\"\u000e\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u000b*\u0008\u0012\u0004\u0012\u00028\u00000\u0001\u001a2\u0010\r\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u001a\u0010\u0004\u001a\u0016\u0012\u0006\u0008\u0000\u0012\u00028\u00000\u0002j\n\u0012\u0006\u0008\u0000\u0012\u00028\u0000`\u0003\u001a(\u0010\u000f\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u000e\u001a\u00028\u0000H\u0087\u0008\u00a2\u0006\u0004\u0008\u000f\u0010\u0010\u001a\u0019\u0010\u0011\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u0001H\u0087\u0008\u001a!\u0010\u0014\u001a\u00020\u0005\"\u0004\u0008\u0000\u0010\u0000*\u0008\u0012\u0004\u0012\u00028\u00000\u00012\u0006\u0010\u0013\u001a\u00020\u0012H\u0087\u0008\u0082\u0002\u0007\n\u0005\u0008\u009920\u0001\u00a8\u0006\u0015"
    }
    d2 = {
        "T",
        "",
        "Ljava/util/Comparator;",
        "Lkotlin/Comparator;",
        "comparator",
        "Landroid/support/v4/ub2;",
        "A",
        "Lkotlin/Function2;",
        "",
        "comparison",
        "B",
        "",
        "z",
        "C",
        "value",
        "w",
        "(Ljava/util/List;Ljava/lang/Object;)V",
        "x",
        "Ljava/util/Random;",
        "random",
        "y",
        "kotlin-stdlib"
    }
    k = 0x5
    mv = {
        0x1,
        0x5,
        0x1
    }
    xs = "kotlin/collections/CollectionsKt"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/collections/native;-><init>()V

    return-void
.end method

.method private static final A(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/for;
        level = .enum Lkotlin/try;->ERROR:Lkotlin/try;
        message = "Use sortWith(comparator) instead."
        replaceWith = .subannotation Landroid/support/v4/an1;
            expression = "this.sortWith(comparator)"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    new-instance p0, Landroid/support/v4/k41;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p1}, Landroid/support/v4/k41;-><init>(Ljava/lang/String;ILandroid/support/v4/rx;)V

    throw p0
.end method

.method private static final B(Ljava/util/List;Lkotlin/jvm/functions/Function2;)V
    .locals 1
    .annotation build Landroid/support/v4/um0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-TT;-TT;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Lkotlin/for;
        level = .enum Lkotlin/try;->ERROR:Lkotlin/try;
        message = "Use sortWith(Comparator(comparison)) instead."
        replaceWith = .subannotation Landroid/support/v4/an1;
            expression = "this.sortWith(Comparator(comparison))"
            imports = {}
        .end subannotation
    .end annotation

    .line 1
    new-instance p0, Landroid/support/v4/k41;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0, p1}, Landroid/support/v4/k41;-><init>(Ljava/lang/String;ILandroid/support/v4/rx;)V

    throw p0
.end method

.method public static C(Ljava/util/List;Ljava/util/Comparator;)V
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p1    # Ljava/util/Comparator;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)V"
        }
    .end annotation

    const-string v0, "$this$sortWith"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "comparator"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    :cond_0
    return-void
.end method

.method private static final w(Ljava/util/List;Ljava/lang/Object;)V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/util/Collections;->fill(Ljava/util/List;Ljava/lang/Object;)V

    return-void
.end method

.method private static final x(Ljava/util/List;)V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Ljava/util/Collections;->shuffle(Ljava/util/List;)V

    return-void
.end method

.method private static final y(Ljava/util/List;Ljava/util/Random;)V
    .locals 0
    .annotation build Landroid/support/v4/iz1;
        version = "1.2"
    .end annotation

    .annotation build Landroid/support/v4/um0;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TT;>;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-static {p0, p1}, Ljava/util/Collections;->shuffle(Ljava/util/List;Ljava/util/Random;)V

    return-void
.end method

.method public static z(Ljava/util/List;)V
    .locals 2
    .param p0    # Ljava/util/List;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "$this$sort"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/super;->throw(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    invoke-static {p0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    :cond_0
    return-void
.end method
