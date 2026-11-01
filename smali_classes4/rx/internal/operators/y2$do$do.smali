.class Lrx/internal/operators/y2$do$do;
.super Landroid/support/v4/b02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/internal/operators/y2$do;->do(Landroid/support/v4/b02;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/b02<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic case:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final synthetic else:Lrx/internal/operators/y2$do;

.field public final synthetic for:I

.field public final synthetic if:[Ljava/lang/Object;

.field public final synthetic new:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic try:Landroid/support/v4/b02;


# direct methods
.method public constructor <init>(Lrx/internal/operators/y2$do;[Ljava/lang/Object;ILjava/util/concurrent/atomic/AtomicInteger;Landroid/support/v4/b02;Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/internal/operators/y2$do$do;->else:Lrx/internal/operators/y2$do;

    iput-object p2, p0, Lrx/internal/operators/y2$do$do;->if:[Ljava/lang/Object;

    iput p3, p0, Lrx/internal/operators/y2$do$do;->for:I

    iput-object p4, p0, Lrx/internal/operators/y2$do$do;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-object p5, p0, Lrx/internal/operators/y2$do$do;->try:Landroid/support/v4/b02;

    iput-object p6, p0, Lrx/internal/operators/y2$do$do;->case:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {p0}, Landroid/support/v4/b02;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/internal/operators/y2$do$do;->if:[Ljava/lang/Object;

    iget v1, p0, Lrx/internal/operators/y2$do$do;->for:I

    aput-object p1, v0, v1

    .line 2
    iget-object p1, p0, Lrx/internal/operators/y2$do$do;->new:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result p1

    if-nez p1, :cond_0

    .line 3
    :try_start_0
    iget-object p1, p0, Lrx/internal/operators/y2$do$do;->else:Lrx/internal/operators/y2$do;

    iget-object p1, p1, Lrx/internal/operators/y2$do;->if:Lrx/functions/FuncN;

    iget-object v0, p0, Lrx/internal/operators/y2$do$do;->if:[Ljava/lang/Object;

    invoke-interface {p1, v0}, Lrx/functions/FuncN;->call([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    iget-object v0, p0, Lrx/internal/operators/y2$do$do;->try:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->if(Ljava/lang/Object;)V

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 5
    invoke-static {p1}, Landroid/support/v4/s80;->try(Ljava/lang/Throwable;)V

    .line 6
    invoke-virtual {p0, p1}, Lrx/internal/operators/y2$do$do;->onError(Ljava/lang/Throwable;)V

    :cond_0
    :goto_0
    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lrx/internal/operators/y2$do$do;->case:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lrx/internal/operators/y2$do$do;->try:Landroid/support/v4/b02;

    invoke-virtual {v0, p1}, Landroid/support/v4/b02;->onError(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p1}, Lrx/plugins/if;->protected(Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method
