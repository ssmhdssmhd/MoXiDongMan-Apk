.class Lcom/bumptech/glide/if$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/Glide$RequestOptionsFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bumptech/glide/if;->else(Landroid/support/v4/dn1;)Lcom/bumptech/glide/if;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Landroid/support/v4/dn1;

.field public final synthetic if:Lcom/bumptech/glide/if;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/if;Landroid/support/v4/dn1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/bumptech/glide/if$if;->if:Lcom/bumptech/glide/if;

    iput-object p2, p0, Lcom/bumptech/glide/if$if;->do:Landroid/support/v4/dn1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/support/v4/dn1;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/bumptech/glide/if$if;->do:Landroid/support/v4/dn1;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Landroid/support/v4/dn1;

    invoke-direct {v0}, Landroid/support/v4/dn1;-><init>()V

    :goto_0
    return-object v0
.end method
