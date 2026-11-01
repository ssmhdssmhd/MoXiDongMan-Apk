.class public Landroid/support/v4/ok0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/model/ModelLoader;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/ok0$do;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/load/model/ModelLoader<",
        "Lcom/bumptech/glide/load/model/if;",
        "Ljava/io/InputStream;",
        ">;"
    }
.end annotation


# static fields
.field public static final if:Lcom/bumptech/glide/load/Option;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bumptech/glide/load/Option<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final do:Lcom/bumptech/glide/load/model/try;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

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
.method public static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x9c4

    .line 1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout"

    invoke-static {v1, v0}, Lcom/bumptech/glide/load/Option;->else(Ljava/lang/String;Ljava/lang/Object;)Lcom/bumptech/glide/load/Option;

    move-result-object v0

    sput-object v0, Landroid/support/v4/ok0;->if:Lcom/bumptech/glide/load/Option;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Landroid/support/v4/ok0;-><init>(Lcom/bumptech/glide/load/model/try;)V

    return-void
.end method

.method public constructor <init>(Lcom/bumptech/glide/load/model/try;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/model/try;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/try<",
            "Lcom/bumptech/glide/load/model/if;",
            "Lcom/bumptech/glide/load/model/if;",
            ">;)V"
        }
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/support/v4/ok0;->do:Lcom/bumptech/glide/load/model/try;

    return-void
.end method


# virtual methods
.method public bridge synthetic buildLoadData(Ljava/lang/Object;IILandroid/support/v4/f81;)Lcom/bumptech/glide/load/model/ModelLoader$do;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v4/f81;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/model/if;

    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/support/v4/ok0;->do(Lcom/bumptech/glide/load/model/if;IILandroid/support/v4/f81;)Lcom/bumptech/glide/load/model/ModelLoader$do;

    move-result-object p1

    return-object p1
.end method

.method public do(Lcom/bumptech/glide/load/model/if;IILandroid/support/v4/f81;)Lcom/bumptech/glide/load/model/ModelLoader$do;
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/model/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/support/v4/f81;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/load/model/if;",
            "II",
            "Landroid/support/v4/f81;",
            ")",
            "Lcom/bumptech/glide/load/model/ModelLoader$do<",
            "Ljava/io/InputStream;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Landroid/support/v4/ok0;->do:Lcom/bumptech/glide/load/model/try;

    if-eqz p2, :cond_1

    const/4 p3, 0x0

    .line 2
    invoke-virtual {p2, p1, p3, p3}, Lcom/bumptech/glide/load/model/try;->if(Ljava/lang/Object;II)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/bumptech/glide/load/model/if;

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, Landroid/support/v4/ok0;->do:Lcom/bumptech/glide/load/model/try;

    invoke-virtual {p2, p1, p3, p3, p1}, Lcom/bumptech/glide/load/model/try;->for(Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    move-object p1, p2

    .line 4
    :cond_1
    :goto_0
    sget-object p2, Landroid/support/v4/ok0;->if:Lcom/bumptech/glide/load/Option;

    invoke-virtual {p4, p2}, Landroid/support/v4/f81;->do(Lcom/bumptech/glide/load/Option;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 5
    new-instance p3, Lcom/bumptech/glide/load/model/ModelLoader$do;

    new-instance p4, Lcom/bumptech/glide/load/data/HttpUrlFetcher;

    invoke-direct {p4, p1, p2}, Lcom/bumptech/glide/load/data/HttpUrlFetcher;-><init>(Lcom/bumptech/glide/load/model/if;I)V

    invoke-direct {p3, p1, p4}, Lcom/bumptech/glide/load/model/ModelLoader$do;-><init>(Lcom/bumptech/glide/load/Key;Lcom/bumptech/glide/load/data/DataFetcher;)V

    return-object p3
.end method

.method public bridge synthetic handles(Ljava/lang/Object;)Z
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    check-cast p1, Lcom/bumptech/glide/load/model/if;

    invoke-virtual {p0, p1}, Landroid/support/v4/ok0;->if(Lcom/bumptech/glide/load/model/if;)Z

    move-result p1

    return p1
.end method

.method public if(Lcom/bumptech/glide/load/model/if;)Z
    .locals 0
    .param p1    # Lcom/bumptech/glide/load/model/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 p1, 0x1

    return p1
.end method
