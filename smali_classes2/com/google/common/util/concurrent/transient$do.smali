.class public abstract Lcom/google/common/util/concurrent/transient$do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/o8;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/transient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "do"
.end annotation


# instance fields
.field public final do:Lcom/google/common/util/concurrent/transient;
    .annotation build Landroid/support/v4/hf2;
    .end annotation
.end field

.field public for:I
    .annotation build Landroid/support/v4/ji0;
        value = "monitor.lock"
    .end annotation
.end field

.field public final if:Ljava/util/concurrent/locks/Condition;

.field public new:Lcom/google/common/util/concurrent/transient$do;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation

    .annotation build Landroid/support/v4/ji0;
        value = "monitor.lock"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/transient;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/google/common/util/concurrent/transient$do;->for:I

    const-string v0, "monitor"

    .line 3
    invoke-static {p1, v0}, Landroid/support/v4/af1;->strictfp(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/transient;

    iput-object v0, p0, Lcom/google/common/util/concurrent/transient$do;->do:Lcom/google/common/util/concurrent/transient;

    .line 4
    invoke-static {p1}, Lcom/google/common/util/concurrent/transient;->do(Lcom/google/common/util/concurrent/transient;)Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object p1

    iput-object p1, p0, Lcom/google/common/util/concurrent/transient$do;->if:Ljava/util/concurrent/locks/Condition;

    return-void
.end method


# virtual methods
.method public abstract do()Z
.end method
