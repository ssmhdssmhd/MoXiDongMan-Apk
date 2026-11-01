.class final Lrx/internal/operators/k2$if;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "SourceFile"

# interfaces
.implements Lrx/Producer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lrx/internal/operators/k2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "if"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/concurrent/atomic/AtomicLong;",
        "Lrx/Producer;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x10e280be328ab0acL


# instance fields
.field public final zipper:Lrx/internal/operators/k2$do;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lrx/internal/operators/k2$do<",
            "TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lrx/internal/operators/k2$do;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/internal/operators/k2$do<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    .line 2
    iput-object p1, p0, Lrx/internal/operators/k2$if;->zipper:Lrx/internal/operators/k2$do;

    return-void
.end method


# virtual methods
.method public request(J)V
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Landroid/support/v4/u6;->if(Ljava/util/concurrent/atomic/AtomicLong;J)J

    .line 2
    iget-object p1, p0, Lrx/internal/operators/k2$if;->zipper:Lrx/internal/operators/k2$do;

    invoke-virtual {p1}, Lrx/internal/operators/k2$do;->tick()V

    return-void
.end method
