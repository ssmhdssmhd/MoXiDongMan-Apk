.class Lrx/singles/do$do;
.super Landroid/support/v4/b02;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/singles/do;->for()Ljava/lang/Object;
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
.field public final synthetic for:Ljava/util/concurrent/CountDownLatch;

.field public final synthetic if:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic new:Ljava/util/concurrent/atomic/AtomicReference;

.field public final synthetic try:Lrx/singles/do;


# direct methods
.method public constructor <init>(Lrx/singles/do;Ljava/util/concurrent/atomic/AtomicReference;Ljava/util/concurrent/CountDownLatch;Ljava/util/concurrent/atomic/AtomicReference;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lrx/singles/do$do;->try:Lrx/singles/do;

    iput-object p2, p0, Lrx/singles/do$do;->if:Ljava/util/concurrent/atomic/AtomicReference;

    iput-object p3, p0, Lrx/singles/do$do;->for:Ljava/util/concurrent/CountDownLatch;

    iput-object p4, p0, Lrx/singles/do$do;->new:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {p0}, Landroid/support/v4/b02;-><init>()V

    return-void
.end method


# virtual methods
.method public if(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lrx/singles/do$do;->if:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lrx/singles/do$do;->for:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method

.method public onError(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lrx/singles/do$do;->new:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lrx/singles/do$do;->for:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
