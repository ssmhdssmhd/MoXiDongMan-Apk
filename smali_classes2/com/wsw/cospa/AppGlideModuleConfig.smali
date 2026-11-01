.class public Lcom/wsw/cospa/AppGlideModuleConfig;
.super Lcom/bumptech/glide/module/do;
.source "SourceFile"


# annotations
.annotation build Landroid/support/v4/nh0;
.end annotation


# instance fields
.field public do:I

.field public if:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/module/do;-><init>()V

    const/high16 v0, 0xc800000

    .line 2
    iput v0, p0, Lcom/wsw/cospa/AppGlideModuleConfig;->do:I

    .line 3
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J

    move-result-wide v0

    long-to-int v1, v0

    div-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/wsw/cospa/AppGlideModuleConfig;->if:I

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/if;)V
    .locals 4

    .line 1
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/case;

    iget v1, p0, Lcom/wsw/cospa/AppGlideModuleConfig;->do:I

    int-to-long v1, v1

    invoke-direct {v0, p1, v1, v2}, Lcom/bumptech/glide/load/engine/cache/case;-><init>(Landroid/content/Context;J)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/if;->break(Lcom/bumptech/glide/load/engine/cache/DiskCache$Factory;)Lcom/bumptech/glide/if;

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$do;

    invoke-direct {v0, p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$do;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator$do;->do()Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->new()I

    move-result v0

    .line 4
    invoke-virtual {p1}, Lcom/bumptech/glide/load/engine/cache/MemorySizeCalculator;->if()I

    move-result p1

    .line 5
    new-instance v1, Lcom/bumptech/glide/load/engine/cache/else;

    int-to-long v2, v0

    invoke-direct {v1, v2, v3}, Lcom/bumptech/glide/load/engine/cache/else;-><init>(J)V

    invoke-virtual {p2, v1}, Lcom/bumptech/glide/if;->while(Lcom/bumptech/glide/load/engine/cache/MemoryCache;)Lcom/bumptech/glide/if;

    .line 6
    new-instance v0, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    invoke-virtual {p2, v0}, Lcom/bumptech/glide/if;->try(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/if;

    .line 7
    new-instance p1, Lcom/bumptech/glide/load/engine/cache/else;

    iget v0, p0, Lcom/wsw/cospa/AppGlideModuleConfig;->if:I

    int-to-long v0, v0

    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/load/engine/cache/else;-><init>(J)V

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/if;->while(Lcom/bumptech/glide/load/engine/cache/MemoryCache;)Lcom/bumptech/glide/if;

    .line 8
    new-instance p1, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;

    iget v0, p0, Lcom/wsw/cospa/AppGlideModuleConfig;->if:I

    int-to-long v0, v0

    invoke-direct {p1, v0, v1}, Lcom/bumptech/glide/load/engine/bitmap_recycle/LruBitmapPool;-><init>(J)V

    invoke-virtual {p2, p1}, Lcom/bumptech/glide/if;->try(Lcom/bumptech/glide/load/engine/bitmap_recycle/BitmapPool;)Lcom/bumptech/glide/if;

    return-void
.end method

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
    invoke-static {}, Lcom/wsw/cospa/utils/volatile;->else()Lokhttp3/OkHttpClient$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    .line 2
    const-class p2, Lcom/bumptech/glide/load/model/if;

    const-class v0, Ljava/io/InputStream;

    new-instance v1, Lcom/bumptech/glide/integration/okhttp3/if$do;

    invoke-direct {v1, p1}, Lcom/bumptech/glide/integration/okhttp3/if$do;-><init>(Lokhttp3/Call$Factory;)V

    invoke-virtual {p3, p2, v0, v1}, Lcom/bumptech/glide/case;->default(Ljava/lang/Class;Ljava/lang/Class;Lcom/bumptech/glide/load/model/ModelLoaderFactory;)Lcom/bumptech/glide/case;

    return-void
.end method
