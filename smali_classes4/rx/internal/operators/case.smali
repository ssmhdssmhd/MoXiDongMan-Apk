.class public final Lrx/internal/operators/case;
.super Lrx/Observable;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/operators/case$for;,
        Lrx/internal/operators/case$if;,
        Lrx/internal/operators/case$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final if:Lrx/internal/operators/case$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/case$do<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lrx/Observable$OnSubscribe;Lrx/internal/operators/case$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe<",
            "TT;>;",
            "Lrx/internal/operators/case$do<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 2
    iput-object p2, p0, Lrx/internal/operators/case;->if:Lrx/internal/operators/case$do;

    return-void
.end method

.method public static e6(Lrx/Observable;)Lrx/internal/operators/case;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;)",
            "Lrx/internal/operators/case<",
            "TT;>;"
        }
    .end annotation

    const/16 v0, 0x10

    .line 1
    invoke-static {p0, v0}, Lrx/internal/operators/case;->f6(Lrx/Observable;I)Lrx/internal/operators/case;

    move-result-object p0

    return-object p0
.end method

.method public static f6(Lrx/Observable;I)Lrx/internal/operators/case;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/Observable<",
            "+TT;>;I)",
            "Lrx/internal/operators/case<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    .line 1
    new-instance v0, Lrx/internal/operators/case$do;

    invoke-direct {v0, p0, p1}, Lrx/internal/operators/case$do;-><init>(Lrx/Observable;I)V

    .line 2
    new-instance p0, Lrx/internal/operators/case$if;

    invoke-direct {p0, v0}, Lrx/internal/operators/case$if;-><init>(Lrx/internal/operators/case$do;)V

    .line 3
    new-instance p1, Lrx/internal/operators/case;

    invoke-direct {p1, p0, v0}, Lrx/internal/operators/case;-><init>(Lrx/Observable$OnSubscribe;Lrx/internal/operators/case$do;)V

    return-object p1

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "capacityHint > 0 required"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public g6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/case;->if:Lrx/internal/operators/case$do;

    iget-object v0, v0, Lrx/internal/operators/case$do;->goto:[Lrx/internal/operators/case$for;

    array-length v0, v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public h6()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/case;->if:Lrx/internal/operators/case$do;

    iget-boolean v0, v0, Lrx/internal/operators/case$do;->this:Z

    return v0
.end method
