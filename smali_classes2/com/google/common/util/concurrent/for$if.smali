.class final Lcom/google/common/util/concurrent/for$if;
.super Lcom/google/common/util/concurrent/case;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/for;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "if"
.end annotation


# instance fields
.field public final synthetic throw:Lcom/google/common/util/concurrent/for;


# direct methods
.method private constructor <init>(Lcom/google/common/util/concurrent/for;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/for$if;->throw:Lcom/google/common/util/concurrent/for;

    invoke-direct {p0}, Lcom/google/common/util/concurrent/case;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/common/util/concurrent/for;Lcom/google/common/util/concurrent/for$do;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/google/common/util/concurrent/for$if;-><init>(Lcom/google/common/util/concurrent/for;)V

    return-void
.end method


# virtual methods
.method public final case()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/for$if;->throw:Lcom/google/common/util/concurrent/for;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/for;->if()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/for$if;->throw:Lcom/google/common/util/concurrent/for;

    invoke-static {v1}, Lcom/google/common/util/concurrent/for;->do(Lcom/google/common/util/concurrent/for;)Lcom/google/common/base/Supplier;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/implements;->while(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/for$if$if;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/for$if$if;-><init>(Lcom/google/common/util/concurrent/for$if;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/for$if;->throw:Lcom/google/common/util/concurrent/for;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/for;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final try()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/for$if;->throw:Lcom/google/common/util/concurrent/for;

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/for;->if()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/util/concurrent/for$if;->throw:Lcom/google/common/util/concurrent/for;

    invoke-static {v1}, Lcom/google/common/util/concurrent/for;->do(Lcom/google/common/util/concurrent/for;)Lcom/google/common/base/Supplier;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/util/concurrent/implements;->while(Ljava/util/concurrent/Executor;Lcom/google/common/base/Supplier;)Ljava/util/concurrent/Executor;

    move-result-object v0

    new-instance v1, Lcom/google/common/util/concurrent/for$if$do;

    invoke-direct {v1, p0}, Lcom/google/common/util/concurrent/for$if$do;-><init>(Lcom/google/common/util/concurrent/for$if;)V

    .line 2
    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
