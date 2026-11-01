.class public Lcc/shinichi/library/do;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcc/shinichi/library/do$do;,
        Lcc/shinichi/library/do$if;
    }
.end annotation


# static fields
.field public static final default:I = 0x3e9

.field public static final extends:I = 0x3ea

.field public static final finally:I = 0x3eb

.field public static final package:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private static final private:I = 0x5dc


# instance fields
.field private break:Z

.field private case:F

.field private catch:I

.field private class:Z

.field private const:Z

.field private do:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private else:F

.field private final:Z

.field private for:I

.field private goto:Z

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/tl0;",
            ">;"
        }
    .end annotation
.end field

.field private import:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private native:Lcc/shinichi/library/view/listener/OnBigImageClickListener;

.field private new:Ljava/lang/String;

.field private public:Lcc/shinichi/library/view/listener/OnBigImageLongClickListener;

.field private return:Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;

.field private static:Lcc/shinichi/library/view/listener/OnOriginProgressListener;

.field private super:Lcc/shinichi/library/do$if;

.field private switch:I
    .annotation build Landroidx/annotation/LayoutRes;
    .end annotation
.end field

.field private this:Z

.field private throw:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field

.field private throws:J

.field private try:F

.field private while:I
    .annotation build Landroidx/annotation/DrawableRes;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcc/shinichi/library/R$layout;->sh_default_progress_layout:I

    sput v0, Lcc/shinichi/library/do;->package:I

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcc/shinichi/library/do;->for:I

    const-string v1, "Download"

    .line 3
    iput-object v1, p0, Lcc/shinichi/library/do;->new:Ljava/lang/String;

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcc/shinichi/library/do;->try:F

    const/high16 v1, 0x40400000    # 3.0f

    .line 5
    iput v1, p0, Lcc/shinichi/library/do;->case:F

    const/high16 v1, 0x40a00000    # 5.0f

    .line 6
    iput v1, p0, Lcc/shinichi/library/do;->else:F

    const/4 v1, 0x1

    .line 7
    iput-boolean v1, p0, Lcc/shinichi/library/do;->goto:Z

    .line 8
    iput-boolean v0, p0, Lcc/shinichi/library/do;->this:Z

    .line 9
    iput-boolean v1, p0, Lcc/shinichi/library/do;->break:Z

    const/16 v2, 0xc8

    .line 10
    iput v2, p0, Lcc/shinichi/library/do;->catch:I

    .line 11
    iput-boolean v0, p0, Lcc/shinichi/library/do;->class:Z

    .line 12
    iput-boolean v0, p0, Lcc/shinichi/library/do;->const:Z

    .line 13
    iput-boolean v1, p0, Lcc/shinichi/library/do;->final:Z

    .line 14
    sget-object v0, Lcc/shinichi/library/do$if;->Default:Lcc/shinichi/library/do$if;

    iput-object v0, p0, Lcc/shinichi/library/do;->super:Lcc/shinichi/library/do$if;

    .line 15
    sget v0, Lcc/shinichi/library/R$drawable;->ic_action_close:I

    iput v0, p0, Lcc/shinichi/library/do;->throw:I

    .line 16
    sget v0, Lcc/shinichi/library/R$drawable;->icon_download_new:I

    iput v0, p0, Lcc/shinichi/library/do;->while:I

    .line 17
    sget v0, Lcc/shinichi/library/R$drawable;->load_failed:I

    iput v0, p0, Lcc/shinichi/library/do;->import:I

    const/4 v0, -0x1

    .line 18
    iput v0, p0, Lcc/shinichi/library/do;->switch:I

    const-wide/16 v0, 0x0

    .line 19
    iput-wide v0, p0, Lcc/shinichi/library/do;->throws:J

    return-void
.end method

.method public static break()Lcc/shinichi/library/do;
    .locals 1

    .line 1
    invoke-static {}, Lcc/shinichi/library/do$do;->do()Lcc/shinichi/library/do;

    move-result-object v0

    return-object v0
.end method

.method private c(Lcc/shinichi/library/view/listener/OnOriginProgressListener;)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/do;->static:Lcc/shinichi/library/view/listener/OnOriginProgressListener;

    return-object p0
.end method


# virtual methods
.method public a(I)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    iput p1, p0, Lcc/shinichi/library/do;->for:I

    return-object p0
.end method

.method public abstract(Landroid/content/Context;)Lcc/shinichi/library/do;
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcc/shinichi/library/do;->do:Ljava/lang/ref/WeakReference;

    return-object p0
