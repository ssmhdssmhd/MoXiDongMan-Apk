.class Lrx/internal/operators/d0$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/d0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/y22<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic case:Lrx/internal/operators/d0;

.field public final do:Lrx/internal/operators/d0$if;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/d0$if<",
            "TT;>;"
        }
    .end annotation
.end field

.field public final synthetic for:Landroid/support/v4/ww1;

.field public final if:Landroid/support/v4/y22;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/y22<",
            "*>;"
        }
    .end annotation
.end field

.field public final synthetic new:Lrx/if$do;

.field public final synthetic try:Landroid/support/v4/ax1;


# direct methods
.method public constructor <init>(Lrx/internal/operators/d0;Landroid/support/v4/y22;Landroid/support/v4/ww1;Lrx/if$do;Landroid/support/v4/ax1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/d0$do;->case:Lrx/internal/operators/d0;

    iput-object p3, p0, Lrx/internal/operators/d0$do;->for:Landroid/support/v4/ww1;

    iput-object p4, p0, Lrx/internal/operators/d0$do;->new:Lrx/if$do;

    iput-object p5, p0, Lrx/internal/operators/d0$do;->try:Landroid/support/v4/ax1;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    .line 2
    new-instance p1, Lrx/internal/operators/d0$if;

    invoke-direct {p1}, Lrx/internal/operators/d0$if;-><init>()V

    iput-object p1, p0, Lrx/internal/operators/d0$do;->do:Lrx/internal/operators/d0$if;

    .line 3
    iput-object p0, p0, Lrx/internal/operators/d0$do;->if:Landroid/support/v4/y22;

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d0$do;->do:Lrx/internal/operators/d0$if;

    iget-object v1, p0, Lrx/internal/operators/d0$do;->try:Landroid/support/v4/ax1;

    invoke-virtual {v0, v1, p0}, Lrx/internal/operators/d0$if;->for(Landroid/support/v4/y22;Landroid/support/v4/y22;)V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d0$do;->try:Landroid/support/v4/ax1;

    invoke-virtual {v0, p1}, Landroid/support/v4/ax1;->onError(Ljava/lang/Throwable;)V

    .line 2
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 3
    iget-object p1, p0, Lrx/internal/operators/d0$do;->do:Lrx/internal/operators/d0$if;

    invoke-virtual {p1}, Lrx/internal/operators/d0$if;->do()V

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/d0$do;->do:Lrx/internal/operators/d0$if;

    invoke-virtual {v0, p1}, Lrx/internal/operators/d0$if;->new(Ljava/lang/Object;)I

    move-result p1

    .line 2
    iget-object v0, p0, Lrx/internal/operators/d0$do;->for:Landroid/support/v4/ww1;

    iget-object v1, p0, Lrx/internal/operators/d0$do;->new:Lrx/if$do;

    new-instance v2, Lrx/internal/operators/d0$do$do;

    invoke-direct {v2, p0, p1}, Lrx/internal/operators/d0$do$do;-><init>(Lrx/internal/operators/d0$do;I)V

    iget-object p1, p0, Lrx/internal/operators/d0$do;->case:Lrx/internal/operators/d0;

    iget-wide v3, p1, Lrx/internal/operators/d0;->do:J

    iget-object p1, p1, Lrx/internal/operators/d0;->if:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v1, v2, v3, v4, p1}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    const-wide v0, 0x7fffffffffffffffL

    .line 1
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method
