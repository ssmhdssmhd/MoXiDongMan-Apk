.class public Lcom/luck/picture/lib/PictureSelectorActivity;
.super Lcom/luck/picture/lib/PictureBaseActivity;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;
.implements Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnPhotoSelectChangedListener;
.implements Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/luck/picture/lib/PictureSelectorActivity$this;
    }
.end annotation


# static fields
.field private static final g:Ljava/lang/String;

.field private static final h:I = 0x0

.field private static final i:I = 0x1


# instance fields
.field private a:Z

.field private abstract:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;"
        }
    .end annotation
.end field

.field private b:Landroid/support/v4/gt;

.field private c:I

.field private const:Landroid/widget/ImageView;

.field private continue:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMediaFolder;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/os/Handler;

.field private default:Landroid/widget/TextView;

.field public e:Landroid/os/Handler;

.field private extends:Landroid/widget/RelativeLayout;

.field public f:Ljava/lang/Runnable;

.field private final:Landroid/widget/TextView;

.field private finally:Landroid/widget/LinearLayout;

.field private implements:Lcom/luck/picture/lib/model/LocalMediaLoader;

.field private import:Landroid/widget/TextView;

.field private instanceof:Landroid/media/MediaPlayer;

.field private interface:Z

.field private native:Landroid/widget/TextView;

.field private package:Landroidx/recyclerview/widget/RecyclerView;

.field private private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

.field private protected:Lcom/luck/picture/lib/permissions/do;

.field private public:Landroid/widget/TextView;

.field private return:Landroid/widget/TextView;

.field private static:Landroid/widget/TextView;

.field private strictfp:Lcom/luck/picture/lib/widget/do;

.field private super:Landroid/widget/TextView;

.field private switch:Landroid/widget/TextView;

.field private synchronized:Landroid/widget/SeekBar;

.field private throw:Landroid/widget/TextView;

.field private throws:Landroid/widget/TextView;

.field private transient:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

.field private volatile:Landroid/view/animation/Animation;

.field private while:Landroid/widget/TextView;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/luck/picture/lib/PictureSelectorActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/luck/picture/lib/PictureSelectorActivity;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureBaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->abstract:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->continue:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->volatile:Landroid/view/animation/Animation;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->interface:Z

    .line 6
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->a:Z

    .line 7
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorActivity$do;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$do;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->d:Landroid/os/Handler;

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->e:Landroid/os/Handler;

    .line 9
    new-instance v0, Lcom/luck/picture/lib/PictureSelectorActivity$else;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$else;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->f:Ljava/lang/Runnable;

    return-void
.end method