.end method

.method public b(Lcc/shinichi/library/do$if;)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/do;->super:Lcc/shinichi/library/do$if;

    return-object p0
.end method

.method public case()I
    .locals 1

    .line 1
    iget v0, p0, Lcc/shinichi/library/do;->import:I

    return v0
.end method

.method public catch()Lcc/shinichi/library/do$if;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/do;->super:Lcc/shinichi/library/do$if;

    return-object v0
.end method

.method public class()F
    .locals 1

    .line 1
    iget v0, p0, Lcc/shinichi/library/do;->else:F

    return v0
.end method

.method public const()F
    .locals 1

    .line 1
    iget v0, p0, Lcc/shinichi/library/do;->case:F

    return v0
.end method

.method public continue(I)Lcc/shinichi/library/do;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcc/shinichi/library/do;->while:I

    return-object p0
.end method

.method public d(ILcc/shinichi/library/view/listener/OnOriginProgressListener;)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcc/shinichi/library/do;->c(Lcc/shinichi/library/view/listener/OnOriginProgressListener;)Lcc/shinichi/library/do;

    .line 2
    iput p1, p0, Lcc/shinichi/library/do;->switch:I

    return-object p0
.end method

.method public default()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcc/shinichi/library/do;->if:Ljava/util/List;

    const/4 v1, 0x0

    .line 2
    iput v1, p0, Lcc/shinichi/library/do;->for:I

    const/high16 v2, 0x3f800000    # 1.0f

    .line 3
    iput v2, p0, Lcc/shinichi/library/do;->try:F

    const/high16 v2, 0x40400000    # 3.0f

    .line 4
    iput v2, p0, Lcc/shinichi/library/do;->case:F

    const/high16 v2, 0x40a00000    # 5.0f

    .line 5
    iput v2, p0, Lcc/shinichi/library/do;->else:F

    const/16 v2, 0xc8

    .line 6
    iput v2, p0, Lcc/shinichi/library/do;->catch:I

    const/4 v2, 0x1

    .line 7
    iput-boolean v2, p0, Lcc/shinichi/library/do;->break:Z

    .line 8
    iput-boolean v1, p0, Lcc/shinichi/library/do;->this:Z

    .line 9
    iput-boolean v1, p0, Lcc/shinichi/library/do;->class:Z

    .line 10
    iput-boolean v2, p0, Lcc/shinichi/library/do;->final:Z

    .line 11
    iput-boolean v2, p0, Lcc/shinichi/library/do;->goto:Z

    .line 12
    sget v1, Lcc/shinichi/library/R$drawable;->ic_action_close:I

    iput v1, p0, Lcc/shinichi/library/do;->throw:I

    .line 13
    sget v1, Lcc/shinichi/library/R$drawable;->icon_download_new:I

    iput v1, p0, Lcc/shinichi/library/do;->while:I

    .line 14
    sget v1, Lcc/shinichi/library/R$drawable;->load_failed:I

    iput v1, p0, Lcc/shinichi/library/do;->import:I

    .line 15
    sget-object v1, Lcc/shinichi/library/do$if;->Default:Lcc/shinichi/library/do$if;

    iput-object v1, p0, Lcc/shinichi/library/do;->super:Lcc/shinichi/library/do$if;

    const-string v1, "Download"

    .line 16
    iput-object v1, p0, Lcc/shinichi/library/do;->new:Ljava/lang/String;

    .line 17
    iget-object v1, p0, Lcc/shinichi/library/do;->do:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 19
    iput-object v0, p0, Lcc/shinichi/library/do;->do:Ljava/lang/ref/WeakReference;

    .line 20
    :cond_0
    iput-object v0, p0, Lcc/shinichi/library/do;->native:Lcc/shinichi/library/view/listener/OnBigImageClickListener;

    .line 21
    iput-object v0, p0, Lcc/shinichi/library/do;->public:Lcc/shinichi/library/view/listener/OnBigImageLongClickListener;

    .line 22
    iput-object v0, p0, Lcc/shinichi/library/do;->return:Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;

    const/4 v0, -0x1

    .line 23
    iput v0, p0, Lcc/shinichi/library/do;->switch:I

    const-wide/16 v0, 0x0

    .line 24
    iput-wide v0, p0, Lcc/shinichi/library/do;->throws:J

    return-void
.end method

.method public do()Lcc/shinichi/library/view/listener/OnBigImageClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/do;->native:Lcc/shinichi/library/view/listener/OnBigImageClickListener;

    return-object v0
