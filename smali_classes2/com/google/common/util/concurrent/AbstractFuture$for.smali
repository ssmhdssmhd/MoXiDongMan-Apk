.class final Lcom/google/common/util/concurrent/AbstractFuture$for;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "for"
.end annotation


# static fields
.field public static final for:Lcom/google/common/util/concurrent/AbstractFuture$for;

.field public static final new:Lcom/google/common/util/concurrent/AbstractFuture$for;


# instance fields
.field public final do:Z

.field public final if:Ljava/lang/Throwable;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    invoke-static {}, Lcom/google/common/util/concurrent/AbstractFuture;->for()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture$for;->new:Lcom/google/common/util/concurrent/AbstractFuture$for;

    .line 3
    sput-object v1, Lcom/google/common/util/concurrent/AbstractFuture$for;->for:Lcom/google/common/util/concurrent/AbstractFuture$for;

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$for;

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/AbstractFuture$for;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture$for;->new:Lcom/google/common/util/concurrent/AbstractFuture$for;

    .line 5
    new-instance v0, Lcom/google/common/util/concurrent/AbstractFuture$for;

    const/4 v2, 0x1

    invoke-direct {v0, v2, v1}, Lcom/google/common/util/concurrent/AbstractFuture$for;-><init>(ZLjava/lang/Throwable;)V

    sput-object v0, Lcom/google/common/util/concurrent/AbstractFuture$for;->for:Lcom/google/common/util/concurrent/AbstractFuture$for;

    :goto_0
    return-void
.end method

.method public constructor <init>(ZLjava/lang/Throwable;)V
    .locals 0
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-boolean p1, p0, Lcom/google/common/util/concurrent/AbstractFuture$for;->do:Z

    .line 3
    iput-object p2, p0, Lcom/google/common/util/concurrent/AbstractFuture$for;->if:Ljava/lang/Throwable;

    return-void
.end method
