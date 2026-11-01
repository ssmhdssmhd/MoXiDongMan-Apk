.class abstract Lcom/google/common/util/concurrent/this;
.super Lcom/google/common/util/concurrent/AbstractFuture$this;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/gm1;
    value = .enum Landroid/support/v4/gm1$do;->FULL:Landroid/support/v4/gm1$do;
.end annotation

.annotation build Landroid/support/v4/ki0;
    emulated = true
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/this$new;,
        Lcom/google/common/util/concurrent/this$for;,
        Lcom/google/common/util/concurrent/this$if;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<OutputT:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/util/concurrent/AbstractFuture$this<",
        "TOutputT;>;"
    }
.end annotation


# static fields
.field private static final catch:Lcom/google/common/util/concurrent/this$if;

.field private static final class:Ljava/util/logging/Logger;


# instance fields
.field private volatile break:I

.field private volatile this:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const-class v0, Lcom/google/common/util/concurrent/this;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lcom/google/common/util/concurrent/this;->class:Ljava/util/logging/Logger;

    const/4 v0, 0x0

    .line 2
    :try_start_0
    new-instance v1, Lcom/google/common/util/concurrent/this$for;

    const-class v2, Lcom/google/common/util/concurrent/this;

    const-class v3, Ljava/util/Set;

    const-string v4, "this"

    .line 3
    invoke-static {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;

    move-result-object v2

    const-class v3, Lcom/google/common/util/concurrent/this;

    const-string v4, "break"

    .line 4
    invoke-static {v3, v4}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->newUpdater(Ljava/lang/Class;Ljava/lang/String;)Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/google/common/util/concurrent/this$for;-><init>(Ljava/util/concurrent/atomic/AtomicReferenceFieldUpdater;Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 5
    new-instance v2, Lcom/google/common/util/concurrent/this$new;

    invoke-direct {v2, v0}, Lcom/google/common/util/concurrent/this$new;-><init>(Lcom/google/common/util/concurrent/this$do;)V

    move-object v0, v1

    move-object v1, v2

    .line 6
    :goto_0
    sput-object v1, Lcom/google/common/util/concurrent/this;->catch:Lcom/google/common/util/concurrent/this$if;

    if-eqz v0, :cond_0

    .line 7
    sget-object v1, Lcom/google/common/util/concurrent/this;->class:Ljava/util/logging/Logger;

    sget-object v2, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v3, "SafeAtomicHelper is broken!"

    invoke-virtual {v1, v2, v3, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$this;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/common/util/concurrent/this;->this:Ljava/util/Set;

    .line 3
    iput p1, p0, Lcom/google/common/util/concurrent/this;->break:I

    return-void
.end method

.method public static synthetic interface(Lcom/google/common/util/concurrent/this;)I
    .locals 1

    .line 1
    iget v0, p0, Lcom/google/common/util/concurrent/this;->break:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/google/common/util/concurrent/this;->break:I

    return v0
.end method

.method public static synthetic strictfp(Lcom/google/common/util/concurrent/this;)Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/common/util/concurrent/this;->this:Ljava/util/Set;

    return-object p0
.end method

.method public static synthetic volatile(Lcom/google/common/util/concurrent/this;Ljava/util/Set;)Ljava/util/Set;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/this;->this:Ljava/util/Set;

    return-object p1
.end method


# virtual methods
.method public final implements()I
    .locals 1

    .line 1
    sget-object v0, Lcom/google/common/util/concurrent/this;->catch:Lcom/google/common/util/concurrent/this$if;

    invoke-virtual {v0, p0}, Lcom/google/common/util/concurrent/this$if;->if(Lcom/google/common/util/concurrent/this;)I

    move-result v0

    return v0
.end method

.method public final instanceof()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/this;->this:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/google/common/collect/c3;->throw()Ljava/util/Set;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Lcom/google/common/util/concurrent/this;->protected(Ljava/util/Set;)V

    .line 4
    sget-object v1, Lcom/google/common/util/concurrent/this;->catch:Lcom/google/common/util/concurrent/this$if;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, v2, v0}, Lcom/google/common/util/concurrent/this$if;->do(Lcom/google/common/util/concurrent/this;Ljava/util/Set;Ljava/util/Set;)V

    .line 5
    iget-object v0, p0, Lcom/google/common/util/concurrent/this;->this:Ljava/util/Set;

    :cond_0
    return-object v0
.end method

.method public abstract protected(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation
.end method

.method public final transient()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/google/common/util/concurrent/this;->this:Ljava/util/Set;

    return-void
.end method