.end method

.method public e(III)Lcc/shinichi/library/do;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-le p3, p2, :cond_0

    if-le p2, p1, :cond_0

    if-lez p1, :cond_0

    int-to-float p1, p1

    .line 1
    iput p1, p0, Lcc/shinichi/library/do;->try:F

    int-to-float p1, p2

    .line 2
    iput p1, p0, Lcc/shinichi/library/do;->case:F

    int-to-float p1, p3

    .line 3
    iput p1, p0, Lcc/shinichi/library/do;->else:F

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "max must greater to medium, medium must greater to min!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public else()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/do;->new:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Download"

    .line 2
    iput-object v0, p0, Lcc/shinichi/library/do;->new:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcc/shinichi/library/do;->new:Ljava/lang/String;

    return-object v0
.end method

.method public extends(Lcc/shinichi/library/view/listener/OnBigImageClickListener;)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/do;->native:Lcc/shinichi/library/view/listener/OnBigImageClickListener;

    return-object p0
.end method

.method public f(I)Lcc/shinichi/library/do;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public final()F
    .locals 1

    .line 1
    iget v0, p0, Lcc/shinichi/library/do;->try:F

    return v0
.end method

.method public finally(Lcc/shinichi/library/view/listener/OnBigImageLongClickListener;)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/do;->public:Lcc/shinichi/library/view/listener/OnBigImageLongClickListener;

    return-object p0
.end method

.method public for()Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/do;->return:Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;

    return-object v0
.end method

.method public g(Z)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcc/shinichi/library/do;->this:Z

    return-object p0
.end method

.method public goto()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/support/v4/tl0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/do;->if:Ljava/util/List;

    return-object v0
.end method

.method public h(Z)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcc/shinichi/library/do;->break:Z

    return-object p0
.end method

.method public i(Z)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcc/shinichi/library/do;->goto:Z

    return-object p0
.end method

.method public if()Lcc/shinichi/library/view/listener/OnBigImageLongClickListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/do;->public:Lcc/shinichi/library/view/listener/OnBigImageLongClickListener;

    return-object v0
.end method

