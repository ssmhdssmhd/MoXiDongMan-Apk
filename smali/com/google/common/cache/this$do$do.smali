.class Lcom/google/common/cache/this$do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/common/cache/this$do;->onRemoval(Landroid/support/v4/vm1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/vm1;

.field public final synthetic if:Lcom/google/common/cache/this$do;


# direct methods
.method public constructor <init>(Lcom/google/common/cache/this$do;Landroid/support/v4/vm1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/common/cache/this$do$do;->if:Lcom/google/common/cache/this$do;

    iput-object p2, p0, Lcom/google/common/cache/this$do$do;->do:Landroid/support/v4/vm1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/common/cache/this$do$do;->if:Lcom/google/common/cache/this$do;

    iget-object v0, v0, Lcom/google/common/cache/this$do;->if:Lcom/google/common/cache/RemovalListener;

    iget-object v1, p0, Lcom/google/common/cache/this$do$do;->do:Landroid/support/v4/vm1;

    invoke-interface {v0, v1}, Lcom/google/common/cache/RemovalListener;->onRemoval(Landroid/support/v4/vm1;)V

    return-void
.end method
