.class public Landroid/support/v4/ok0$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoaderFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/ok0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "do"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoaderFactory<",
        "Lcom/bumptech/glide/load/model/if;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# instance fields
.field private final do:Lcom/bumptech/glide/load/model/try;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/model/try<",
            "Lcom/bumptech/glide/load/model/if;",
            "Lcom/bumptech/glide/load/model/if;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/bumptech/glide/load/model/try;

    const-wide/16 v1, 0x1f4

    invoke-direct {v0, v1, v2}, Lcom/bumptech/glide/load/model/try;-><init>(J)V

    iput-object v0, p0, Landroid/support/v4/ok0$do;->do:Lcom/bumptech/glide/load/model/try;

    return-void
.end method


# virtual methods
.method public build(Lcom/bumptech/glide/load/model/goto;)Lcom/bumptech/glide/load/model/ModelLoader;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/goto;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader<",
            "Lcom/bumptech/glide/load/model/if;",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/support/v4/ok0;

    iget-object v0, p0, Landroid/support/v4/ok0$do;->do:Lcom/bumptech/glide/load/model/try;

    invoke-direct {p1, v0}, Landroid/support/v4/ok0;-><init>(Lcom/bumptech/glide/load/model/try;)V

    return-object p1
.end method

.method public teardown()V
    .locals 0

    return-void
.end method
