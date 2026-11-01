.class Lcom/google/common/util/concurrent/protected$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/protected$do;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/google/common/util/concurrent/protected$do;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/protected$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/protected$do$do;->do:Lcom/google/common/util/concurrent/protected$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/protected$do$do;->do:Lcom/google/common/util/concurrent/protected$do;

    invoke-static {v0}, Lcom/google/common/util/concurrent/protected$do;->if(Lcom/google/common/util/concurrent/protected$do;)Ljava/util/concurrent/Future;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/util/concurrent/m;->new(Ljava/util/concurrent/Future;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2
    :catchall_0
    iget-object v0, p0, Lcom/google/common/util/concurrent/protected$do$do;->do:Lcom/google/common/util/concurrent/protected$do;

    invoke-static {v0}, Lcom/google/common/util/concurrent/protected$do;->for(Lcom/google/common/util/concurrent/protected$do;)Lcom/google/common/util/concurrent/while;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/while;->if()V

    return-void
.end method
