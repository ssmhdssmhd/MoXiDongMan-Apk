.class Lcom/google/common/eventbus/new$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/eventbus/new;->try(Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Ljava/lang/Object;

.field public final synthetic if:Lcom/google/common/eventbus/new;


# direct methods
.method public constructor <init>(Lcom/google/common/eventbus/new;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/eventbus/new$do;->if:Lcom/google/common/eventbus/new;

    iput-object p2, p0, Lcom/google/common/eventbus/new$do;->do:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/common/eventbus/new$do;->if:Lcom/google/common/eventbus/new;

    iget-object v1, p0, Lcom/google/common/eventbus/new$do;->do:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lcom/google/common/eventbus/new;->case(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    iget-object v1, p0, Lcom/google/common/eventbus/new$do;->if:Lcom/google/common/eventbus/new;

    invoke-static {v1}, Lcom/google/common/eventbus/new;->if(Lcom/google/common/eventbus/new;)Lcom/google/common/eventbus/for;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/eventbus/new$do;->if:Lcom/google/common/eventbus/new;

    iget-object v3, p0, Lcom/google/common/eventbus/new$do;->do:Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/google/common/eventbus/new;->do(Lcom/google/common/eventbus/new;Ljava/lang/Object;)Landroid/support/v4/a32;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Lcom/google/common/eventbus/for;->if(Ljava/lang/Throwable;Landroid/support/v4/a32;)V

    :goto_0
    return-void
.end method
