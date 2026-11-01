.class Lcc/shinichi/library/view/ImagePreviewActivity$do;
.super Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/shinichi/library/view/ImagePreviewActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcc/shinichi/library/view/ImagePreviewActivity;


# direct methods
.method public constructor <init>(Lcc/shinichi/library/view/ImagePreviewActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-direct {p0}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageScrollStateChanged(I)V

    .line 2
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->for()Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->for()Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;->onPageScrollStateChanged(I)V

    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageScrolled(IFI)V

    .line 2
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->for()Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lcc/shinichi/library/do;->for()Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;

    move-result-object v0

    .line 5
    invoke-interface {v0, p1, p2, p3}, Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;->onPageScrolled(IFI)V

    :cond_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/viewpager/widget/ViewPager$SimpleOnPageChangeListener;->onPageSelected(I)V

    .line 2
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->for()Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->for()Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;->onPageSelected(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {v0, p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->if(Lcc/shinichi/library/view/ImagePreviewActivity;I)I

    .line 5
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {v0}, Lcc/shinichi/library/view/ImagePreviewActivity;->case(Lcc/shinichi/library/view/ImagePreviewActivity;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/tl0;

    invoke-virtual {p1}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->try(Lcc/shinichi/library/view/ImagePreviewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    iget-object v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {v1}, Lcc/shinichi/library/view/ImagePreviewActivity;->do(Lcc/shinichi/library/view/ImagePreviewActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcc/shinichi/library/do;->throws(I)Z

    move-result v0

    invoke-static {p1, v0}, Lcc/shinichi/library/view/ImagePreviewActivity;->goto(Lcc/shinichi/library/view/ImagePreviewActivity;Z)Z

    .line 7
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->else(Lcc/shinichi/library/view/ImagePreviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 8
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->for(Lcc/shinichi/library/view/ImagePreviewActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcc/shinichi/library/view/ImagePreviewActivity;->this(Lcc/shinichi/library/view/ImagePreviewActivity;Ljava/lang/String;)Z

    goto :goto_0

    .line 9
    :cond_1
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->break(Lcc/shinichi/library/view/ImagePreviewActivity;)V

    .line 10
    :goto_0
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->catch(Lcc/shinichi/library/view/ImagePreviewActivity;)Landroid/widget/TextView;

    move-result-object p1

    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    sget v1, Lcc/shinichi/library/R$string;->indicator:I

    .line 11
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {v3}, Lcc/shinichi/library/view/ImagePreviewActivity;->do(Lcc/shinichi/library/view/ImagePreviewActivity;)I

    move-result v3

    const/4 v4, 0x1

    add-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x0

    aput-object v2, v1, v5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {v3}, Lcc/shinichi/library/view/ImagePreviewActivity;->case(Lcc/shinichi/library/view/ImagePreviewActivity;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 12
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->class(Lcc/shinichi/library/view/ImagePreviewActivity;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 14
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->const(Lcc/shinichi/library/view/ImagePreviewActivity;)Landroid/widget/FrameLayout;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity$do;->do:Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-static {p1, v5}, Lcc/shinichi/library/view/ImagePreviewActivity;->super(Lcc/shinichi/library/view/ImagePreviewActivity;I)I

    :cond_2
    return-void
.end method
