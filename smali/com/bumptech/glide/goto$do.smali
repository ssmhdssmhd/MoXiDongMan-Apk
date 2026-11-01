.class Lcom/bumptech/glide/goto$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/goto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/bumptech/glide/goto;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/goto;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/goto$do;->do:Lcom/bumptech/glide/goto;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/goto$do;->do:Lcom/bumptech/glide/goto;

    iget-object v1, v0, Lcom/bumptech/glide/goto;->for:Lcom/bumptech/glide/manager/Lifecycle;

    invoke-interface {v1, v0}, Lcom/bumptech/glide/manager/Lifecycle;->addListener(Lcom/bumptech/glide/manager/LifecycleListener;)V

    return-void
.end method