.method public static synthetic abstract(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/media/MediaPlayer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method private c(Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    .line 2
    :try_start_0
    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 4
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 5
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->k()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public static synthetic continue(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/support/v4/gt;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->b:Landroid/support/v4/gt;

    return-object p0
.end method

.method private d(Landroid/os/Bundle;)V
    .locals 12

    .line 1
    sget v0, Lcom/luck/picture/lib/R$id;->rl_picture_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->extends:Landroid/widget/RelativeLayout;

    .line 2
    sget v0, Lcom/luck/picture/lib/R$id;->picture_left_back:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->const:Landroid/widget/ImageView;

    .line 3
    sget v0, Lcom/luck/picture/lib/R$id;->picture_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->final:Landroid/widget/TextView;

    .line 4
    sget v0, Lcom/luck/picture/lib/R$id;->picture_right:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->super:Landroid/widget/TextView;

    .line 5
    sget v0, Lcom/luck/picture/lib/R$id;->picture_tv_ok:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->throw:Landroid/widget/TextView;

    .line 6
    sget v0, Lcom/luck/picture/lib/R$id;->picture_id_preview:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->native:Landroid/widget/TextView;

    .line 7
    sget v0, Lcom/luck/picture/lib/R$id;->picture_tv_img_num:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->import:Landroid/widget/TextView;

    .line 8
    sget v0, Lcom/luck/picture/lib/R$id;->picture_recycler:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->package:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    sget v0, Lcom/luck/picture/lib/R$id;->id_ll_ok:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->finally:Landroid/widget/LinearLayout;

    .line 10
    sget v0, Lcom/luck/picture/lib/R$id;->tv_empty:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->while:Landroid/widget/TextView;

    .line 11
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->new:Z

    invoke-direct {p0, v0}, Lcom/luck/picture/lib/PictureSelectorActivity;->e(Z)V

    .line 12
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-static {}, Landroid/support/v4/rd1;->final()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 13
    new-instance v0, Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->transient:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    .line 14
    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->setOnItemClickListener(Lcom/luck/picture/lib/widget/PhotoPopupWindow$OnItemClickListener;)V

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->native:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 16
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-static {}, Landroid/support/v4/rd1;->super()I

    move-result v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    .line 17
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->native:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 18
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    invoke-static {v0}, Landroid/support/v4/is1;->if(Landroid/content/Context;)I

    move-result v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    .line 19
    invoke-static {v1}, Landroid/support/v4/is1;->new(Landroid/content/Context;)I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->c:I

    goto :goto_1

    .line 20
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->native:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_2

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 21
    :goto_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->const:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->super:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 23
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->finally:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 24
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->final:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-static {}, Landroid/support/v4/rd1;->super()I

    move-result v1

    if-ne v0, v1, :cond_3

    sget v0, Lcom/luck/picture/lib/R$string;->picture_all_audio:I

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    sget v0, Lcom/luck/picture/lib/R$string;->picture_camera_roll:I

    .line 27
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 28
    :goto_2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->final:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 29
    new-instance v0, Lcom/luck/picture/lib/widget/do;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-direct {v0, p0, v1}, Lcom/luck/picture/lib/widget/do;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->strictfp:Lcom/luck/picture/lib/widget/do;

    .line 30
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->final:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/do;->this(Landroid/widget/TextView;)V

    .line 31
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->strictfp:Lcom/luck/picture/lib/widget/do;

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/widget/do;->setOnItemClickListener(Lcom/luck/picture/lib/adapter/PictureAlbumDirectoryAdapter$OnItemClickListener;)V

    .line 32
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->package:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 33
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->package:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->throw:I

    const/high16 v4, 0x40000000    # 2.0f

    .line 34
    invoke-static {p0, v4}, Landroid/support/v4/is1;->do(Landroid/content/Context;F)I

    move-result v4

    invoke-direct {v1, v2, v4, v3}, Lcom/luck/picture/lib/decoration/GridSpacingItemDecoration;-><init>(IIZ)V

    .line 35
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 36
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->package:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->throw:I

    invoke-direct {v1, p0, v2}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 37
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->package:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getItemAnimator()Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/SimpleItemAnimator;

    .line 38
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 39
    new-instance v0, Lcom/luck/picture/lib/model/LocalMediaLoader;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v6, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    iget-boolean v7, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->finally:Z

    iget v2, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->class:I

    int-to-long v8, v2

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->const:I

    int-to-long v10, v1

    move-object v4, v0

    move-object v5, p0

    invoke-direct/range {v4 .. v11}, Lcom/luck/picture/lib/model/LocalMediaLoader;-><init>(Landroid/content/Context;IZJJ)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->implements:Lcom/luck/picture/lib/model/LocalMediaLoader;

    .line 40
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->protected:Lcom/luck/picture/lib/permissions/do;

    const-string v1, "android.permission.READ_EXTERNAL_STORAGE"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/permissions/do;->final([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$for;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$for;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    .line 41
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    .line 42
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->while:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-static {}, Landroid/support/v4/rd1;->super()I

    move-result v2

    if-ne v1, v2, :cond_4

    sget v1, Lcom/luck/picture/lib/R$string;->picture_audio_empty:I

    .line 43
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_4
    sget v1, Lcom/luck/picture/lib/R$string;->picture_empty:I

    .line 44
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 45
    :goto_3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 46
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->while:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-static {v0, v1}, Landroid/support/v4/k22;->for(Landroid/widget/TextView;I)V

    if-eqz p1, :cond_5

    .line 47
    invoke-static {p1}, Lcom/luck/picture/lib/if;->break(Landroid/os/Bundle;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->class:Ljava/util/List;

    .line 48
    :cond_5
    new-instance p1, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    invoke-direct {p1, v0, v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;-><init>(Landroid/content/Context;Lcom/luck/picture/lib/config/PictureSelectionConfig;)V

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    .line 49
    invoke-virtual {p1, p0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->setOnPhotoSelectChangedListener(Lcom/luck/picture/lib/adapter/PictureImageGridAdapter$OnPhotoSelectChangedListener;)V

    .line 50
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->class:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->class(Ljava/util/List;)V

    .line 51
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->package:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 52
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->final:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 53
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->extends:Z

    if-eqz v1, :cond_6

    .line 54
    invoke-static {p1}, Landroid/support/v4/k22;->do(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->extends:Z

    :cond_6
    return-void
.end method

.method private e(Z)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->throw:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    sget v1, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v4, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->goto:I

    :goto_0
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    .line 3
    invoke-virtual {p0, v1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    sget v1, Lcom/luck/picture/lib/R$string;->picture_please_select:I

    .line 4
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 5
    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-nez p1, :cond_2

    .line 6
    sget v0, Lcom/luck/picture/lib/R$anim;->modal_in:I

    invoke-static {p0, v0}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->volatile:Landroid/view/animation/Animation;

    :cond_2
    if-eqz p1, :cond_3

    const/4 p1, 0x0

    goto :goto_2

    .line 7
    :cond_3
    sget p1, Lcom/luck/picture/lib/R$anim;->modal_in:I

    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->volatile:Landroid/view/animation/Animation;

    return-void
.end method

.method private synthetic f(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->c(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic finally(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->g(Ljava/util/List;)V

    return-void
.end method

.method private synthetic g(Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-lez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->continue:Ljava/util/List;

    .line 3
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    .line 4
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->goto(Z)V

    .line 5
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->new()Ljava/util/List;

    move-result-object v0

    .line 6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    iget-object v4, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->abstract:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 7
    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->abstract:Ljava/util/List;

    .line 8
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->strictfp:Lcom/luck/picture/lib/widget/do;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/widget/do;->try(Ljava/util/List;)V

    .line 9
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->abstract:Ljava/util/List;

    if-nez p1, :cond_1

    .line 11
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->abstract:Ljava/util/List;

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->abstract:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->catch(Ljava/util/List;)V

    .line 13
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->while:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->abstract:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v2, 0x4

    :cond_2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 14
    :cond_3
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->d:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private h(Lcom/luck/picture/lib/entity/LocalMedia;)V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->continue:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->try(Ljava/util/List;)V

    .line 2
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->continue:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/luck/picture/lib/PictureBaseActivity;->break(Ljava/lang/String;Ljava/util/List;)Lcom/luck/picture/lib/entity/LocalMediaFolder;

    move-result-object v0

    .line 3
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->continue:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->continue:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMediaFolder;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->break(Ljava/lang/String;)V

    .line 5
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->abstract:Ljava/util/List;

    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->class(Ljava/util/List;)V

    .line 6
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->for()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->catch(I)V

    .line 7
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->for()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    .line 8
    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->catch(I)V

    .line 9
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->new()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/entity/LocalMediaFolder;->break(Ljava/lang/String;)V

    .line 11
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->strictfp:Lcom/luck/picture/lib/widget/do;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->continue:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/luck/picture/lib/widget/do;->try(Ljava/util/List;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 12
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_1
    return-void
.end method

.method private i(Landroid/content/Intent;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/yalantis/ucrop/if;->for(Landroid/content/Intent;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v4/jt;

    .line 4
    new-instance v2, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {v2}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>()V

    .line 5
    invoke-virtual {v1}, Landroid/support/v4/jt;->getPath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/support/v4/rd1;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    .line 6
    invoke-virtual {v2, v4}, Lcom/luck/picture/lib/entity/LocalMedia;->super(Z)V

    .line 7
    invoke-virtual {v1}, Landroid/support/v4/jt;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/luck/picture/lib/entity/LocalMedia;->public(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v1}, Landroid/support/v4/jt;->getCutPath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->throw(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v2, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->return(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-virtual {v2, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->import(I)V

    .line 11
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->const(Ljava/util/List;)V

    return-void
.end method

.method public static synthetic implements(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->public:Landroid/widget/TextView;

    return-object p0
.end method

.method private instanceof(Ljava/lang/String;)V
    .locals 7

    .line 1
    new-instance v6, Landroid/support/v4/gt;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    iget v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->c:I

    sget v4, Lcom/luck/picture/lib/R$layout;->picture_audio_dialog:I

    sget v5, Lcom/luck/picture/lib/R$style;->Theme_dialog:I

    const/4 v2, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Landroid/support/v4/gt;-><init>(Landroid/content/Context;IIII)V

    iput-object v6, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->b:Landroid/support/v4/gt;

    .line 2
    invoke-virtual {v6}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lcom/luck/picture/lib/R$style;->Dialog_Audio_StyleAnim:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->b:Landroid/support/v4/gt;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_musicStatus:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->switch:Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->b:Landroid/support/v4/gt;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_musicTime:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->default:Landroid/widget/TextView;

    .line 5
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->b:Landroid/support/v4/gt;

    sget v1, Lcom/luck/picture/lib/R$id;->musicSeekBar:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->synchronized:Landroid/widget/SeekBar;

    .line 6
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->b:Landroid/support/v4/gt;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_musicTotal:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->throws:Landroid/widget/TextView;

    .line 7
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->b:Landroid/support/v4/gt;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_PlayPause:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->public:Landroid/widget/TextView;

    .line 8
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->b:Landroid/support/v4/gt;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_Stop:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->return:Landroid/widget/TextView;

    .line 9
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->b:Landroid/support/v4/gt;

    sget v1, Lcom/luck/picture/lib/R$id;->tv_Quit:I

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->static:Landroid/widget/TextView;

    .line 10
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->e:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/td1;

    invoke-direct {v1, p0, p1}, Landroid/support/v4/td1;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    const-wide/16 v2, 0x1e

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 11
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->public:Landroid/widget/TextView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$this;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$this;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 12
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->return:Landroid/widget/TextView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$this;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$this;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->static:Landroid/widget/TextView;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$this;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$this;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 14
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->synchronized:Landroid/widget/SeekBar;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$try;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$try;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 15
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->b:Landroid/support/v4/gt;

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$case;

    invoke-direct {v1, p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity$case;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 16
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->e:Landroid/os/Handler;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 17
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->b:Landroid/support/v4/gt;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method public static synthetic interface(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->throws:Landroid/widget/TextView;

    return-object p0
.end method

.method private j(Ljava/io/File;)Landroid/net/Uri;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ".provider"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-le v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    invoke-static {v1, v0, p1}, Landroidx/core/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private k()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->synchronized:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->synchronized:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->public:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5
    sget v1, Lcom/luck/picture/lib/R$string;->picture_play_audio:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->public:Landroid/widget/TextView;

    sget v2, Lcom/luck/picture/lib/R$string;->picture_pause_audio:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->switch:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->l()V

    goto :goto_0

    .line 9
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->public:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->switch:Landroid/widget/TextView;

    sget v1, Lcom/luck/picture/lib/R$string;->picture_pause_audio:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->l()V

    .line 12
    :goto_0
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->a:Z

    if-nez v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->e:Landroid/os/Handler;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->a:Z

    :cond_2
    return-void
.end method

.method private n(Landroid/content/Intent;)V
    .locals 7
    .annotation build Landroidx/annotation/RequiresApi;
        api = 0x1a
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-static {}, Landroid/support/v4/rd1;->super()I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->this(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    .line 4
    :cond_0
    new-instance p1, Ljava/io/File;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    invoke-direct {p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5
    new-instance v1, Landroid/content/Intent;

    invoke-static {p1}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    const-string v3, "android.intent.action.MEDIA_SCANNER_SCAN_FILE"

    invoke-direct {v1, v3, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p0, v1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 6
    invoke-static {}, Landroid/support/v4/ps1;->do()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/luck/picture/lib/tools/do;->final(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 8
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/support/v4/rd1;->for(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 9
    :cond_1
    invoke-static {p1}, Landroid/support/v4/rd1;->for(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-static {}, Landroid/support/v4/rd1;->super()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 11
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/luck/picture/lib/tools/do;->return(Ljava/lang/String;)I

    move-result v3

    .line 12
    invoke-virtual {p0, v3, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->public(ILjava/io/File;)V

    .line 13
    :cond_2
    new-instance p1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-direct {p1}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>()V

    .line 14
    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    invoke-virtual {p1, v3}, Lcom/luck/picture/lib/entity/LocalMedia;->public(Ljava/lang/String;)V

    const-string v3, "video"

    .line 15
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    if-eqz v1, :cond_3

    .line 16
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    invoke-static {v1, v5}, Landroid/support/v4/rd1;->case(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_3
    if-eqz v3, :cond_4

    .line 17
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/rd1;->try(Ljava/lang/String;)I

    move-result v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    .line 18
    :goto_1
    iget-object v5, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v5, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-static {}, Landroid/support/v4/rd1;->super()I

    move-result v6

    if-ne v5, v6, :cond_5

    .line 19
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    invoke-static {v1}, Landroid/support/v4/rd1;->try(Ljava/lang/String;)I

    move-result v1

    const-string v5, "audio/mpeg"

    goto :goto_2

    :cond_5
    if-eqz v3, :cond_6

    .line 20
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v5

    iget-object v6, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    invoke-static {v5, v6}, Landroid/support/v4/rd1;->if(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto :goto_2

    :cond_6
    iget-object v5, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    .line 21
    invoke-static {v5}, Landroid/support/v4/rd1;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 22
    :goto_2
    invoke-virtual {p1, v5}, Lcom/luck/picture/lib/entity/LocalMedia;->return(Ljava/lang/String;)V

    int-to-long v5, v1

    .line 23
    invoke-virtual {p1, v5, v6}, Lcom/luck/picture/lib/entity/LocalMedia;->while(J)V

    .line 24
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-virtual {p1, v1}, Lcom/luck/picture/lib/entity/LocalMedia;->import(I)V

    .line 25
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->if:Z

    if-eqz v1, :cond_7

    .line 26
    invoke-direct {p0, v0, p1, v2}, Lcom/luck/picture/lib/PictureSelectorActivity;->synchronized(Ljava/util/List;Lcom/luck/picture/lib/entity/LocalMedia;Ljava/lang/String;)V

    goto :goto_4

    .line 27
    :cond_7
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->abstract:Ljava/util/List;

    invoke-interface {v0, v4, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 28
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v0, :cond_c

    .line 29
    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->throw()Ljava/util/List;

    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->goto:I

    if-ge v1, v2, :cond_b

    .line 31
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_8

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->else()Ljava/lang/String;

    move-result-object v1

    goto :goto_3

    :cond_8
    const-string v1, ""

    .line 32
    :goto_3
    invoke-virtual {p1}, Lcom/luck/picture/lib/entity/LocalMedia;->else()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/support/v4/rd1;->const(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 33
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_b

    .line 34
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v5, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->goto:I

    if-ge v1, v5, :cond_b

    .line 35
    iget v1, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_a

    .line 36
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->p()V

    .line 37
    :cond_a
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 38
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->class(Ljava/util/List;)V

    .line 39
    :cond_b
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    .line 40
    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v0, :cond_e

    .line 41
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->h(Lcom/luck/picture/lib/entity/LocalMedia;)V

    .line 42
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->while:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->abstract:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v4, 0x4

    :cond_d
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 43
    :cond_e
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-static {}, Landroid/support/v4/rd1;->super()I

    move-result v0

    if-eq p1, v0, :cond_f

    .line 44
    invoke-virtual {p0, v3}, Lcom/luck/picture/lib/PictureBaseActivity;->catch(Z)I

    move-result p1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_f

    .line 45
    invoke-virtual {p0, p1, v3}, Lcom/luck/picture/lib/PictureBaseActivity;->native(IZ)V

    :cond_f
    return-void
.end method

.method private o(Landroid/content/Intent;)V
    .locals 12

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/yalantis/ucrop/do;->for(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1

    .line 3
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 4
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 5
    invoke-virtual {v1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->throw()Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 6
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    .line 7
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->this:Ljava/lang/String;

    .line 8
    new-instance v3, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object v5, p0, Lcom/luck/picture/lib/PictureBaseActivity;->this:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->for()J

    move-result-wide v6

    const/4 v8, 0x0

    .line 9
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->goto()I

    move-result v9

    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->try()I

    move-result v10

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v11, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    move-object v4, v3

    invoke-direct/range {v4 .. v11}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>(Ljava/lang/String;JZIII)V

    .line 10
    invoke-virtual {v3, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->throw(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v3, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->super(Z)V

    .line 12
    invoke-static {p1}, Landroid/support/v4/rd1;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 13
    invoke-virtual {v3, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->return(Ljava/lang/String;)V

    .line 14
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->const(Ljava/util/List;)V

    goto :goto_1

    .line 16
    :cond_1
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->if:Z

    if-eqz v1, :cond_2

    .line 17
    new-instance v1, Lcom/luck/picture/lib/entity/LocalMedia;

    iget-object v4, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v8, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->extends:Z

    const/4 v9, 0x0

    iget v10, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/luck/picture/lib/entity/LocalMedia;-><init>(Ljava/lang/String;JZIII)V

    .line 18
    invoke-virtual {v1, v2}, Lcom/luck/picture/lib/entity/LocalMedia;->super(Z)V

    .line 19
    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->throw(Ljava/lang/String;)V

    .line 20
    invoke-static {p1}, Landroid/support/v4/rd1;->do(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 21
    invoke-virtual {v1, p1}, Lcom/luck/picture/lib/entity/LocalMedia;->return(Ljava/lang/String;)V

    .line 22
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->const(Ljava/util/List;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private p()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->throw()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    return-void
.end method

.method public static synthetic package(Lcom/luck/picture/lib/PictureSelectorActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->f(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic private(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->d:Landroid/os/Handler;

    return-object p0
.end method

.method public static synthetic protected(Lcom/luck/picture/lib/PictureSelectorActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->k()V

    return-void
.end method

.method public static synthetic strictfp(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->default:Landroid/widget/TextView;

    return-object p0
.end method

.method private synchronized(Ljava/util/List;Lcom/luck/picture/lib/entity/LocalMedia;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "image"

    .line 1
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p3

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->volatile:Z

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 3
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    iput-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->this:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->default(Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->default:Z

    if-eqz v0, :cond_1

    if-eqz p3, :cond_1

    .line 6
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->new(Ljava/util/List;)V

    .line 8
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz p1, :cond_2

    .line 9
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->abstract:Ljava/util/List;

    const/4 p3, 0x0

    invoke-interface {p1, p3, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->import(Ljava/util/List;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public static synthetic transient(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->switch:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic volatile(Lcom/luck/picture/lib/PictureSelectorActivity;)Landroid/widget/SeekBar;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->synchronized:Landroid/widget/SeekBar;

    return-object p0
.end method


# virtual methods
.method public a(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 2
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->else()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, ""

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    invoke-static {}, Landroid/support/v4/rd1;->super()I

    move-result v3

    const/16 v4, 0x8

    const/4 v5, 0x2

    const/4 v6, 0x1

    if-ne v2, v3, :cond_1

    .line 4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->native:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 5
    :cond_1
    invoke-static {v0}, Landroid/support/v4/rd1;->class(Ljava/lang/String;)Z

    move-result v0

    .line 6
    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    if-ne v2, v5, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    .line 7
    :goto_1
    iget-object v3, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->native:Landroid/widget/TextView;

    if-nez v0, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    :cond_3
    const/4 v4, 0x0

    :cond_4
    :goto_2
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    :goto_3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    goto :goto_4

    :cond_5
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_9

    .line 9
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->finally:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 10
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->native:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 11
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->native:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 12
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->throw:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setSelected(Z)V

    .line 13
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->new:Z

    if-eqz v0, :cond_7

    .line 14
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->throw:Landroid/widget/TextView;

    sget v2, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    new-array v3, v5, [Ljava/lang/Object;

    .line 15
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v1

    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    if-ne v1, v6, :cond_6

    const/4 p1, 0x1

    goto :goto_5

    :cond_6
    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->goto:I

    .line 16
    :goto_5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v6

    .line 17
    invoke-virtual {p0, v2, v3}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 18
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_7

    .line 19
    :cond_7
    iget-boolean v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->interface:Z

    if-nez v0, :cond_8

    .line 20
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->import:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->volatile:Landroid/view/animation/Animation;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 21
    :cond_8
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->import:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->import:Landroid/widget/TextView;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->throw:Landroid/widget/TextView;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_completed:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 24
    iput-boolean v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->interface:Z

    goto :goto_7

    .line 25
    :cond_9
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->finally:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 26
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->native:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 27
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->native:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 28
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->throw:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 29
    iget-boolean p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->new:Z

    if-eqz p1, :cond_b

    .line 30
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->throw:Landroid/widget/TextView;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_done_front_num:I

    new-array v2, v5, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    if-ne v3, v6, :cond_a

    const/4 v1, 0x1

    goto :goto_6

    :cond_a
    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->goto:I

    .line 31
    :goto_6
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v6

    .line 32
    invoke-virtual {p0, v0, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 33
    :cond_b
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->import:Landroid/widget/TextView;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 34
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->throw:Landroid/widget/TextView;

    sget v0, Lcom/luck/picture/lib/R$string;->picture_please_select:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_7
    return-void
.end method

.method public b(Lcom/luck/picture/lib/entity/EventEntity;)V
    .locals 3
    .annotation runtime Lcom/luck/picture/lib/rxbus2/for;
        threadMode = .enum Lcom/luck/picture/lib/rxbus2/new;->MAIN:Lcom/luck/picture/lib/rxbus2/new;
    .end annotation

    .line 1
    iget v0, p1, Lcom/luck/picture/lib/entity/EventEntity;->do:I

    const/16 v1, 0xad3

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    const/16 v1, 0xad6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p1, Lcom/luck/picture/lib/entity/EventEntity;->for:Ljava/util/List;

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    const/4 v2, 0x1

    :cond_1
    iput-boolean v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->interface:Z

    .line 4
    iget p1, p1, Lcom/luck/picture/lib/entity/EventEntity;->if:I

    .line 5
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->class(Ljava/util/List;)V

    .line 6
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0, p1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->notifyItemChanged(I)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p1, Lcom/luck/picture/lib/entity/EventEntity;->for:Ljava/util/List;

    .line 8
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 9
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->else()Ljava/lang/String;

    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->default:Z

    if-eqz v1, :cond_3

    const-string v1, "image"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->new(Ljava/util/List;)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->import(Ljava/util/List;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public l()V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public m()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->implements:Lcom/luck/picture/lib/model/LocalMediaLoader;

    new-instance v1, Landroid/support/v4/sd1;

    invoke-direct {v1, p0}, Landroid/support/v4/sd1;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/model/LocalMediaLoader;->switch(Lcom/luck/picture/lib/model/LocalMediaLoader$LocalMediaLoadListener;)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    const/16 p2, 0x45

    if-eq p1, p2, :cond_2

    const/16 p2, 0x261

    if-eq p1, p2, :cond_1

    const/16 p2, 0x38d

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    invoke-direct {p0, p3}, Lcom/luck/picture/lib/PictureSelectorActivity;->n(Landroid/content/Intent;)V

    goto :goto_0

    .line 2
    :cond_1
    invoke-direct {p0, p3}, Lcom/luck/picture/lib/PictureSelectorActivity;->i(Landroid/content/Intent;)V

    goto :goto_0

    .line 3
    :cond_2
    invoke-direct {p0, p3}, Lcom/luck/picture/lib/PictureSelectorActivity;->o(Landroid/content/Intent;)V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_4

    .line 4
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->if:Z

    if-eqz p1, :cond_5

    .line 5
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->for()V

    goto :goto_0

    :cond_4
    const/16 p1, 0x60

    if-ne p2, p1, :cond_5

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

    :cond_5
    :goto_0
    return-void
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->for()V

    return-void
.end method

.method public onChange(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->a(Ljava/util/List;)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcom/luck/picture/lib/R$id;->picture_left_back:I

    if-eq p1, v0, :cond_0

    sget v0, Lcom/luck/picture/lib/R$id;->picture_right:I

    if-ne p1, v0, :cond_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->strictfp:Lcom/luck/picture/lib/widget/do;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->strictfp:Lcom/luck/picture/lib/widget/do;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/do;->dismiss()V

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureBaseActivity;->for()V

    .line 6
    :cond_2
    :goto_0
    sget v0, Lcom/luck/picture/lib/R$id;->picture_title:I

    if-ne p1, v0, :cond_4

    .line 7
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->strictfp:Lcom/luck/picture/lib/widget/do;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->strictfp:Lcom/luck/picture/lib/widget/do;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/do;->dismiss()V

    goto :goto_1

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->abstract:Ljava/util/List;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    .line 10
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->strictfp:Lcom/luck/picture/lib/widget/do;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->extends:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/do;->showAsDropDown(Landroid/view/View;)V

    .line 11
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->throw()Ljava/util/List;

    move-result-object v0

    .line 12
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->strictfp:Lcom/luck/picture/lib/widget/do;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/widget/do;->goto(Ljava/util/List;)V

    .line 13
    :cond_4
    :goto_1
    sget v0, Lcom/luck/picture/lib/R$id;->picture_id_preview:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_7

    .line 14
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->throw()Ljava/util/List;

    move-result-object v0

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 17
    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_5
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    const-string v5, "previewSelectList"

    .line 19
    invoke-virtual {v4, v5, v3}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    .line 20
    check-cast v0, Ljava/io/Serializable;

    const-string v3, "selectList"

    invoke-virtual {v4, v3, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v0, "bottom_preview"

    .line 21
    invoke-virtual {v4, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 22
    const-class v0, Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v3, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    if-ne v3, v2, :cond_6

    const/16 v3, 0x45

    goto :goto_3

    :cond_6
    const/16 v3, 0x261

    :goto_3
    invoke-virtual {p0, v0, v4, v3}, Lcom/luck/picture/lib/PictureBaseActivity;->throws(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 23
    sget v0, Lcom/luck/picture/lib/R$anim;->a5:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 24
    :cond_7
    sget v0, Lcom/luck/picture/lib/R$id;->id_ll_ok:I

    if-ne p1, v0, :cond_10

    .line 25
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->throw()Ljava/util/List;

    move-result-object p1

    .line 26
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    goto :goto_4

    :cond_8
    const/4 v0, 0x0

    :goto_4
    if-eqz v0, :cond_9

    .line 27
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->else()Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    :cond_9
    const-string v3, ""

    .line 28
    :goto_5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    const-string v5, "image"

    .line 29
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 30
    iget-object v5, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v6, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->this:I

    if-lez v6, :cond_b

    iget v7, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    const/4 v8, 0x2

    if-ne v7, v8, :cond_b

    if-ge v4, v6, :cond_b

    if-eqz v3, :cond_a

    .line 31
    sget p1, Lcom/luck/picture/lib/R$string;->picture_min_img_num:I

    new-array v0, v2, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_6

    :cond_a
    sget p1, Lcom/luck/picture/lib/R$string;->picture_min_video_num:I

    new-array v0, v2, [Ljava/lang/Object;

    .line 32
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 33
    :goto_6
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->do:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/support/v4/u72;->do(Landroid/content/Context;Ljava/lang/String;)V

    return-void

    .line 34
    :cond_b
    iget-boolean v1, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->volatile:Z

    if-eqz v1, :cond_e

    if-eqz v3, :cond_e

    .line 35
    iget v1, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    if-ne v1, v2, :cond_c

    .line 36
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->this:Ljava/lang/String;

    .line 37
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->default(Ljava/lang/String;)V

    goto :goto_8

    .line 38
    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 40
    invoke-virtual {v1}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    .line 41
    :cond_d
    invoke-virtual {p0, v0}, Lcom/luck/picture/lib/PictureBaseActivity;->extends(Ljava/util/ArrayList;)V

    goto :goto_8

    .line 42
    :cond_e
    iget-boolean v0, v5, Lcom/luck/picture/lib/config/PictureSelectionConfig;->default:Z

    if-eqz v0, :cond_f

    if-eqz v3, :cond_f

    .line 43
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->new(Ljava/util/List;)V

    goto :goto_8

    .line 44
    :cond_f
    invoke-virtual {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->import(Ljava/util/List;)V

    :cond_10
    :goto_8
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/do;->else()Lcom/luck/picture/lib/rxbus2/do;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/rxbus2/do;->goto(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Lcom/luck/picture/lib/rxbus2/do;->else()Lcom/luck/picture/lib/rxbus2/do;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/luck/picture/lib/rxbus2/do;->catch(Ljava/lang/Object;)V

    .line 4
    :cond_0
    new-instance v0, Lcom/luck/picture/lib/permissions/do;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/permissions/do;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->protected:Lcom/luck/picture/lib/permissions/do;

    .line 5
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->if:Z

    if-eqz v1, :cond_2

    if-nez p1, :cond_1

    const-string p1, "android.permission.READ_EXTERNAL_STORAGE"

    .line 6
    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/luck/picture/lib/permissions/do;->final([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object p1

    new-instance v0, Lcom/luck/picture/lib/PictureSelectorActivity$if;

    invoke-direct {v0, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$if;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    .line 7
    invoke-virtual {p1, v0}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    .line 8
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x400

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    .line 9
    sget p1, Lcom/luck/picture/lib/R$layout;->picture_empty:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    goto :goto_0

    .line 10
    :cond_2
    sget v0, Lcom/luck/picture/lib/R$layout;->picture_selector:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(I)V

    .line 11
    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->d(Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

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
    invoke-static {}, Landroid/support/v4/bm0;->new()Landroid/support/v4/bm0;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/bm0;->if()V

    .line 5
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->volatile:Landroid/view/animation/Animation;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/animation/Animation;->cancel()V

    .line 7
    iput-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->volatile:Landroid/view/animation/Animation;

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->e:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 9
    iget-object v2, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->f:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 10
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 11
    iput-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    :cond_2
    return-void
.end method

.method public onItemClick(I)V
    .locals 1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->t()V

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->r()V

    :goto_0
    return-void
.end method

.method public onItemClick(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/support/v4/k22;->do(Ljava/lang/String;)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->extends:Z

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v1, v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->return(Z)V

    .line 4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->final:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1, p2}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->catch(Ljava/util/List;)V

    .line 6
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->strictfp:Lcom/luck/picture/lib/widget/do;

    invoke-virtual {p1}, Lcom/luck/picture/lib/widget/do;->dismiss()V

    return-void
.end method

.method public onPictureClick(Lcom/luck/picture/lib/entity/LocalMedia;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {p1}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->super()Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/luck/picture/lib/PictureSelectorActivity;->u(Ljava/util/List;I)V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/luck/picture/lib/PictureBaseActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->throw()Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {p1, v0}, Lcom/luck/picture/lib/if;->final(Landroid/os/Bundle;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public onTakePhoto()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->protected:Lcom/luck/picture/lib/permissions/do;

    const-string v1, "android.permission.CAMERA"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/permissions/do;->final([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$goto;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$goto;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public q()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/support/v4/j20;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-boolean v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->if:Z

    if-eqz v0, :cond_7

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v0, v0, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->s()V

    goto :goto_0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->t()V

    goto :goto_0

    .line 5
    :cond_3
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->r()V

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->transient:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->transient:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    invoke-virtual {v0}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->dismiss()V

    .line 9
    :cond_5
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->transient:Lcom/luck/picture/lib/widget/PhotoPopupWindow;

    iget-object v1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->extends:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/widget/PhotoPopupWindow;->showAsDropDown(Landroid/view/View;)V

    goto :goto_0

    .line 10
    :cond_6
    invoke-virtual {p0}, Lcom/luck/picture/lib/PictureSelectorActivity;->r()V

    :cond_7
    :goto_0
    return-void
.end method

.method public r()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Landroid/support/v4/ps1;->do()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/kd1;->do(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    if-nez v1, :cond_1

    const/4 v1, 0x1

    .line 7
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/luck/picture/lib/PictureBaseActivity;->goto:Ljava/lang/String;

    iget-object v4, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget-object v4, v4, Lcom/luck/picture/lib/config/PictureSelectionConfig;->try:Ljava/lang/String;

    invoke-static {v2, v1, v3, v4}, Lcom/luck/picture/lib/tools/do;->for(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 8
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    .line 9
    invoke-direct {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->j(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    const-string v2, "output"

    .line 10
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const/16 v1, 0x38d

    .line 11
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method public s()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->protected:Lcom/luck/picture/lib/permissions/do;

    const-string v1, "android.permission.RECORD_AUDIO"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/luck/picture/lib/permissions/do;->final([Ljava/lang/String;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/luck/picture/lib/PictureSelectorActivity$new;

    invoke-direct {v1, p0}, Lcom/luck/picture/lib/PictureSelectorActivity$new;-><init>(Lcom/luck/picture/lib/PictureSelectorActivity;)V

    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public t()V
    .locals 5

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 3
    invoke-static {}, Landroid/support/v4/ps1;->do()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/kd1;->if(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v1

    .line 5
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v3, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->do:I

    if-nez v3, :cond_1

    const/4 v3, 0x2

    :cond_1
    iget-object v4, p0, Lcom/luck/picture/lib/PictureBaseActivity;->goto:Ljava/lang/String;

    iget-object v2, v2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->try:Ljava/lang/String;

    invoke-static {v1, v3, v4, v2}, Lcom/luck/picture/lib/tools/do;->for(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 7
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->else:Ljava/lang/String;

    .line 8
    invoke-direct {p0, v1}, Lcom/luck/picture/lib/PictureSelectorActivity;->j(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    :goto_0
    const-string v2, "output"

    .line 9
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 10
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->final:I

    const-string v2, "android.intent.extra.durationLimit"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 11
    iget-object v1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget v1, v1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->break:I

    const-string v2, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/16 v1, 0x38d

    .line 12
    invoke-virtual {p0, v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    :cond_2
    return-void
.end method

.method public u(Ljava/util/List;I)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/luck/picture/lib/entity/LocalMedia;",
            ">;I)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/luck/picture/lib/entity/LocalMedia;

    .line 2
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->else()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 5
    invoke-static {v1}, Landroid/support/v4/rd1;->catch(Ljava/lang/String;)I

    move-result v1

    const/4 v4, 0x1

    if-eq v1, v4, :cond_4

    const/4 p1, 0x2

    if-eq v1, p1, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    if-ne p1, v4, :cond_1

    .line 7
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0, v3}, Lcom/luck/picture/lib/PictureBaseActivity;->import(Ljava/util/List;)V

    goto :goto_1

    .line 9
    :cond_1
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof(Ljava/lang/String;)V

    goto :goto_1

    .line 10
    :cond_2
    iget-object p1, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p1, p1, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    if-ne p1, v4, :cond_3

    .line 11
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-virtual {p0, v3}, Lcom/luck/picture/lib/PictureBaseActivity;->import(Ljava/util/List;)V

    goto :goto_1

    .line 13
    :cond_3
    invoke-virtual {v0}, Lcom/luck/picture/lib/entity/LocalMedia;->case()Ljava/lang/String;

    move-result-object p1

    const-string p2, "video_path"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-class p1, Lcom/luck/picture/lib/PictureVideoPlayActivity;

    invoke-virtual {p0, p1, v2}, Lcom/luck/picture/lib/PictureBaseActivity;->switch(Ljava/lang/Class;Landroid/os/Bundle;)V

    goto :goto_1

    .line 15
    :cond_4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->private:Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;

    invoke-virtual {v0}, Lcom/luck/picture/lib/adapter/PictureImageGridAdapter;->throw()Ljava/util/List;

    move-result-object v0

    .line 16
    invoke-static {}, Landroid/support/v4/bm0;->new()Landroid/support/v4/bm0;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/support/v4/bm0;->this(Ljava/util/List;)V

    .line 17
    check-cast v0, Ljava/io/Serializable;

    const-string p1, "selectList"

    invoke-virtual {v2, p1, v0}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string p1, "position"

    .line 18
    invoke-virtual {v2, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 19
    const-class p1, Lcom/luck/picture/lib/PicturePreviewActivity;

    iget-object p2, p0, Lcom/luck/picture/lib/PictureBaseActivity;->if:Lcom/luck/picture/lib/config/PictureSelectionConfig;

    iget p2, p2, Lcom/luck/picture/lib/config/PictureSelectionConfig;->else:I

    if-ne p2, v4, :cond_5

    const/16 p2, 0x45

    goto :goto_0

    :cond_5
    const/16 p2, 0x261

    :goto_0
    invoke-virtual {p0, p1, v2, p2}, Lcom/luck/picture/lib/PictureBaseActivity;->throws(Ljava/lang/Class;Landroid/os/Bundle;I)V

    .line 20
    sget p1, Lcom/luck/picture/lib/R$anim;->a5:I

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/app/Activity;->overridePendingTransition(II)V

    :goto_1
    return-void
.end method

.method public v(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 3
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 4
    iget-object v0, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->setDataSource(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepare()V

    .line 6
    iget-object p1, p0, Lcom/luck/picture/lib/PictureSelectorActivity;->instanceof:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method
