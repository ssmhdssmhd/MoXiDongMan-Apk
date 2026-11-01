.class final Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;
.super Lcom/bumptech/glide/GeneratedAppGlideModule;
.source "SourceFile"


# instance fields
.field private final do:Lcom/wsw/cospa/AppGlideModuleConfig;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/GeneratedAppGlideModule;-><init>()V

    .line 2
    new-instance p1, Lcom/wsw/cospa/AppGlideModuleConfig;

    invoke-direct {p1}, Lcom/wsw/cospa/AppGlideModuleConfig;-><init>()V

    iput-object p1, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->do:Lcom/wsw/cospa/AppGlideModuleConfig;

    const-string p1, "Glide"

    const/4 v0, 0x3

    .line 3
    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/if;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->do:Lcom/wsw/cospa/AppGlideModuleConfig;

    invoke-virtual {v0, p1, p2}, Lcom/wsw/cospa/AppGlideModuleConfig;->applyOptions(Landroid/content/Context;Lcom/bumptech/glide/if;)V

    return-void
.end method

.method public do()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->do:Lcom/wsw/cospa/AppGlideModuleConfig;

    invoke-virtual {v0}, Lcom/bumptech/glide/module/do;->do()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic for()Lcom/bumptech/glide/manager/RequestManagerRetriever$RequestManagerFactory;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->new()Lcom/bumptech/glide/do;

    move-result-object v0

    return-object v0
.end method

.method public if()Ljava/util/Set;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    .line 1
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public new()Lcom/bumptech/glide/do;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    new-instance v0, Lcom/bumptech/glide/do;

    invoke-direct {v0}, Lcom/bumptech/glide/do;-><init>()V

    return-object v0
.end method

.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/case;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/Glide;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/case;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Landroid/support/v4/sf1;

    invoke-direct {v0}, Landroid/support/v4/sf1;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/sf1;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/case;)V

    .line 2
    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/do;

    invoke-direct {v0}, Lcom/bumptech/glide/integration/okhttp3/do;-><init>()V

    invoke-virtual {v0, p1, p2, p3}, Lcom/bumptech/glide/integration/okhttp3/do;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/case;)V

    .line 3
    iget-object v0, p0, Lcom/bumptech/glide/GeneratedAppGlideModuleImpl;->do:Lcom/wsw/cospa/AppGlideModuleConfig;

    invoke-virtual {v0, p1, p2, p3}, Lcom/wsw/cospa/AppGlideModuleConfig;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/case;)V

    return-void
.end method
