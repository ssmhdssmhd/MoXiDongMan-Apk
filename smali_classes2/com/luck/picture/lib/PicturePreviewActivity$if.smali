.class Lcom/luck/picture/lib/PicturePreviewActivity$if;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/luck/picture/lib/PicturePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/luck/picture/lib/PicturePreviewActivity;


# direct methods
.method public constructor <init>(Lcom/luck/picture/lib/PicturePreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->finally(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->finally(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 2
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->finally(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->package(Lcom/luck/picture/lib/PicturePreviewActivity;)Lcom/luck/picture/lib/widget/PreviewViewPager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->continue(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    .line 4
    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->continue(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->else()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 5
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->else()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/support/v4/rd1;->const(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, p1, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_rule:I

    invoke-virtual {p1, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/u72;->do(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->strictfp(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/TextView;->isSelected()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 9
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->strictfp(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setSelected(Z)V

    .line 10
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->strictfp(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v3}, Lcom/luck/picture/lib/PicturePreviewActivity;->volatile(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    const/4 v0, 0x1

    goto :goto_1

    .line 11
    :cond_2
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->strictfp(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setSelected(Z)V

    const/4 v0, 0x0

    .line 12
    :goto_1
    iget-object v3, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v3}, Lcom/luck/picture/lib/PicturePreviewActivity;->continue(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v5, v4, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v6, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->goto:I

    if-lt v3, v6, :cond_3

    if-eqz v0, :cond_3

    .line 13
    iget-object p1, v4, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_message_max_num:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v4, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/support/v4/u72;->do(Landroid/content/Context;Ljava/lang/String;)V

    .line 14
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->strictfp(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    return-void

    :cond_3
    if-eqz v0, :cond_5

    .line 15
    iget-object v0, v4, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    iget-boolean v1, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->strictfp:Z

    invoke-static {v0, v1}, Lcom/luck/picture/lib/tools/if;->for(Landroid/content/Context;Z)V

    .line 16
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v1, v0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    if-ne v1, v2, :cond_4

    .line 17
    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->interface(Lcom/luck/picture/lib/PicturePreviewActivity;)V

    .line 18
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->continue(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->continue(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/entity/LocalMedia;->native(I)V

    .line 20
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v1, v0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->continue:Z

    if-eqz v1, :cond_7

    .line 21
    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->strictfp(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->try()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 22
    :cond_5
    invoke-static {v4}, Lcom/luck/picture/lib/PicturePreviewActivity;->continue(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 23
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 24
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->continue(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 25
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->protected(Lcom/luck/picture/lib/PicturePreviewActivity;)V

    .line 26
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1, v1}, Lcom/luck/picture/lib/PicturePreviewActivity;->transient(Lcom/luck/picture/lib/PicturePreviewActivity;Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 27
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$if;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-virtual {p1, v2}, Lcom/luck/picture/lib/PicturePreviewActivity;->g(Z)V

    :cond_8
    return-void
.end method
