.class public final Lrx/subscriptions/do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lrx/Subscription;


# static fields
.field public static final if:Lrx/functions/Action0;


# instance fields
.field public final do:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lrx/functions/Action0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lrx/subscriptions/do$do;

    invoke-direct {v0}, Lrx/subscriptions/do$do;-><init>()V

    sput-object v0, Lrx/subscriptions/do;->if:Lrx/functions/Action0;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lrx/subscriptions/do;->do:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method private constructor <init>(Lrx/functions/Action0;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lrx/subscriptions/do;->do:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public static do()Lrx/subscriptions/do;
    .locals 1

    .line 1
    new-instance v0, Lrx/subscriptions/do;

    invoke-direct {v0}, Lrx/subscriptions/do;-><init>()V

    return-object v0
.end method

.method public static if(Lrx/functions/Action0;)Lrx/subscriptions/do;
    .locals 1

    .line 1
    new-instance v0, Lrx/subscriptions/do;

    invoke-direct {v0, p0}, Lrx/subscriptions/do;-><init>(Lrx/functions/Action0;)V

    return-object v0
.end method


# virtual methods
.method public isUnsubscribed()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/subscriptions/do;->do:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lrx/subscriptions/do;->if:Lrx/functions/Action0;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public unsubscribe()V
    .locals 2

    .line 1
    iget-object v0, p0, Lrx/subscriptions/do;->do:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/functions/Action0;

    .line 2
    sget-object v1, Lrx/subscriptions/do;->if:Lrx/functions/Action0;

    if-eq v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lrx/subscriptions/do;->do:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lrx/functions/Action0;

    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 4
    invoke-interface {v0}, Lrx/functions/Action0;->call()V

    :cond_0
    return-void
.end method
