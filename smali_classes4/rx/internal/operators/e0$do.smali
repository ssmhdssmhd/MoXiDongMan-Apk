.class Lrx/internal/operators/e0$do;
.super Landroid/support/v4/y22;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/e0;->do(Landroid/support/v4/y22;)Landroid/support/v4/y22;
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
.field public do:Z

.field public final synthetic for:Landroid/support/v4/y22;

.field public final synthetic if:Lrx/if$do;

.field public final synthetic new:Lrx/internal/operators/e0;


# direct methods
.method public constructor <init>(Lrx/internal/operators/e0;Landroid/support/v4/y22;Lrx/if$do;Landroid/support/v4/y22;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/e0$do;->new:Lrx/internal/operators/e0;

    iput-object p3, p0, Lrx/internal/operators/e0$do;->if:Lrx/if$do;

    iput-object p4, p0, Lrx/internal/operators/e0$do;->for:Landroid/support/v4/y22;

    invoke-direct {p0, p2}, Landroid/support/v4/y22;-><init>(Landroid/support/v4/y22;)V

    return-void
.end method


# virtual methods
.method public onCompleted()V
    .locals 5

    .line 1
    iget-object v0, p0, Lrx/internal/operators/e0$do;->if:Lrx/if$do;

    new-instance v1, Lrx/internal/operators/e0$do$do;

    invoke-direct {v1, p0}, Lrx/internal/operators/e0$do$do;-><init>(Lrx/internal/operators/e0$do;)V

    iget-object v2, p0, Lrx/internal/operators/e0$do;->new:Lrx/internal/operators/e0;

    iget-wide v3, v2, Lrx/internal/operators/e0;->do:J

    iget-object v2, v2, Lrx/internal/operators/e0;->if:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v3, v4, v2}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/e0$do;->if:Lrx/if$do;

    new-instance v1, Lrx/internal/operators/e0$do$if;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/e0$do$if;-><init>(Lrx/internal/operators/e0$do;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lrx/if$do;->if(Lrx/functions/Action0;)Lrx/Subscription;

    return-void
.end method

.method public onNext(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/e0$do;->if:Lrx/if$do;

    new-instance v1, Lrx/internal/operators/e0$do$for;

    invoke-direct {v1, p0, p1}, Lrx/internal/operators/e0$do$for;-><init>(Lrx/internal/operators/e0$do;Ljava/lang/Object;)V

    iget-object p1, p0, Lrx/internal/operators/e0$do;->new:Lrx/internal/operators/e0;

    iget-wide v2, p1, Lrx/internal/operators/e0;->do:J

    iget-object p1, p1, Lrx/internal/operators/e0;->if:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, v1, v2, v3, p1}, Lrx/if$do;->for(Lrx/functions/Action0;JLjava/util/concurrent/TimeUnit;)Lrx/Subscription;

    return-void
.end method
