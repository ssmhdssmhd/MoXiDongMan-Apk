.class public Landroid/support/v4/sf1;
.super Lcom/bumptech/glide/module/if;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/nh0;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/module/if;-><init>()V

    return-void
.end method


# virtual methods
.method public registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/case;)V
    .locals 2
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
    invoke-super {p0, p1, p2, p3}, Lcom/bumptech/glide/module/if;->registerComponents(Landroid/content/Context;Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/case;)V

    .line 2
    const-class p1, Lcom/bumptech/glide/load/model/if;

    const-class p2, Ljava/io/InputStream;

    new-instance v0, Lcom/bumptech/glide/integration/okhttp3/if$do;

    .line 3
    invoke-static {}, Lcc/shinichi/library/glide/sunfusheng/progress/do;->for()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bumptech/glide/integration/okhttp3/if$do;-><init>(Lokhttp3/Call$Factory;)V

    .line 4
    invoke-virtual {p3, p1, p2, v0}, Lcom/bumptech/glide/case;->default(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/case;

    return-void
.end method
