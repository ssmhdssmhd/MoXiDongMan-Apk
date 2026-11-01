.class Lcom/bumptech/glide/load/engine/import$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/data/DataFetcher$DataCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/load/engine/import;->case(Lcom/bumptech/glide/load/model/ModelLoader$do;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/data/DataFetcher$DataCallback<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/bumptech/glide/load/model/ModelLoader$do;

.field public final synthetic if:Lcom/bumptech/glide/load/engine/import;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/engine/import;Lcom/bumptech/glide/load/model/ModelLoader$do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/load/engine/import$do;->if:Lcom/bumptech/glide/load/engine/import;

    iput-object p2, p0, Lcom/bumptech/glide/load/engine/import$do;->do:Lcom/bumptech/glide/load/model/ModelLoader$do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDataReady(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import$do;->if:Lcom/bumptech/glide/load/engine/import;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/import$do;->do:Lcom/bumptech/glide/load/model/ModelLoader$do;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/import;->for(Lcom/bumptech/glide/load/model/ModelLoader$do;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import$do;->if:Lcom/bumptech/glide/load/engine/import;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/import$do;->do:Lcom/bumptech/glide/load/model/ModelLoader$do;

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/import;->new(Lcom/bumptech/glide/load/model/ModelLoader$do;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public onLoadFailed(Ljava/lang/Exception;)V
    .locals 2
    .param p1    # Ljava/lang/Exception;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import$do;->if:Lcom/bumptech/glide/load/engine/import;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/import$do;->do:Lcom/bumptech/glide/load/model/ModelLoader$do;

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/load/engine/import;->for(Lcom/bumptech/glide/load/model/ModelLoader$do;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/bumptech/glide/load/engine/import$do;->if:Lcom/bumptech/glide/load/engine/import;

    iget-object v1, p0, Lcom/bumptech/glide/load/engine/import$do;->do:Lcom/bumptech/glide/load/model/ModelLoader$do;

    invoke-virtual {v0, v1, p1}, Lcom/bumptech/glide/load/engine/import;->try(Lcom/bumptech/glide/load/model/ModelLoader$do;Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method
