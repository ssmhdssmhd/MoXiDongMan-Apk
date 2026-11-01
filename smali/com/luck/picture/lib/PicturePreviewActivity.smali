.class public Lcom/luck/picture/lib/PicturePreviewActivity;
.super Lcom/luck/picture/lib/PictureBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.implements Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;


# instance fields
.field private const:Landroid/widget/ImageView;

.field private default:Landroid/view/animation/Animation;

.field private extends:Z

.field private final:Landroid/widget/TextView;

.field private finally:I

.field private import:Landroid/widget/LinearLayout;

.field private native:I

.field private package:I

.field private private:Landroid/os/Handler;

.field private public:Landroid/widget/LinearLayout;

.field private return:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private static:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private super:Landroid/widget/TextView;

.field private switch:Landroid/widget/TextView;

.field private throw:Landroid/widget/TextView;

.field private throws:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

.field private while:Lcom/luck/picture/lib/widget/PreviewViewPager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->return:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    return-void
.end method

.method public static synthetic abstract(Lcom/luck/picture/lib/PicturePreviewActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->finally:I

    return p1
.end method

.method private b()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->super:Landroid/widget/TextView;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget v2, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->native:I

    const/4 v3, 0x1

    add-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->return:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    new-instance v0, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->return:Ljava/util/List;

    invoke-direct {v0, v1, p0, p0}, Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;-><init>(Ljava/util/List;Landroid/content/Context;Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter$OnCallBackActivity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->throws:Lcom/luck/picture/lib/adapter/SimpleFragmentAdapter;

    .line 3
    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->while:Lcom/luck/picture/lib/widget/PreviewViewPager;

    invoke-virtual {v1, v0}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 4
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->while:Lcom/luck/picture/lib/widget/PreviewViewPager;

    iget v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->native:I

    invoke-virtual {v0, v1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    const/4 v0, 0x0

    .line 5
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->g(Z)V

    .line 6
    iget v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->native:I

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->f(I)V

    .line 7
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->return:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->return:Ljava/util/List;

    iget v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->native:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 9
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->goto()I

    move-result v1

    iput v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->finally:I

    .line 10
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->continue:Z

    if-eqz v1, :cond_0

    .line 11
    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->final:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->switch:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->try()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-direct {p0, v0}, Lcom/luck/picture/lib/PicturePreviewActivity;->e(Lcom/luck/picture/lib/entity/LocalMedia;)V

    :cond_0
    return-void
.end method

.method private c(ZII)V
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->return:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->return:Ljava/util/List;

    if-eqz p1, :cond_1

    .line 2
    iget v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->package:I

    div-int/lit8 v0, v0, 0x2

    const-string v1, ""

    if-ge p3, v0, :cond_0

    .line 3
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 4
    iget-object p3, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->switch:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->d(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 5
    iget-object p3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p3, p3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->continue:Z

    if-eqz p3, :cond_1

    .line 6
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->try()I

    move-result p3

    .line 7
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->switch:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->e(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 9
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PicturePreviewActivity;->f(I)V

    goto :goto_0

    :cond_0
    add-int/lit8 p2, p2, 0x1

    .line 10
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 11
    iget-object p3, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->switch:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->d(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    iget-object p3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p3, p3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->continue:Z

    if-eqz p3, :cond_1

    .line 13
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->try()I

    move-result p3

    .line 14
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->switch:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 15
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->e(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 16
    invoke-virtual {p0, p2}, Lcom/luck/picture/lib/PicturePreviewActivity;->f(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic continue(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    return-object p0
.end method

.method private e(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->continue:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->switch:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 4
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->try()I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->native(I)V

    .line 6
    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->switch:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->try()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static synthetic finally(Lcom/luck/picture/lib/PicturePreviewActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->return:Ljava/util/List;

    return-object p0
.end method

.method private h()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 4
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/do;->else()Lcom/luck/picture/lib/rxbus2/do;

    move-result-object v1

    new-instance v2, Lcom/luck/picture/lib/entity/EventEntity;

    const/16 v3, 0xad6

    iget-object v4, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    .line 5
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->goto()I

    move-result v0

    invoke-direct {v2, v3, v4, v0}, Lcom/luck/picture/lib/entity/EventEntity;-><init>(ILjava/util/List;I)V

    .line 6
    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/rxbus2/do;->this(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method private i()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 2
    iget-object v2, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/luck/picture/lib/entity/LocalMedia;

    add-int/lit8 v1, v1, 0x1

    .line 3
    invoke-virtual {v2, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->native(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static synthetic implements(Lcom/luck/picture/lib/PicturePreviewActivity;ZII)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/luck/picture/lib/PicturePreviewActivity;->c(ZII)V

    return-void
.end method

.method public static synthetic instanceof(Lcom/luck/picture/lib/PicturePreviewActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->native:I

    return p0
.end method

.method public static synthetic interface(Lcom/luck/picture/lib/PicturePreviewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->h()V

    return-void
.end method

.method private j(Z)V
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    new-instance p1, Lcom/luck/picture/lib/entity/EventEntity;

    const/16 v0, 0xad6

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    iget v2, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->finally:I

    invoke-direct {p1, v0, v1, v2}, Lcom/luck/picture/lib/entity/EventEntity;-><init>(ILjava/util/List;I)V

    .line 2
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/do;->else()Lcom/luck/picture/lib/rxbus2/do;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/rxbus2/do;->this(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public static synthetic package(Lcom/luck/picture/lib/PicturePreviewActivity;)Lcom/luck/picture/lib/widget/PreviewViewPager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->while:Lcom/luck/picture/lib/widget/PreviewViewPager;

    return-object p0
.end method

.method public static synthetic private(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->super:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic protected(Lcom/luck/picture/lib/PicturePreviewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->i()V

    return-void
.end method

.method public static synthetic strictfp(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->switch:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic synchronized(Lcom/luck/picture/lib/PicturePreviewActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->native:I

    return p1
.end method

.method public static synthetic transient(Lcom/luck/picture/lib/PicturePreviewActivity;Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->e(Lcom/luck/picture/lib/entity/LocalMedia;)V

    return-void
.end method

.method public static synthetic volatile(Lcom/luck/picture/lib/PicturePreviewActivity;)Landroid/view/animation/Animation;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->default:Landroid/view/animation/Animation;

    return-object p0
.end method


# virtual methods
.method public a(Lcom/luck/picture/lib/entity/EventEntity;)V
    .locals 3
    .annotation runtime Lcom/luck/picture/lib/rxbus2/for;
        threadMode = .enum Lcom/luck/picture/lib/rxbus2/new;->MAIN:Lcom/luck/picture/lib/rxbus2/new;
    .end annotation

    .line 1
    iget p1, p1, Lcom/luck/picture/lib/entity/EventEntity;->do:I

    const/16 v0, 0xad2

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->else()V

    .line 3
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->private:Landroid/os/Handler;

    new-instance v0, Lcom/luck/picture/lib/PicturePreviewActivity$do;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PicturePreviewActivity$do;-><init>(Lcom/luck/picture/lib/PicturePreviewActivity;)V

    const-wide/16 v1, 0x96

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    return-void
.end method

.method public d(Lcom/luck/picture/lib/entity/LocalMedia;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 2
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->return:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->return:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->switch:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->d(Lcom/luck/picture/lib/entity/LocalMedia;)Z

    move-result p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->switch:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    :goto_0
    return-void
.end method

.method public g(Z)V
    .locals 5

    .line 1
    iput-boolean p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->extends:Z

    .line 2
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    const/4 v2, 0x2

    if-eqz p1, :cond_4

    .line 3
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->throw:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 4
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->import:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 5
    iget-boolean p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->new:Z

    if-eqz p1, :cond_2

    .line 6
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->throw:Landroid/widget/TextView;

    sget v3, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v4, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    if-ne v4, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->goto:I

    .line 7
    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 8
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 9
    :cond_2
    iget-boolean p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->extends:Z

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->final:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->default:Landroid/view/animation/Animation;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 11
    :cond_3
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->final:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->final:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->throw:Landroid/widget/TextView;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_completed:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 14
    :cond_4
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->import:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 15
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->throw:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 16
    iget-boolean p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->new:Z

    if-eqz p1, :cond_6

    .line 17
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->throw:Landroid/widget/TextView;

    sget v3, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v4, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    if-ne v4, v1, :cond_5

    const/4 v0, 0x1

    goto :goto_2

    :cond_5
    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->goto:I

    .line 18
    :goto_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 19
    invoke-virtual {p0, v3, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 20
    :cond_6
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->final:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->throw:Landroid/widget/TextView;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_please_select:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    :goto_3
    iget-boolean p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->extends:Z

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->j(Z)V

    return-void
.end method

.method public import(Ljava/util/List;)V
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
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/do;->else()Lcom/luck/picture/lib/rxbus2/do;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/entity/EventEntity;

    const/16 v2, 0xad3

    invoke-direct {v1, v2, p1}, Lcom/luck/picture/lib/entity/EventEntity;-><init>(ILjava/util/List;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/rxbus2/do;->this(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->default:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->onBackPressed()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->static()V

    :goto_0
    return-void
.end method

.method public onActivityBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->onBackPressed()V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/16 p2, 0x45

    if-eq p1, p2, :cond_1

    const/16 p2, 0x261

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p3}, Lcom/yalantis/ucrop/if;->for(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 2
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    check-cast p1, Ljava/io/Serializable;

    const-string p3, "com.yalantis.ucrop.OutputUriList"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 3
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_1
    if-eqz p3, :cond_2

    .line 4
    invoke-virtual {p0, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 5
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    :cond_3
    const/16 p1, 0x60

    if-ne p2, p1, :cond_4

    const-string p1, "com.yalantis.ucrop.Error"

    .line 6
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/lang/Throwable;

    .line 7
    iget-object p2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/support/v4/u72;->do(Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->extends:Z

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->j(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->for()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/luck/picture/lib/R$id;->picture_left_back:I

    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->onBackPressed()V

    .line 4
    :cond_0
    sget v0, Lcom/luck/picture/lib/R$id;->id_ll_ok:I

    if-ne p1, v0, :cond_8

    .line 5
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 6
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->else()Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_2
    const-string v2, ""

    .line 8
    :goto_1
    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v4, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->this:I

    const-string v5, "image"

    const/4 v6, 0x1

    if-lez v4, :cond_4

    if-ge p1, v4, :cond_4

    .line 9
    iget p1, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    const/4 v4, 0x2

    if-ne p1, v4, :cond_4

    .line 10
    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 11
    sget p1, Lcom/luck/picture/lib/R$string;->picture_min_img_num:I

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->this:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_2

    :cond_3
    sget p1, Lcom/luck/picture/lib/R$string;->picture_min_video_num:I

    new-array v0, v6, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->this:I

    .line 12
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 13
    :goto_2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/u72;->do(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 14
    :cond_4
    iget-boolean p1, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->volatile:Z

    if-eqz p1, :cond_7

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 15
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    if-ne p1, v6, :cond_5

    .line 16
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->this:Ljava/lang/String;

    .line 17
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->default(Ljava/lang/String;)V

    goto :goto_4

    .line 18
    :cond_5
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 19
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 20
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 21
    :cond_6
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->extends(Ljava/util/ArrayList;)V

    goto :goto_4

    .line 22
    :cond_7
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PicturePreviewActivity;->import(Ljava/util/List;)V

    :cond_8
    :goto_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcom/luck/picture/lib/R$layout;->picture_preview:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 3
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/do;->else()Lcom/luck/picture/lib/rxbus2/do;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/rxbus2/do;->goto(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/do;->else()Lcom/luck/picture/lib/rxbus2/do;

    move-result-object p1

    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/rxbus2/do;->catch(Ljava/lang/Object;)V

    .line 5
    :cond_0
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->private:Landroid/os/Handler;

    .line 6
    invoke-static {p0}, Landroid/support/v4/is1;->for(Landroid/content/Context;)I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->package:I

    .line 7
    sget p1, Lcom/luck/picture/lib/R$anim;->modal_in:I

    invoke-static {p0, p1}, Landroid/support/v4/z71;->for(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->default:Landroid/view/animation/Animation;

    .line 8
    invoke-virtual {p1, p0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 9
    sget p1, Lcom/luck/picture/lib/R$id;->picture_left_back:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->const:Landroid/widget/ImageView;

    .line 10
    sget p1, Lcom/luck/picture/lib/R$id;->preview_pager:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/luck/picture/lib/widget/PreviewViewPager;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->while:Lcom/luck/picture/lib/widget/PreviewViewPager;

    .line 11
    sget p1, Lcom/luck/picture/lib/R$id;->ll_check:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->public:Landroid/widget/LinearLayout;

    .line 12
    sget p1, Lcom/luck/picture/lib/R$id;->id_ll_ok:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->import:Landroid/widget/LinearLayout;

    .line 13
    sget p1, Lcom/luck/picture/lib/R$id;->check:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->switch:Landroid/widget/TextView;

    .line 14
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->const:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    sget p1, Lcom/luck/picture/lib/R$id;->tv_ok:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->throw:Landroid/widget/TextView;

    .line 16
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->import:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    sget p1, Lcom/luck/picture/lib/R$id;->tv_img_num:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->final:Landroid/widget/TextView;

    .line 18
    sget p1, Lcom/luck/picture/lib/R$id;->picture_title:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->super:Landroid/widget/TextView;

    .line 19
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->native:I

    .line 20
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->throw:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->new:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    .line 21
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v4, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->goto:I

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 22
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    sget v0, Lcom/luck/picture/lib/R$string;->picture_please_select:I

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 24
    :goto_1
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->final:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->continue:Z

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setSelected(Z)V

    .line 26
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "selectList"

    .line 27
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->static:Ljava/util/List;

    .line 28
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "bottom_preview"

    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "previewSelectList"

    .line 31
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->return:Ljava/util/List;

    goto :goto_2

    .line 32
    :cond_3
    invoke-static {}, Landroid/support/v4/bm0;->new()Landroid/support/v4/bm0;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/bm0;->case()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->return:Ljava/util/List;

    .line 33
    :goto_2
    invoke-direct {p0}, Lcom/luck/picture/lib/PicturePreviewActivity;->b()V

    .line 34
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->public:Landroid/widget/LinearLayout;

    new-instance v0, Lcom/luck/picture/lib/PicturePreviewActivity$if;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PicturePreviewActivity$if;-><init>(Lcom/luck/picture/lib/PicturePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 35
    iget-object p1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->while:Lcom/luck/picture/lib/widget/PreviewViewPager;

    new-instance v0, Lcom/luck/picture/lib/PicturePreviewActivity$for;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PicturePreviewActivity$for;-><init>(Lcom/luck/picture/lib/PicturePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/do;->else()Lcom/luck/picture/lib/rxbus2/do;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/rxbus2/do;->goto(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/do;->else()Lcom/luck/picture/lib/rxbus2/do;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/rxbus2/do;->import(Ljava/lang/Object;)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->private:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    iput-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->private:Landroid/os/Handler;

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->default:Landroid/view/animation/Animation;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 9
    iput-object v1, p0, Lcom/luck/picture/lib/PicturePreviewActivity;->default:Landroid/view/animation/Animation;

    :cond_2
    return-void
.end method
