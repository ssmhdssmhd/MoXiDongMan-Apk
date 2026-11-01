.class final Lcom/google/common/util/concurrent/case$catch;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/case;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "catch"
.end annotation


# instance fields
.field public final do:Lcom/google/common/util/concurrent/Service$for;

.field public final for:Ljava/lang/Throwable;
    .annotation runtime Landroid/support/v4/b51;
    .end annotation
.end field

.field public final if:Z


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/Service$for;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1}, Lcom/google/common/util/concurrent/case$catch;-><init>(Lcom/google/common/util/concurrent/Service$for;ZLjava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/util/concurrent/Service$for;ZLjava/lang/Throwable;)V
    .locals 4
    .param p3    # Ljava/lang/Throwable;
        .annotation runtime Landroid/support/v4/b51;
        .end annotation
    .end param

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 3
    sget-object v2, Lcom/google/common/util/concurrent/Service$for;->STARTING:Lcom/google/common/util/concurrent/Service$for;

    if-ne p1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    const-string v3, "shutdownWhenStartupFinishes can only be set if state is STARTING. Got %s instead."

    invoke-static {v2, v3, p1}, Landroid/support/v4/af1;->return(ZLjava/lang/String;Ljava/lang/Object;)V

    if-eqz p3, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    :cond_2
    const/4 v2, 0x0

    .line 4
    :goto_2
    sget-object v3, Lcom/google/common/util/concurrent/Service$for;->FAILED:Lcom/google/common/util/concurrent/Service$for;

    if-ne p1, v3, :cond_3

    const/4 v0, 0x1

    :cond_3
    xor-int/2addr v0, v2

    xor-int/2addr v0, v1

    const-string v1, "A failure cause should be set if and only if the state is failed.  Got %s and %s instead."

    invoke-static {v0, v1, p1, p3}, Landroid/support/v4/af1;->default(ZLjava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lcom/google/common/util/concurrent/case$catch;->do:Lcom/google/common/util/concurrent/Service$for;

    .line 6
    iput-boolean p2, p0, Lcom/google/common/util/concurrent/case$catch;->if:Z

    .line 7
    iput-object p3, p0, Lcom/google/common/util/concurrent/case$catch;->for:Ljava/lang/Throwable;

    return-void
.end method


# virtual methods
.method public do()Lcom/google/common/util/concurrent/Service$for;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/google/common/util/concurrent/case$catch;->if:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/util/concurrent/case$catch;->do:Lcom/google/common/util/concurrent/Service$for;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->STARTING:Lcom/google/common/util/concurrent/Service$for;

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lcom/google/common/util/concurrent/Service$for;->STOPPING:Lcom/google/common/util/concurrent/Service$for;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/case$catch;->do:Lcom/google/common/util/concurrent/Service$for;

    return-object v0
.end method

.method public if()Ljava/lang/Throwable;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/case$catch;->do:Lcom/google/common/util/concurrent/Service$for;

    sget-object v1, Lcom/google/common/util/concurrent/Service$for;->FAILED:Lcom/google/common/util/concurrent/Service$for;

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "failureCause() is only valid if the service has failed, service is %s"

    invoke-static {v1, v2, v0}, Landroid/support/v4/af1;->K(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/case$catch;->for:Ljava/lang/Throwable;

    return-object v0
.end method
