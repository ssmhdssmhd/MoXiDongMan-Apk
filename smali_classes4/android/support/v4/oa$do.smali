.class public final Landroid/support/v4/oa$do;
.super Landroid/support/v4/y22;
.source "SourceFile"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/oa;
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
        "Landroid/support/v4/y22<",
        "Lrx/do<",
        "+TT;>;>;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field public static final new:I


# instance fields
.field private final do:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lrx/do<",
            "+TT;>;>;"
        }
    .end annotation
.end field

.field private for:I

.field private if:Lrx/do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/do<",
            "+TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lrx/internal/util/try;->new:I

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x4

    sput v0, Landroid/support/v4/oa$do;->new:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/support/v4/y22;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v0}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    iput-object v0, p0, Landroid/support/v4/oa$do;->do:Ljava/util/concurrent/BlockingQueue;

    return-void
.end method

.method private if()Lrx/do;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lrx/do<",
            "+TT;>;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/oa$do;->do:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/do;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Landroid/support/v4/oa$do;->do:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/do;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 3
    invoke-virtual {p0}, Landroid/support/v4/y22;->unsubscribe()V

    .line 4
    invoke-static {v0}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method


# virtual methods
.method public do(Lrx/do;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/do<",
            "+TT;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/support/v4/oa$do;->do:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public hasNext()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/v4/oa$do;->if:Lrx/do;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Landroid/support/v4/oa$do;->if()Lrx/do;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v4/oa$do;->if:Lrx/do;

    .line 3
    iget v0, p0, Landroid/support/v4/oa$do;->for:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/support/v4/oa$do;->for:I

    .line 4
    sget v1, Landroid/support/v4/oa$do;->new:I

    if-lt v0, v1, :cond_0

    int-to-long v0, v0

    .line 5
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Landroid/support/v4/oa$do;->for:I

    .line 7
    :cond_0
    iget-object v0, p0, Landroid/support/v4/oa$do;->if:Lrx/do;

    invoke-virtual {v0}, Lrx/do;->class()Z

    move-result v0

    if-nez v0, :cond_1

    .line 8
    iget-object v0, p0, Landroid/support/v4/oa$do;->if:Lrx/do;

    invoke-virtual {v0}, Lrx/do;->catch()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 9
    :cond_1
    iget-object v0, p0, Landroid/support/v4/oa$do;->if:Lrx/do;

    invoke-virtual {v0}, Lrx/do;->else()Ljava/lang/Throwable;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/s80;->for(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/oa$do;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Landroid/support/v4/oa$do;->if:Lrx/do;

    invoke-virtual {v0}, Lrx/do;->goto()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    .line 3
    iput-object v1, p0, Landroid/support/v4/oa$do;->if:Lrx/do;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public onCompleted()V
    .locals 0

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v4/oa$do;->do:Ljava/util/concurrent/BlockingQueue;

    invoke-static {p1}, Lrx/do;->new(Ljava/lang/Throwable;)Lrx/do;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lrx/do;

    invoke-virtual {p0, p1}, Landroid/support/v4/oa$do;->do(Lrx/do;)V

    return-void
.end method

.method public onStart()V
    .locals 2

    .line 1
    sget v0, Lrx/internal/util/try;->new:I

    int-to-long v0, v0

    invoke-virtual {p0, v0, v1}, Landroid/support/v4/y22;->request(J)V

    return-void
.end method

.method public remove()V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Read-only iterator"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
