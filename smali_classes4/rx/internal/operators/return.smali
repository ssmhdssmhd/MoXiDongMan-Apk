.class public final Lrx/internal/operators/return;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/return$for;
    }
.end annotation


# static fields
.field private static final do:Ljava/lang/Object;

.field private static final if:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/operators/return$do;

    invoke-direct {v0}, Lrx/internal/operators/return$do;-><init>()V

    sput-object v0, Lrx/internal/operators/return;->do:Ljava/lang/Object;

    .line 2
    new-instance v0, Lrx/internal/operators/return$if;

    invoke-direct {v0}, Lrx/internal/operators/return$if;-><init>()V

    sput-object v0, Lrx/internal/operators/return;->if:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static break(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lrx/internal/operators/return;->if:Ljava/lang/Object;

    :cond_0
    return-object p0
.end method

.method public static case(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    sget-object v0, Lrx/internal/operators/return;->do:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static do(Lrx/Observer;Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observer<",
            "-TT;>;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation

    .line 1
    sget-object v0, Lrx/internal/operators/return;->do:Ljava/lang/Object;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 2
    invoke-interface {p0}, Lrx/Observer;->onCompleted()V

    return v1

    .line 3
    :cond_0
    sget-object v0, Lrx/internal/operators/return;->if:Ljava/lang/Object;

    const/4 v2, 0x0

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 4
    invoke-interface {p0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return v2

    :cond_1
    if-eqz p1, :cond_3

    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v3, Lrx/internal/operators/return$for;

    if-ne v0, v3, :cond_2

    .line 6
    check-cast p1, Lrx/internal/operators/return$for;

    iget-object p1, p1, Lrx/internal/operators/return$for;->e:Ljava/lang/Throwable;

    invoke-interface {p0, p1}, Lrx/Observer;->onError(Ljava/lang/Throwable;)V

    return v1

    .line 7
    :cond_2
    invoke-interface {p0, p1}, Lrx/Observer;->onNext(Ljava/lang/Object;)V

    return v2

    .line 8
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "The lite notification can not be null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static else(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    instance-of p0, p0, Lrx/internal/operators/return$for;

    return p0
.end method

.method public static for(Ljava/lang/Throwable;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lrx/internal/operators/return$for;

    invoke-direct {v0, p0}, Lrx/internal/operators/return$for;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static goto(Ljava/lang/Object;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 1
    invoke-static {p0}, Lrx/internal/operators/return;->else(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p0}, Lrx/internal/operators/return;->case(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static if()Ljava/lang/Object;
    .locals 1

    .line 1
    sget-object v0, Lrx/internal/operators/return;->do:Ljava/lang/Object;

    return-object v0
.end method

.method public static new(Ljava/lang/Object;)Ljava/lang/Throwable;
    .locals 0

    .line 1
    check-cast p0, Lrx/internal/operators/return$for;

    iget-object p0, p0, Lrx/internal/operators/return$for;->e:Ljava/lang/Throwable;

    return-object p0
.end method

.method public static this(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    sget-object v0, Lrx/internal/operators/return;->if:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static try(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    sget-object v0, Lrx/internal/operators/return;->if:Ljava/lang/Object;

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method
