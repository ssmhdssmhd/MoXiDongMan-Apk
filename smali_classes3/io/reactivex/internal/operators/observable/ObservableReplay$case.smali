.class final Lio/reactivex/internal/operators/observable/ObservableReplay$case;
.super Landroid/support/v4/pq;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/ObservableReplay;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "case"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/support/v4/pq<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final do:Landroid/support/v4/pq;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/pq<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final if:Lio/reactivex/new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/support/v4/pq;Lio/reactivex/new;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/support/v4/pq<",
            "TT;>;",
            "Lio/reactivex/new<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Landroid/support/v4/pq;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$case;->do:Landroid/support/v4/pq;

    .line 3
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$case;->if:Lio/reactivex/new;

    return-void
.end method


# virtual methods
.method public subscribeActual(Lio/reactivex/Observer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/Observer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$case;->if:Lio/reactivex/new;

    invoke-virtual {v0, p1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public try(Lio/reactivex/functions/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/functions/Consumer<",
            "-",
            "Lio/reactivex/disposables/Disposable;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/ObservableReplay$case;->do:Landroid/support/v4/pq;

    invoke-virtual {v0, p1}, Landroid/support/v4/pq;->try(Lio/reactivex/functions/Consumer;)V

    return-void
.end method
