.class Lcom/luck/picture/lib/PictureBaseActivity$if;
.super Lcom/luck/picture/lib/rxbus2/if$new;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PictureBaseActivity;->import(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/luck/picture/lib/rxbus2/if$new<",
        "Ljava/util/List<",
        "Lcom/luck/picture/lib/entity/LocalMedia;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Z

.field public final synthetic for:Ljava/util/List;

.field public final synthetic if:Z

.field public final synthetic new:Lcom/luck/picture/lib/PictureBaseActivity;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PictureBaseActivity;ZZLjava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->new:Lcom/luck/picture/lib/PictureBaseActivity;

    iput-boolean p2, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->do:Z

    iput-boolean p3, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->if:Z

    iput-object p4, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->for:Ljava/util/List;

    invoke-direct {p0}, Lcom/luck/picture/lib/rxbus2/if$new;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs case([Ljava/lang/Object;)Ljava/util/List;
    .locals 7
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation

    .line 1
    iget-boolean p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->do:Z

    if-eqz p1, :cond_5

    iget-boolean p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->if:Z

    if-nez p1, :cond_5

    .line 2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->for:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_4

    .line 3
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->for:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    if-eqz v1, :cond_3

    .line 4
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->break()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 6
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->do()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->public(Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->catch()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->if()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->public(Ljava/lang/String;)V

    goto :goto_1

    .line 9
    :cond_2
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->new:Lcom/luck/picture/lib/PictureBaseActivity;

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/luck/picture/lib/tools/do;->const(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    .line 10
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/rd1;->new(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->new:Lcom/luck/picture/lib/PictureBaseActivity;

    invoke-virtual {v3}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 13
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 14
    invoke-static {v3, v4}, Landroid/support/v4/v9;->do(Landroid/content/Context;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 15
    invoke-static {v3, v2}, Landroid/support/v4/v9;->if(Landroid/graphics/Bitmap;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->public(Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 17
    :cond_4
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->for:Ljava/util/List;

    return-object p1

    .line 18
    :cond_5
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->for:Ljava/util/List;

    return-object p1
.end method

.method public bridge synthetic do([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity$if;->case([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public else(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-super {p0, p1}, Lcom/luck/picture/lib/rxbus2/if$new;->try(Ljava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->new:Lcom/luck/picture/lib/PictureBaseActivity;

    invoke-virtual {v0}, Lcom/luck/picture/lib/PictureBaseActivity;->case()V

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->new:Lcom/luck/picture/lib/PictureBaseActivity;

    iget-object v1, v0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->if:Z

    if-eqz v2, :cond_1

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v0, v0, Lcom/luck/picture/lib/PictureBaseActivity;->class:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->new:Lcom/luck/picture/lib/PictureBaseActivity;

    iget-object v1, v1, Lcom/luck/picture/lib/PictureBaseActivity;->class:Ljava/util/List;

    invoke-interface {p1, v0, v1}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 5
    :cond_1
    invoke-static {p1}, Lcom/luck/picture/lib/if;->const(Ljava/util/List;)Landroid/content/Intent;

    move-result-object p1

    .line 6
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->new:Lcom/luck/picture/lib/PictureBaseActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, v1, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity$if;->new:Lcom/luck/picture/lib/PictureBaseActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/PictureBaseActivity;->for()V

    return-void
.end method

.method public bridge synthetic try(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity$if;->else(Ljava/util/List;)V

    return-void
.end method
