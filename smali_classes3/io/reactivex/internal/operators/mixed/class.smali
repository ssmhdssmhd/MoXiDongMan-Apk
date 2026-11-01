.class public final Lio/reactivex/internal/operators/mixed/class;
.super Lio/reactivex/new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/reactivex/internal/operators/mixed/class$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lio/reactivex/new<",
        "TR;>;"
    }
.end annotation


# instance fields
.field public final do:Lio/reactivex/new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final for:Lio/reactivex/internal/util/try;

.field public final if:Lio/reactivex/functions/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;"
        }
    .end annotation
.end field

.field public final new:I


# direct methods
.method public constructor <init>(Lio/reactivex/new;Lio/reactivex/functions/Function;Lio/reactivex/internal/util/try;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/new<",
            "TT;>;",
            "Lio/reactivex/functions/Function<",
            "-TT;+",
            "Lio/reactivex/MaybeSource<",
            "+TR;>;>;",
            "Lio/reactivex/internal/util/try;",
            "I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lio/reactivex/new;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/mixed/class;->do:Lio/reactivex/new;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/mixed/class;->if:Lio/reactivex/functions/Function;

    .line 4
    iput-object p3, p0, Lio/reactivex/internal/operators/mixed/class;->for:Lio/reactivex/internal/util/try;

    .line 5
    iput p4, p0, Lio/reactivex/internal/operators/mixed/class;->new:I

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/class;->do:Lio/reactivex/new;

    iget-object v1, p0, Lio/reactivex/internal/operators/mixed/class;->if:Lio/reactivex/functions/Function;

    invoke-static {v0, v1, p1}, Lio/reactivex/internal/operators/mixed/while;->if(Ljava/lang/Object;Lio/reactivex/functions/Function;Lio/reactivex/Observer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/reactivex/internal/operators/mixed/class;->do:Lio/reactivex/new;

    new-instance v1, Lio/reactivex/internal/operators/mixed/class$do;

    iget-object v2, p0, Lio/reactivex/internal/operators/mixed/class;->if:Lio/reactivex/functions/Function;

    iget v3, p0, Lio/reactivex/internal/operators/mixed/class;->new:I

    iget-object v4, p0, Lio/reactivex/internal/operators/mixed/class;->for:Lio/reactivex/internal/util/try;

    invoke-direct {v1, p1, v2, v3, v4}, Lio/reactivex/internal/operators/mixed/class$do;-><init>(Lio/reactivex/Observer;Lio/reactivex/functions/Function;ILio/reactivex/internal/util/try;)V

    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    :cond_0
    return-void
.end method
