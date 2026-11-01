.class public Landroid/support/v4/ph0;
.super Lcom/bumptech/glide/goto;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V
    .locals 0
    .param p1    # Lcom/bumptech/glide/Glide;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Lcom/bumptech/glide/manager/Lifecycle;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Lcom/bumptech/glide/manager/RequestManagerTreeNode;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/bumptech/glide/goto;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/manager/Lifecycle;Lcom/bumptech/glide/manager/RequestManagerTreeNode;Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;)Lcom/wsw/cospa/for;
    .locals 3
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ResourceType:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TResourceType;>;)",
            "Lcom/wsw/cospa/for<",
            "TResourceType;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/wsw/cospa/for;

    iget-object v1, p0, Lcom/bumptech/glide/goto;->do:Lcom/bumptech/glide/Glide;

    iget-object v2, p0, Lcom/bumptech/glide/goto;->if:Landroid/content/Context;

    invoke-direct {v0, v1, p0, p1, v2}, Lcom/wsw/cospa/for;-><init>(Lcom/bumptech/glide/Glide;Lcom/bumptech/glide/goto;Ljava/lang/Class;Landroid/content/Context;)V

    return-object v0
.end method

.method public b()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/goto;->new()Lcom/bumptech/glide/else;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public bridge synthetic break(Ljava/lang/Object;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->f(Ljava/lang/Object;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public c()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/goto;->try()Lcom/bumptech/glide/else;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public bridge synthetic case()Lcom/bumptech/glide/else;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/ph0;->d()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic catch()Lcom/bumptech/glide/else;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/ph0;->g()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic continue(Landroid/support/v4/dn1;)Lcom/bumptech/glide/goto;
    .locals 0
    .param p1    # Landroid/support/v4/dn1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->q(Landroid/support/v4/dn1;)Landroid/support/v4/ph0;

    move-result-object p1

    return-object p1
.end method

.method public d()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/goto;->case()Lcom/bumptech/glide/else;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public bridge synthetic do(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/goto;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->instanceof(Lcom/bumptech/glide/request/RequestListener;)Landroid/support/v4/ph0;

    move-result-object p1

    return-object p1
.end method

.method public e()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "Lcom/bumptech/glide/load/resource/gif/GifDrawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/goto;->else()Lcom/bumptech/glide/else;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public bridge synthetic else()Lcom/bumptech/glide/else;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/ph0;->e()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public f(Ljava/lang/Object;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/wsw/cospa/for<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->break(Ljava/lang/Object;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic for(Ljava/lang/Class;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Ljava/lang/Class;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->a(Ljava/lang/Class;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public g()Lcom/wsw/cospa/for;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/wsw/cospa/for<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/bumptech/glide/goto;->catch()Lcom/bumptech/glide/else;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/for;

    return-object v0
.end method

.method public h(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/wsw/cospa/for<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->throw(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public i(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/drawable/Drawable;",
            ")",
            "Lcom/wsw/cospa/for<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->while(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic if(Landroid/support/v4/dn1;)Lcom/bumptech/glide/goto;
    .locals 0
    .param p1    # Landroid/support/v4/dn1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->synchronized(Landroid/support/v4/dn1;)Landroid/support/v4/ph0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic import(Landroid/net/Uri;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->j(Landroid/net/Uri;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public instanceof(Lcom/bumptech/glide/request/RequestListener;)Landroid/support/v4/ph0;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bumptech/glide/request/RequestListener<",
            "Ljava/lang/Object;",
            ">;)",
            "Landroid/support/v4/ph0;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->do(Lcom/bumptech/glide/request/RequestListener;)Lcom/bumptech/glide/goto;

    move-result-object p1

    check-cast p1, Landroid/support/v4/ph0;

    return-object p1
.end method

.method public j(Landroid/net/Uri;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Lcom/wsw/cospa/for<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->import(Landroid/net/Uri;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public k(Ljava/io/File;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/wsw/cospa/for<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->native(Ljava/io/File;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public l(Ljava/lang/Integer;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Integer;",
            ")",
            "Lcom/wsw/cospa/for<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->public(Ljava/lang/Integer;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/Bitmap;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->h(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/graphics/drawable/Drawable;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->i(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Landroid/net/Uri;)Ljava/lang/Object;
    .locals 0
    .param p1    # Landroid/net/Uri;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->j(Landroid/net/Uri;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/io/File;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->k(Ljava/io/File;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Integer;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 5
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->l(Ljava/lang/Integer;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 6
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->m(Ljava/lang/Object;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 7
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->n(Ljava/lang/String;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load(Ljava/net/URL;)Ljava/lang/Object;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 8
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->o(Ljava/net/URL;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic load([B)Ljava/lang/Object;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 9
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->p([B)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/Object;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Lcom/wsw/cospa/for<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->return(Ljava/lang/Object;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public n(Ljava/lang/String;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/wsw/cospa/for<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->static(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic native(Ljava/io/File;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Ljava/io/File;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->k(Ljava/io/File;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic new()Lcom/bumptech/glide/else;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/ph0;->b()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public o(Ljava/net/URL;)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/wsw/cospa/for<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->switch(Ljava/net/URL;)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public p([B)Lcom/wsw/cospa/for;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Lcom/wsw/cospa/for<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->throws([B)Lcom/bumptech/glide/else;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/for;

    return-object p1
.end method

.method public bridge synthetic public(Ljava/lang/Integer;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Ljava/lang/Integer;
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation

        .annotation build Landroidx/annotation/Nullable;
        .end annotation

        .annotation build Landroidx/annotation/RawRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->l(Ljava/lang/Integer;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized q(Landroid/support/v4/dn1;)Landroid/support/v4/ph0;
    .locals 0
    .param p1    # Landroid/support/v4/dn1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->continue(Landroid/support/v4/dn1;)Lcom/bumptech/glide/goto;

    move-result-object p1

    check-cast p1, Landroid/support/v4/ph0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic return(Ljava/lang/Object;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->m(Ljava/lang/Object;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic static(Ljava/lang/String;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->n(Ljava/lang/String;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic switch(Ljava/net/URL;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Ljava/net/URL;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->o(Ljava/net/URL;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized synchronized(Landroid/support/v4/dn1;)Landroid/support/v4/ph0;
    .locals 0
    .param p1    # Landroid/support/v4/dn1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->if(Landroid/support/v4/dn1;)Lcom/bumptech/glide/goto;

    move-result-object p1

    check-cast p1, Landroid/support/v4/ph0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public bridge synthetic throw(Landroid/graphics/Bitmap;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Landroid/graphics/Bitmap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->h(Landroid/graphics/Bitmap;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic throws([B)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # [B
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->p([B)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic try()Lcom/bumptech/glide/else;
    .locals 1
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0}, Landroid/support/v4/ph0;->c()Lcom/wsw/cospa/for;

    move-result-object v0

    return-object v0
.end method

.method public volatile(Landroid/support/v4/dn1;)V
    .locals 1
    .param p1    # Landroid/support/v4/dn1;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/wsw/cospa/if;

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->volatile(Landroid/support/v4/dn1;)V

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lcom/wsw/cospa/if;

    invoke-direct {v0}, Lcom/wsw/cospa/if;-><init>()V

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/if;->w0(Lcom/bumptech/glide/request/do;)Lcom/wsw/cospa/if;

    move-result-object p1

    invoke-super {p0, p1}, Lcom/bumptech/glide/goto;->volatile(Landroid/support/v4/dn1;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic while(Landroid/graphics/drawable/Drawable;)Lcom/bumptech/glide/else;
    .locals 0
    .param p1    # Landroid/graphics/drawable/Drawable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/v4/ph0;->i(Landroid/graphics/drawable/Drawable;)Lcom/wsw/cospa/for;

    move-result-object p1

    return-object p1
.end method
