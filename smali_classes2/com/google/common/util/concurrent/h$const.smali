.class final Lcom/google/common/util/concurrent/h$const;
.super Lcom/google/common/util/concurrent/switch;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/h;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "const"
.end annotation


# instance fields
.field private final do:Ljava/util/concurrent/locks/Condition;

.field private final if:Lcom/google/common/util/concurrent/h$super;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/locks/Condition;Lcom/google/common/util/concurrent/h$super;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/common/util/concurrent/switch;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/common/util/concurrent/h$const;->do:Ljava/util/concurrent/locks/Condition;

    .line 3
    iput-object p2, p0, Lcom/google/common/util/concurrent/h$const;->if:Lcom/google/common/util/concurrent/h$super;

    return-void
.end method


# virtual methods
.method public do()Ljava/util/concurrent/locks/Condition;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/h$const;->do:Ljava/util/concurrent/locks/Condition;

    return-object v0
.end method
