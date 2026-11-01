.class public final Lkotlin/sequences/else;
.super Lkotlin/sequences/class;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/while;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "kotlin/sequences/goto",
        "kotlin/sequences/this",
        "kotlin/sequences/break",
        "kotlin/sequences/catch",
        "kotlin/sequences/class"
    }
    d2 = {}
    k = 0x4
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lkotlin/sequences/class;-><init>()V

    return-void
.end method

.method public static bridge synthetic break()Lkotlin/sequences/Sequence;
    .locals 1
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    invoke-static {}, Lkotlin/sequences/break;->break()Lkotlin/sequences/Sequence;

    move-result-object v0

    return-object v0
.end method

.method public static bridge synthetic h2(Lkotlin/sequences/Sequence;)Ljava/util/HashSet;
    .locals 0
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Ljava/util/HashSet<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/class;->h2(Lkotlin/sequences/Sequence;)Ljava/util/HashSet;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic i2(Lkotlin/sequences/Sequence;)Ljava/util/List;
    .locals 0
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/class;->i2(Lkotlin/sequences/Sequence;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic k0(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    invoke-static/range {p0 .. p8}, Lkotlin/sequences/class;->k0(Lkotlin/sequences/Sequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Lkotlin/jvm/functions/Function1;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic l0(Lkotlin/sequences/Sequence;)Ljava/lang/Object;
    .locals 0
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)TT;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/class;->l0(Lkotlin/sequences/Sequence;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic m(Lkotlin/sequences/Sequence;)I
    .locals 0
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)I"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/class;->m(Lkotlin/sequences/Sequence;)I

    move-result p0

    return p0
.end method

.method public static bridge synthetic new(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;
    .locals 0
    .param p0    # Lkotlin/jvm/functions/Function2;
        .annotation build Landroid/support/v4/m41;
        .end annotation

        .annotation build Landroid/support/v4/rd;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/iz1;
        version = "1.3"
    .end annotation

    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/support/v4/rw1<",
            "-TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/support/v4/ub2;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/goto;->new(Lkotlin/jvm/functions/Function2;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;
    .locals 0
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;I)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/class;->q(Lkotlin/sequences/Sequence;I)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic q0(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;
    .locals 0
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TR;>;)",
            "Lkotlin/sequences/Sequence<",
            "TR;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/class;->q0(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic super(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;
    .locals 0
    .param p0    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/z41;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/hw0;
    .end annotation

    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/break;->super(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic this(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;
    .locals 0
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/break;->this(Lkotlin/sequences/Sequence;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic try(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;
    .locals 0
    .param p0    # Lkotlin/jvm/functions/Function2;
        .annotation build Landroid/support/v4/m41;
        .end annotation

        .annotation build Landroid/support/v4/rd;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/iz1;
        version = "1.3"
    .end annotation

    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroid/support/v4/rw1<",
            "-TT;>;-",
            "Lkotlin/coroutines/Continuation<",
            "-",
            "Landroid/support/v4/ub2;",
            ">;+",
            "Ljava/lang/Object;",
            ">;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/goto;->try(Lkotlin/jvm/functions/Function2;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic volatile(Lkotlin/sequences/Sequence;)Ljava/lang/Iterable;
    .locals 0
    .param p0    # Lkotlin/sequences/Sequence;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/sequences/Sequence<",
            "+TT;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0}, Lkotlin/sequences/class;->volatile(Lkotlin/sequences/Sequence;)Ljava/lang/Iterable;

    move-result-object p0

    return-object p0
.end method

.method public static bridge synthetic while(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;
    .locals 0
    .param p0    # Lkotlin/jvm/functions/Function0;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .param p1    # Lkotlin/jvm/functions/Function1;
        .annotation build Landroid/support/v4/m41;
        .end annotation
    .end param
    .annotation build Landroid/support/v4/m41;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/functions/Function0<",
            "+TT;>;",
            "Lkotlin/jvm/functions/Function1<",
            "-TT;+TT;>;)",
            "Lkotlin/sequences/Sequence<",
            "TT;>;"
        }
    .end annotation

    invoke-static {p0, p1}, Lkotlin/sequences/break;->while(Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object p0

    return-object p0
.end method
