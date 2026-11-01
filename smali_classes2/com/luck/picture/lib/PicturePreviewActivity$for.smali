.class Lcom/luck/picture/lib/PicturePreviewActivity$for;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


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
    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$for;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/luck/picture/lib/PicturePreviewActivity$for;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v0, p2, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->b:Z

    invoke-static {p2, v0, p1, p3}, Lcom/luck/picture/lib/PicturePreviewActivity;->implements(Lcom/luck/picture/lib/PicturePreviewActivity;ZII)V

    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$for;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->synchronized(Lcom/luck/picture/lib/PicturePreviewActivity;I)I

    .line 2
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$for;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->private(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$for;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v1}, Lcom/luck/picture/lib/PicturePreviewActivity;->instanceof(Lcom/luck/picture/lib/PicturePreviewActivity;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$for;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v1}, Lcom/luck/picture/lib/PicturePreviewActivity;->finally(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$for;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->finally(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$for;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->instanceof(Lcom/luck/picture/lib/PicturePreviewActivity;)I

    move-result v0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 4
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$for;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->goto()I

    move-result v1

    invoke-static {v0, v1}, Lcom/luck/picture/lib/PicturePreviewActivity;->abstract(Lcom/luck/picture/lib/PicturePreviewActivity;I)I

    .line 5
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$for;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v1, v0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v2, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->b:Z

    if-nez v2, :cond_1

    .line 6
    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->continue:Z

    if-eqz v1, :cond_0

    .line 7
    invoke-static {v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->strictfp(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->try()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity$for;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {v0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->transient(Lcom/luck/picture/lib/PicturePreviewActivity;Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity$for;->do:Lcom/luck/picture/lib/PicturePreviewActivity;

    invoke-static {p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->instanceof(Lcom/luck/picture/lib/PicturePreviewActivity;)I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->f(I)V

    :cond_1
    return-void
.end method
