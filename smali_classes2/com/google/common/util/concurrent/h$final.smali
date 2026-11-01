.class final Lcom/google/common/util/concurrent/h$final;
.super Lcom/google/common/util/concurrent/package;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "final"
.end annotation


# instance fields
.field private final do:Ljava/util/concurrent/locks/Lock;

.field private final if:Lcom/google/common/util/concurrent/h$super;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Lock;Lcom/google/common/util/concurrent/h$super;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/package;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/util/concurrent/h$final;->do:Ljava/util/concurrent/locks/Lock;

    .line 3
    iput-object p2, p0, Lcom/google/common/util/concurrent/h$final;->if:Lcom/google/common/util/concurrent/h$super;

    return-void
.end method


# virtual methods
.method public do()Ljava/util/concurrent/locks/Lock;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$final;->do:Ljava/util/concurrent/locks/Lock;

    return-object v0
.end method

.method public newCondition()Ljava/util/concurrent/locks/Condition;
    .locals 3

    .line 1
    new-instance v0, Lcom/google/common/util/concurrent/h$const;

    iget-object v1, p0, Lcom/google/common/util/concurrent/h$final;->do:Ljava/util/concurrent/locks/Lock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->newCondition()Ljava/util/concurrent/locks/Condition;

    move-result-object v1

    iget-object v2, p0, Lcom/google/common/util/concurrent/h$final;->if:Lcom/google/common/util/concurrent/h$super;

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/h$const;-><init>(Ljava/util/concurrent/locks/Condition;Lcom/google/common/util/concurrent/h$super;)V

    return-object v0
.end method
