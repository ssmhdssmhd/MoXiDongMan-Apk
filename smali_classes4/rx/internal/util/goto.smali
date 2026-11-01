.class public final Lrx/internal/util/goto;
.super Lrx/Single;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lrx/internal/util/goto$try;,
        Lrx/internal/util/goto$new;,
        Lrx/internal/util/goto$for;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Single<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final if:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/goto$do;

    invoke-direct {v0, p1}, Lrx/internal/util/goto$do;-><init>(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lrx/Single;-><init>(Lrx/Single$OnSubscribe;)V

    .line 2
    iput-object p1, p0, Lrx/internal/util/goto;->if:Ljava/lang/Object;

    return-void
.end method

.method public static b0(Ljava/lang/Object;)Lrx/internal/util/goto;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Lrx/internal/util/goto<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/goto;

    invoke-direct {v0, p0}, Lrx/internal/util/goto;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public c0()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/util/goto;->if:Ljava/lang/Object;

    return-object v0
.end method

.method public d0(Lrx/functions/Func1;)Lrx/Single;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lrx/functions/Func1<",
            "-TT;+",
            "Lrx/Single<",
            "+TR;>;>;)",
            "Lrx/Single<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lrx/internal/util/goto$if;

    invoke-direct {v0, p0, p1}, Lrx/internal/util/goto$if;-><init>(Lrx/internal/util/goto;Lrx/functions/Func1;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method

.method public e0(Lrx/if;)Lrx/Single;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/if;",
            ")",
            "Lrx/Single<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lrx/internal/schedulers/if;

    if-eqz v0, :cond_0

    .line 2
    check-cast p1, Lrx/internal/schedulers/if;

    .line 3
    new-instance v0, Lrx/internal/util/goto$for;

    iget-object v1, p0, Lrx/internal/util/goto;->if:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lrx/internal/util/goto$for;-><init>(Lrx/internal/schedulers/if;Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance v0, Lrx/internal/util/goto$new;

    iget-object v1, p0, Lrx/internal/util/goto;->if:Ljava/lang/Object;

    invoke-direct {v0, p1, v1}, Lrx/internal/util/goto$new;-><init>(Lrx/if;Ljava/lang/Object;)V

    invoke-static {v0}, Lrx/Single;->const(Lrx/Single$OnSubscribe;)Lrx/Single;

    move-result-object p1

    return-object p1
.end method
