.class public abstract Lcom/bumptech/glide/module/do;
.super Lcom/bumptech/glide/module/if;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/module/AppliesOptions;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/bumptech/glide/module/if;-><init>()V

    return-void
.end method


# virtual methods
.method public applyOptions(Landroid/content/Context;Lcom/bumptech/glide/if;)V
    .locals 0
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/if;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    return-void
.end method

.method public do()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
