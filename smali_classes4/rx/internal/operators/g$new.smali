.class Lrx/internal/operators/g$new;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/functions/Action0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/g;->do(Landroid/support/v4/y22;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic case:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic do:Lrx/Observable;

.field public final synthetic else:Lrx/internal/operators/g;

.field public final synthetic for:Ljava/util/concurrent/atomic/AtomicLong;

.field public final synthetic if:Landroid/support/v4/y22;

.field public final synthetic new:Lrx/if$do;

.field public final synthetic try:Lrx/functions/Action0;


# direct methods
.method public constructor <init>(Lrx/internal/operators/g;Lrx/Observable;Landroid/support/v4/y22;Ljava/util/concurrent/atomic/AtomicLong;Lrx/if$do;Lrx/functions/Action0;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/g$new;->else:Lrx/internal/operators/g;

    iput-object p2, p0, Lrx/internal/operators/g$new;->do:Lrx/Observable;

    iput-object p3, p0, Lrx/internal/operators/g$new;->if:Landroid/support/v4/y22;

    iput-object p4, p0, Lrx/internal/operators/g$new;->for:Ljava/util/concurrent/atomic/AtomicLong;

    iput-object p5, p0, Lrx/internal/operators/g$new;->new:Lrx/if$do;

    iput-object p6, p0, Lrx/internal/operators/g$new;->try:Lrx/functions/Action0;

    iput-object p7, p0, Lrx/internal/operators/g$new;->case:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/g$new;->do:Lrx/Observable;

    new-instance v1, Lrx/internal/operators/g$new$do;

    iget-object v2, p0, Lrx/internal/operators/g$new;->if:Landroid/support/v4/y22;

    invoke-direct {v1, p0, v2}, Lrx/internal/operators/g$new$do;-><init>(Lrx/internal/operators/g$new;Landroid/support/v4/y22;)V

    invoke-virtual {v0, v1}, Lrx/Observable;->r5(Landroid/support/v4/y22;)Lrx/Subscription;

    return-void
.end method