.method public implements(Ljava/lang/String;)Lcc/shinichi/library/do;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcc/shinichi/library/do;->if:Ljava/util/List;

    .line 2
    new-instance v0, Landroid/support/v4/tl0;

    invoke-direct {v0}, Landroid/support/v4/tl0;-><init>()V

    .line 3
    invoke-virtual {v0, p1}, Landroid/support/v4/tl0;->setThumbnailUrl(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Landroid/support/v4/tl0;->setOriginUrl(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcc/shinichi/library/do;->if:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public import()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcc/shinichi/library/do;->final:Z

    return v0
.end method

.method public instanceof(Ljava/util/List;)Lcc/shinichi/library/do;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/tl0;",
            ">;)",
            "Lcc/shinichi/library/do;"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/do;->if:Ljava/util/List;

    return-object p0
.end method

.method public interface(Z)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcc/shinichi/library/do;->const:Z

    return-object p0
.end method

.method public j(Z)Lcc/shinichi/library/do;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-object p0
.end method

.method public k(I)Lcc/shinichi/library/do;
    .locals 1

    if-ltz p1, :cond_0

    .line 1
    iput p1, p0, Lcc/shinichi/library/do;->catch:I

    return-object p0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "zoomTransitionDuration must greater 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public l()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcc/shinichi/library/do;->throws:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x5dc

    cmp-long v4, v0, v2

    if-gtz v4, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcc/shinichi/library/do;->do:Ljava/lang/ref/WeakReference;

    const-string v1, "You must call \'setContext(Context context)\' first!"

    if-eqz v0, :cond_8

    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    if-eqz v0, :cond_7

    .line 4
    instance-of v1, v0, Landroid/app/Activity;

    if-eqz v1, :cond_6

    .line 5
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_2

    .line 6
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {v1}, Landroid/app/Activity;->isDestroyed()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcc/shinichi/library/do;->default()V

    return-void

    .line 8
    :cond_2
    move-object v1, v0

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    invoke-virtual {p0}, Lcc/shinichi/library/do;->default()V

    return-void

    .line 10
    :cond_3
    iget-object v1, p0, Lcc/shinichi/library/do;->if:Ljava/util/List;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-eqz v1, :cond_5

    .line 11
    iget v1, p0, Lcc/shinichi/library/do;->for:I

    iget-object v2, p0, Lcc/shinichi/library/do;->if:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 12
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcc/shinichi/library/do;->throws:J

    .line 13
    invoke-static {v0}, Lcc/shinichi/library/view/ImagePreviewActivity;->throw(Landroid/content/Context;)V

    return-void

    .line 14
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "index out of range!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 15
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Do you forget to call \'setImageInfoList(List<ImageInfo> imageInfoList)\' ?"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 16
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "context must be a Activity!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 17
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 18
    :cond_8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public native()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcc/shinichi/library/do;->class:Z

    return v0
.end method

.method public new()I
    .locals 1

    .line 1
    iget v0, p0, Lcc/shinichi/library/do;->throw:I

    return v0
.end method

.method public package(Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/do;->return:Lcc/shinichi/library/view/listener/OnBigImagePageChangeListener;

    return-object p0
.end method

.method public private(I)Lcc/shinichi/library/do;
    .locals 0
    .param p1    # I
        .annotation build Landroidx/annotation/DrawableRes;
        .end annotation
    .end param

    .line 1
    iput p1, p0, Lcc/shinichi/library/do;->throw:I

    return-object p0
.end method

.method public protected(I)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    iput p1, p0, Lcc/shinichi/library/do;->import:I

    return-object p0
.end method

.method public public()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcc/shinichi/library/do;->const:Z

    return v0
.end method

.method public return()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcc/shinichi/library/do;->this:Z

    return v0
.end method

.method public static()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcc/shinichi/library/do;->break:Z

    return v0
.end method

.method public strictfp(Z)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcc/shinichi/library/do;->final:Z

    return-object p0
.end method

.method public super()Lcc/shinichi/library/view/listener/OnOriginProgressListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/do;->static:Lcc/shinichi/library/view/listener/OnOriginProgressListener;

    return-object v0
.end method

.method public switch()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcc/shinichi/library/do;->goto:Z

    return v0
.end method

.method public synchronized(Ljava/util/List;)Lcc/shinichi/library/do;
    .locals 3
    .param p1    # Ljava/util/List;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcc/shinichi/library/do;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcc/shinichi/library/do;->if:Ljava/util/List;

    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 3
    new-instance v1, Landroid/support/v4/tl0;

    invoke-direct {v1}, Landroid/support/v4/tl0;-><init>()V

    .line 4
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/tl0;->setThumbnailUrl(Ljava/lang/String;)V

    .line 5
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/support/v4/tl0;->setOriginUrl(Ljava/lang/String;)V

    .line 6
    iget-object v2, p0, Lcc/shinichi/library/do;->if:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method public this()I
    .locals 1

    .line 1
    iget v0, p0, Lcc/shinichi/library/do;->for:I

    return v0
.end method

.method public throw()I
    .locals 1

    .line 1
    iget v0, p0, Lcc/shinichi/library/do;->switch:I

    return v0
.end method

.method public throws(I)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcc/shinichi/library/do;->goto()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/tl0;

    invoke-virtual {v2}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/tl0;

    invoke-virtual {p1}, Landroid/support/v4/tl0;->getThumbnailUrl()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v1

    .line 6
    :cond_1
    iget-object p1, p0, Lcc/shinichi/library/do;->super:Lcc/shinichi/library/do$if;

    sget-object v0, Lcc/shinichi/library/do$if;->Default:Lcc/shinichi/library/do$if;

    if-ne p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_2
    sget-object v0, Lcc/shinichi/library/do$if;->NetworkAuto:Lcc/shinichi/library/do$if;

    if-ne p1, v0, :cond_3

    return v1

    .line 8
    :cond_3
    sget-object v0, Lcc/shinichi/library/do$if;->AlwaysThumb:Lcc/shinichi/library/do$if;

    if-ne p1, v0, :cond_4

    return v1

    .line 9
    :cond_4
    sget-object p1, Lcc/shinichi/library/do$if;->AlwaysOrigin:Lcc/shinichi/library/do$if;

    :cond_5
    :goto_0
    return v1
.end method

.method public transient(Ljava/lang/String;)Lcc/shinichi/library/do;
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/do;->new:Ljava/lang/String;

    return-object p0
.end method

.method public try()I
    .locals 1

    .line 1
    iget v0, p0, Lcc/shinichi/library/do;->while:I

    return v0
.end method

.method public volatile(Z)Lcc/shinichi/library/do;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcc/shinichi/library/do;->class:Z

    return-object p0
.end method

.method public while()I
    .locals 1

    .line 1
    iget v0, p0, Lcc/shinichi/library/do;->catch:I

    return v0
.end method
