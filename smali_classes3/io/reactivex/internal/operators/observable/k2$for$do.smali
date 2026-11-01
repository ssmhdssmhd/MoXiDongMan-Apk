.class final Lio/reactivex/internal/operators/observable/k2$for$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/reactivex/internal/operators/observable/k2$for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "do"
.end annotation


# instance fields
.field private final do:Lio/reactivex/subjects/this;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/reactivex/subjects/this<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic if:Lio/reactivex/internal/operators/observable/k2$for;


# direct methods
.method public constructor <init>(Lio/reactivex/internal/operators/observable/k2$for;Lio/reactivex/subjects/this;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/reactivex/subjects/this<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lio/reactivex/internal/operators/observable/k2$for$do;->if:Lio/reactivex/internal/operators/observable/k2$for;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lio/reactivex/internal/operators/observable/k2$for$do;->do:Lio/reactivex/subjects/this;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/reactivex/internal/operators/observable/k2$for$do;->if:Lio/reactivex/internal/operators/observable/k2$for;

    iget-object v1, p0, Lio/reactivex/internal/operators/observable/k2$for$do;->do:Lio/reactivex/subjects/this;

    invoke-virtual {v0, v1}, Lio/reactivex/internal/operators/observable/k2$for;->new(Lio/reactivex/subjects/this;)V

    return-void
.end method
