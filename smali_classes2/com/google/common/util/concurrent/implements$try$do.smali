.class Lcom/google/common/util/concurrent/implements$try$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/util/concurrent/implements$try;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Runnable;

.field public final synthetic if:Lcom/google/common/util/concurrent/implements$try;


# direct methods
.method public constructor <init>(Lcom/google/common/util/concurrent/implements$try;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/util/concurrent/implements$try$do;->if:Lcom/google/common/util/concurrent/implements$try;

    iput-object p2, p0, Lcom/google/common/util/concurrent/implements$try$do;->do:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/util/concurrent/implements$try$do;->if:Lcom/google/common/util/concurrent/implements$try;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/google/common/util/concurrent/implements$try;->do:Z

    .line 2
    iget-object v0, p0, Lcom/google/common/util/concurrent/implements$try$do;->do:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
