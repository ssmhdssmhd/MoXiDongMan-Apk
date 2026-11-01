.class public Lcom/bumptech/glide/gifdecoder/if;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final final:I = 0x0

.field public static final super:I = -0x1


# instance fields
.field public break:I

.field public case:I

.field public catch:I

.field public class:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public const:I

.field public do:[I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field public else:I

.field public for:I

.field public goto:Z

.field public if:I

.field public new:Lcom/bumptech/glide/gifdecoder/do;

.field public this:I

.field public final try:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/bumptech/glide/gifdecoder/do;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/if;->do:[I

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/if;->if:I

    .line 4
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/if;->for:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/bumptech/glide/gifdecoder/if;->try:Ljava/util/List;

    const/4 v0, -0x1

    .line 6
    iput v0, p0, Lcom/bumptech/glide/gifdecoder/if;->const:I

    return-void
.end method


# virtual methods
.method public do()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/if;->else:I

    return v0
.end method

.method public for()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/if;->if:I

    return v0
.end method

.method public if()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/if;->for:I

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/bumptech/glide/gifdecoder/if;->case:I

    return v0
.end method
