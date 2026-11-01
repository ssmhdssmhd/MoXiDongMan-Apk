.class Lrx/internal/operators/a1$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/a1$do;->do(Lrx/Observable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lrx/Observable;

.field public final synthetic if:Lrx/internal/operators/a1$do;


# direct methods
.method public constructor <init>(Lrx/internal/operators/a1$do;Lrx/Observable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/a1$do$do;->if:Lrx/internal/operators/a1$do;

    iput-object p2, p0, Lrx/internal/operators/a1$do$do;->do:Lrx/Observable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/internal/operators/a1$do$do;->if:Lrx/internal/operators/a1$do;

    iget-object v0, v0, Lrx/internal/operators/a1$do;->case:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 2
    new-instance v0, Lrx/internal/operators/a1$do$do$do;

    invoke-direct {v0, p0, p0}, Lrx/internal/operators/a1$do$do$do;-><init>(Lrx/internal/operators/a1$do$do;Lrx/functions/Action0;)V

    .line 3
    iget-object v1, p0, Lrx/internal/operators/a1$do$do;->if:Lrx/internal/operators/a1$do;

    iget-object v1, v1, Lrx/internal/operators/a1$do;->new:Landroid/support/v4/ww1;

    invoke-virtual {v1, v0}, Landroid/support/v4/ww1;->if(Lrx/Subscription;)V

    .line 4
    iget-object v1, p0, Lrx/internal/operators/a1$do$do;->do:Lrx/Observable;

    invoke-virtual {v1, v0}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-void
.end method
