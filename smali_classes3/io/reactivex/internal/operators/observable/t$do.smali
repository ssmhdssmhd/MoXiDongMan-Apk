.class final Lio/reactivex/internal/operators/observable/t$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Landroid/support/v4/pq<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field private final do:Lio/reactivex/new;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/new<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final if:I


# direct methods
.method public constructor <init>(Lio/reactivex/new;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/new<",
            "TT;>;I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/t$do;->do:Lio/reactivex/new;

    .line 3
    iput p2, p0, Lio/reactivex/internal/operators/observable/t$do;->if:I

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lio/reactivex/internal/operators/observable/t$do;->do()Landroid/support/v4/pq;

    move-result-object v0

    return-object v0
.end method

.method public do()Landroid/support/v4/pq;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/support/v4/pq<",
            "TT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/t$do;->do:Lio/reactivex/new;

    iget v1, p0, Lio/reactivex/internal/operators/observable/t$do;->if:I

    invoke-virtual {v0, v1}, Lio/reactivex/new;->replay(I)Landroid/support/v4/pq;

    move-result-object v0

    return-object v0
.end method
