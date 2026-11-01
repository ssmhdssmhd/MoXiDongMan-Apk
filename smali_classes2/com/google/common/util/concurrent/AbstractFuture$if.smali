.class abstract Lcom/google/common/util/concurrent/AbstractFuture$if;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/AbstractFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "if"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/AbstractFuture$do;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcom/google/common/util/concurrent/AbstractFuture$if;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract do(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$try;Lcom/google/common/util/concurrent/AbstractFuture$try;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/AbstractFuture$try;",
            "Lcom/google/common/util/concurrent/AbstractFuture$try;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract for(Lcom/google/common/util/concurrent/AbstractFuture;Lcom/google/common/util/concurrent/AbstractFuture$catch;Lcom/google/common/util/concurrent/AbstractFuture$catch;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Lcom/google/common/util/concurrent/AbstractFuture$catch;",
            "Lcom/google/common/util/concurrent/AbstractFuture$catch;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract if(Lcom/google/common/util/concurrent/AbstractFuture;Ljava/lang/Object;Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/util/concurrent/AbstractFuture<",
            "*>;",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ")Z"
        }
    .end annotation
.end method

.method public abstract new(Lcom/google/common/util/concurrent/AbstractFuture$catch;Lcom/google/common/util/concurrent/AbstractFuture$catch;)V
.end method

.method public abstract try(Lcom/google/common/util/concurrent/AbstractFuture$catch;Ljava/lang/Thread;)V
.end method
