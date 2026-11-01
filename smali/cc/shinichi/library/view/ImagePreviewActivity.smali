.class public Lcc/shinichi/library/view/ImagePreviewActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final extends:Ljava/lang/String; = "ImagePreview"


# instance fields
.field private break:Landroid/widget/TextView;

.field private case:Z

.field private catch:Landroid/widget/FrameLayout;

.field private class:Landroid/widget/FrameLayout;

.field private const:Landroid/widget/Button;

.field private default:I

.field private do:Landroid/content/Context;

.field private else:Z

.field private final:Landroid/widget/ImageView;

.field private for:I

.field private goto:Lcc/shinichi/library/view/ImagePreviewAdapter;

.field private if:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/tl0;",
            ">;"
        }
    .end annotation
.end field

.field private import:Z

.field private native:Z

.field private new:Z

.field private public:Z

.field private return:Z

.field private static:Z

.field private super:Landroid/widget/ImageView;

.field private switch:Ljava/lang/String;

.field private this:Lcc/shinichi/library/view/HackyViewPager;

.field private throw:Landroid/view/View;

.field private throws:Landroid/support/v4/vi0$do;

.field private try:Z

.field private while:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->import:Z

    .line 3
    iput-boolean v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->native:Z

    .line 4
    iput-boolean v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->public:Z

    .line 5
    iput-boolean v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->return:Z

    .line 6
    iput-boolean v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->static:Z

    const-string v1, ""

    .line 7
    iput-object v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->switch:Ljava/lang/String;

    .line 8
    iput v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->default:I

    return-void
.end method

.method public static synthetic break(Lcc/shinichi/library/view/ImagePreviewActivity;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcc/shinichi/library/view/ImagePreviewActivity;->return()V

    return-void
.end method

.method public static synthetic case(Lcc/shinichi/library/view/ImagePreviewActivity;)Ljava/util/List;
    .locals 0

    .line 1
    iget-object p0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->if:Ljava/util/List;

    return-object p0
.end method

.method public static synthetic catch(Lcc/shinichi/library/view/ImagePreviewActivity;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->break:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic class(Lcc/shinichi/library/view/ImagePreviewActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->import:Z

    return p0
.end method

.method public static synthetic const(Lcc/shinichi/library/view/ImagePreviewActivity;)Landroid/widget/FrameLayout;
    .locals 0

    .line 1
    iget-object p0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->class:Landroid/widget/FrameLayout;

    return-object p0
.end method

.method public static synthetic do(Lcc/shinichi/library/view/ImagePreviewActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->for:I

    return p0
.end method

.method public static synthetic else(Lcc/shinichi/library/view/ImagePreviewActivity;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->case:Z

    return p0
.end method

.method public static synthetic final(Lcc/shinichi/library/view/ImagePreviewActivity;)I
    .locals 0

    .line 1
    iget p0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->default:I

    return p0
.end method

.method public static synthetic for(Lcc/shinichi/library/view/ImagePreviewActivity;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->switch:Ljava/lang/String;

    return-object p0
.end method

.method public static synthetic goto(Lcc/shinichi/library/view/ImagePreviewActivity;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->case:Z

    return p1
.end method

.method public static synthetic if(Lcc/shinichi/library/view/ImagePreviewActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->for:I

    return p1
.end method

.method private native()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->do:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->switch:Ljava/lang/String;

    invoke-static {v0, v1}, Lcc/shinichi/library/tool/image/do;->do(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic new(Lcc/shinichi/library/view/ImagePreviewActivity;)Landroid/support/v4/vi0$do;
    .locals 0

    .line 1
    iget-object p0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->throws:Landroid/support/v4/vi0$do;

    return-object p0
.end method

.method private public(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    iget-object v2, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->if:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->if:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/tl0;

    invoke-virtual {v2}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private return()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->throws:Landroid/support/v4/vi0$do;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private static(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->do:Landroid/content/Context;

    invoke-static {v0}, Lcom/bumptech/glide/Glide;->abstract(Landroid/content/Context;)Lcom/bumptech/glide/goto;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bumptech/glide/goto;->catch()Lcom/bumptech/glide/else;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/bumptech/glide/else;->v0(Ljava/lang/String;)Lcom/bumptech/glide/else;

    move-result-object v0

    new-instance v1, Lcc/shinichi/library/view/ImagePreviewActivity$if;

    invoke-direct {v1, p0}, Lcc/shinichi/library/view/ImagePreviewActivity$if;-><init>(Lcc/shinichi/library/view/ImagePreviewActivity;)V

    invoke-virtual {v0, v1}, Lcom/bumptech/glide/else;->j0(Lcom/bumptech/glide/request/target/Target;)Lcom/bumptech/glide/request/target/Target;

    .line 2
    new-instance v0, Lcc/shinichi/library/view/ImagePreviewActivity$for;

    invoke-direct {v0, p0}, Lcc/shinichi/library/view/ImagePreviewActivity$for;-><init>(Lcc/shinichi/library/view/ImagePreviewActivity;)V

    invoke-static {p1, v0}, Lcc/shinichi/library/glide/sunfusheng/progress/do;->if(Ljava/lang/String;Lcc/shinichi/library/glide/sunfusheng/progress/OnProgressListener;)V

    return-void
.end method

.method public static synthetic super(Lcc/shinichi/library/view/ImagePreviewActivity;I)I
    .locals 0

    .line 1
    iput p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->default:I

    return p1
.end method

.method public static synthetic this(Lcc/shinichi/library/view/ImagePreviewActivity;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->while(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static throw(Landroid/content/Context;)V
    .locals 2

    if-nez p0, :cond_0

    return-void

    .line 1
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 2
    const-class v1, Lcc/shinichi/library/view/ImagePreviewActivity;

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 3
    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 4
    check-cast p0, Landroid/app/Activity;

    sget v0, Lcc/shinichi/library/R$anim;->fade_in:I

    sget v1, Lcc/shinichi/library/R$anim;->fade_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method private throws()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->throws:Landroid/support/v4/vi0$do;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public static synthetic try(Lcc/shinichi/library/view/ImagePreviewActivity;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->switch:Ljava/lang/String;

    return-object p1
.end method

.method private while(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->do:Landroid/content/Context;

    invoke-static {v0, p1}, Lcc/shinichi/library/glide/do;->for(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcc/shinichi/library/view/ImagePreviewActivity;->return()V

    const/4 p1, 0x1

    return p1

    .line 4
    :cond_0
    invoke-direct {p0}, Lcc/shinichi/library/view/ImagePreviewActivity;->throws()V

    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    sget v0, Lcc/shinichi/library/R$anim;->fade_in:I

    sget v1, Lcc/shinichi/library/R$anim;->fade_out:I

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 6

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const-string v1, "url"

    const/4 v2, 0x1

    if-nez v0, :cond_2

    .line 2
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->if:Ljava/util/List;

    iget v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->for:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/tl0;

    invoke-virtual {p1}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object p1

    .line 3
    invoke-direct {p0}, Lcc/shinichi/library/view/ImagePreviewActivity;->throws()V

    .line 4
    iget-boolean v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->import:Z

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcc/shinichi/library/view/ImagePreviewActivity;->return()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->const:Landroid/widget/Button;

    const-string v3, "0 %"

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7
    :goto_0
    invoke-direct {p0, p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->while(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 8
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->throws:Landroid/support/v4/vi0$do;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 9
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 10
    invoke-virtual {v3, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    iput v2, v0, Landroid/os/Message;->what:I

    .line 12
    iput-object v3, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 13
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->throws:Landroid/support/v4/vi0$do;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return v2

    .line 14
    :cond_1
    invoke-direct {p0, p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->static(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_2
    const/16 v3, 0x8

    if-ne v0, v2, :cond_5

    .line 15
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 16
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    invoke-direct {p0}, Lcc/shinichi/library/view/ImagePreviewActivity;->return()V

    .line 18
    iget v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->for:I

    invoke-direct {p0, p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->public(Ljava/lang/String;)I

    move-result p1

    if-ne v0, p1, :cond_9

    .line 19
    iget-boolean p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->import:Z

    if-eqz p1, :cond_4

    .line 20
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->class:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 21
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p1

    invoke-virtual {p1}, Lcc/shinichi/library/do;->super()Lcc/shinichi/library/view/listener/OnOriginProgressListener;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 22
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->while:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 23
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p1

    invoke-virtual {p1}, Lcc/shinichi/library/do;->super()Lcc/shinichi/library/view/listener/OnOriginProgressListener;

    move-result-object p1

    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->while:Landroid/view/View;

    invoke-interface {p1, v0}, Lcc/shinichi/library/view/listener/OnOriginProgressListener;->finish(Landroid/view/View;)V

    .line 24
    :cond_3
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->goto:Lcc/shinichi/library/view/ImagePreviewAdapter;

    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->if:Ljava/util/List;

    iget v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->for:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/tl0;

    invoke-virtual {p1, v0}, Lcc/shinichi/library/view/ImagePreviewAdapter;->goto(Landroid/support/v4/tl0;)V

    goto/16 :goto_1

    .line 25
    :cond_4
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->goto:Lcc/shinichi/library/view/ImagePreviewAdapter;

    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->if:Ljava/util/List;

    iget v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->for:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/tl0;

    invoke-virtual {p1, v0}, Lcc/shinichi/library/view/ImagePreviewAdapter;->goto(Landroid/support/v4/tl0;)V

    goto/16 :goto_1

    :cond_5
    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v0, v4, :cond_7

    .line 26
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Landroid/os/Bundle;

    .line 27
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "progress"

    .line 28
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 29
    iget v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->for:I

    invoke-direct {p0, v0}, Lcc/shinichi/library/view/ImagePreviewActivity;->public(Ljava/lang/String;)I

    move-result v0

    if-ne v1, v0, :cond_9

    .line 30
    iget-boolean v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->import:Z

    if-eqz v0, :cond_6

    .line 31
    invoke-direct {p0}, Lcc/shinichi/library/view/ImagePreviewActivity;->return()V

    .line 32
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->class:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->super()Lcc/shinichi/library/view/listener/OnOriginProgressListener;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 34
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->while:Landroid/view/View;

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 35
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    .line 36
    invoke-virtual {v0}, Lcc/shinichi/library/do;->super()Lcc/shinichi/library/view/listener/OnOriginProgressListener;

    move-result-object v0

    iget-object v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->while:Landroid/view/View;

    .line 37
    invoke-interface {v0, v1, p1}, Lcc/shinichi/library/view/listener/OnOriginProgressListener;->progress(Landroid/view/View;I)V

    goto :goto_1

    .line 38
    :cond_6
    invoke-direct {p0}, Lcc/shinichi/library/view/ImagePreviewActivity;->throws()V

    .line 39
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->const:Landroid/widget/Button;

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v5

    const-string p1, "%s %%"

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    const/4 p1, 0x3

    if-ne v0, p1, :cond_8

    .line 40
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->const:Landroid/widget/Button;

    const-string v0, "\u67e5\u770b\u539f\u56fe"

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 41
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->catch:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 42
    iput-boolean v5, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->public:Z

    goto :goto_1

    :cond_8
    const/4 p1, 0x4

    if-ne v0, p1, :cond_9

    .line 43
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->catch:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 44
    iput-boolean v2, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->public:Z

    :cond_9
    :goto_1
    return v2
.end method

.method public import(F)I
    .locals 3

    const/4 v0, 0x0

    .line 1
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    const/high16 v0, 0x437f0000    # 255.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    const-string v1, "0"

    goto :goto_0

    :cond_0
    const-string v1, ""

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "000000"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 4
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public onBackPressed()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcc/shinichi/library/view/ImagePreviewActivity;->finish()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    .line 2
    sget v0, Lcc/shinichi/library/R$id;->img_download:I

    if-ne p1, v0, :cond_2

    .line 3
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->do:Landroid/content/Context;

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {p1, v0}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p0, v0}, Landroidx/core/app/ActivityCompat;->shouldShowRequestPermissionRationale(Landroid/app/Activity;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 5
    invoke-static {}, Lcc/shinichi/library/tool/ui/do;->for()Lcc/shinichi/library/tool/ui/do;

    move-result-object p1

    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->do:Landroid/content/Context;

    const-string v1, "\u60a8\u62d2\u7edd\u4e86\u5b58\u50a8\u6743\u9650\uff0c\u4e0b\u8f7d\u5931\u8d25\uff01"

    invoke-virtual {p1, v0, v1}, Lcc/shinichi/library/tool/ui/do;->if(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_0
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Landroidx/core/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-direct {p0}, Lcc/shinichi/library/view/ImagePreviewActivity;->native()V

    goto :goto_0

    .line 8
    :cond_2
    sget v0, Lcc/shinichi/library/R$id;->btn_show_origin:I

    if-ne p1, v0, :cond_3

    .line 9
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->throws:Landroid/support/v4/vi0$do;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 10
    :cond_3
    sget v0, Lcc/shinichi/library/R$id;->imgCloseButton:I

    if-ne p1, v0, :cond_4

    .line 11
    invoke-virtual {p0}, Lcc/shinichi/library/view/ImagePreviewActivity;->onBackPressed()V

    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    sget p1, Lcc/shinichi/library/R$layout;->sh_layout_preview:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 3
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/high16 v0, 0x4000000

    const/4 v1, 0x0

    const/16 v2, 0x15

    if-lt p1, v2, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/Window;->clearFlags(I)V

    .line 6
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x500

    .line 7
    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const/high16 v0, -0x80000000

    .line 8
    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 9
    invoke-virtual {p1, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    goto :goto_0

    :cond_0
    const/16 v2, 0x13

    if-lt p1, v2, :cond_1

    .line 10
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/Window;->addFlags(I)V

    .line 11
    :cond_1
    :goto_0
    iput-object p0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->do:Landroid/content/Context;

    .line 12
    new-instance p1, Landroid/support/v4/vi0$do;

    invoke-direct {p1, p0}, Landroid/support/v4/vi0$do;-><init>(Landroid/os/Handler$Callback;)V

    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->throws:Landroid/support/v4/vi0$do;

    .line 13
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p1

    invoke-virtual {p1}, Lcc/shinichi/library/do;->goto()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->if:Ljava/util/List;

    if-eqz p1, :cond_a

    .line 14
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-nez p1, :cond_2

    goto/16 :goto_5

    .line 15
    :cond_2
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p1

    invoke-virtual {p1}, Lcc/shinichi/library/do;->this()I

    move-result p1

    iput p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->for:I

    .line 16
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p1

    invoke-virtual {p1}, Lcc/shinichi/library/do;->static()Z

    move-result p1

    iput-boolean p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->new:Z

    .line 17
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p1

    invoke-virtual {p1}, Lcc/shinichi/library/do;->return()Z

    move-result p1

    iput-boolean p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->try:Z

    .line 18
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p1

    invoke-virtual {p1}, Lcc/shinichi/library/do;->switch()Z

    move-result p1

    iput-boolean p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->else:Z

    .line 19
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->if:Ljava/util/List;

    iget v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->for:I

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v4/tl0;

    invoke-virtual {p1}, Landroid/support/v4/tl0;->getOriginUrl()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->switch:Ljava/lang/String;

    .line 20
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p1

    iget v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->for:I

    invoke-virtual {p1, v0}, Lcc/shinichi/library/do;->throws(I)Z

    move-result p1

    iput-boolean p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->case:Z

    if-eqz p1, :cond_3

    .line 21
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->switch:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->while(Ljava/lang/String;)Z

    .line 22
    :cond_3
    sget p1, Lcc/shinichi/library/R$id;->rootView:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->throw:Landroid/view/View;

    .line 23
    sget p1, Lcc/shinichi/library/R$id;->viewPager:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcc/shinichi/library/view/HackyViewPager;

    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->this:Lcc/shinichi/library/view/HackyViewPager;

    .line 24
    sget p1, Lcc/shinichi/library/R$id;->tv_indicator:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->break:Landroid/widget/TextView;

    .line 25
    sget p1, Lcc/shinichi/library/R$id;->fm_image_show_origin_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->catch:Landroid/widget/FrameLayout;

    .line 26
    sget p1, Lcc/shinichi/library/R$id;->fm_center_progress_container:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->class:Landroid/widget/FrameLayout;

    .line 27
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->catch:Landroid/widget/FrameLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->class:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 29
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object p1

    invoke-virtual {p1}, Lcc/shinichi/library/do;->throw()I

    move-result p1

    const/4 v2, -0x1

    const/4 v3, 0x1

    if-eq p1, v2, :cond_5

    .line 30
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->do:Landroid/content/Context;

    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v2

    invoke-virtual {v2}, Lcc/shinichi/library/do;->throw()I

    move-result v2

    const/4 v4, 0x0

    invoke-static {p1, v2, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->while:Landroid/view/View;

    if-eqz p1, :cond_4

    .line 31
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->class:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 32
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->class:Landroid/widget/FrameLayout;

    iget-object v2, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->while:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 33
    iput-boolean v3, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->import:Z

    goto :goto_1

    .line 34
    :cond_4
    iput-boolean v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->import:Z

    goto :goto_1

    .line 35
    :cond_5
    iput-boolean v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->import:Z

    .line 36
    :goto_1
    sget p1, Lcc/shinichi/library/R$id;->btn_show_origin:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->const:Landroid/widget/Button;

    .line 37
    sget p1, Lcc/shinichi/library/R$id;->img_download:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->final:Landroid/widget/ImageView;

    .line 38
    sget p1, Lcc/shinichi/library/R$id;->imgCloseButton:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->super:Landroid/widget/ImageView;

    .line 39
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->final:Landroid/widget/ImageView;

    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v2

    invoke-virtual {v2}, Lcc/shinichi/library/do;->try()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 40
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->super:Landroid/widget/ImageView;

    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v2

    invoke-virtual {v2}, Lcc/shinichi/library/do;->new()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 41
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->super:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->const:Landroid/widget/Button;

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 43
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->final:Landroid/widget/ImageView;

    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    iget-boolean p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->else:Z

    if-nez p1, :cond_6

    .line 45
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->break:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 46
    iput-boolean v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->native:Z

    goto :goto_2

    .line 47
    :cond_6
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->if:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-le p1, v3, :cond_7

    .line 48
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->break:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 49
    iput-boolean v3, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->native:Z

    goto :goto_2

    .line 50
    :cond_7
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->break:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 51
    iput-boolean v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->native:Z

    .line 52
    :goto_2
    iget-boolean p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->new:Z

    if-eqz p1, :cond_8

    .line 53
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->final:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 54
    iput-boolean v3, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->return:Z

    goto :goto_3

    .line 55
    :cond_8
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->final:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    iput-boolean v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->return:Z

    .line 57
    :goto_3
    iget-boolean p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->try:Z

    if-eqz p1, :cond_9

    .line 58
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->super:Landroid/widget/ImageView;

    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 59
    iput-boolean v3, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->static:Z

    goto :goto_4

    .line 60
    :cond_9
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->super:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iput-boolean v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->static:Z

    .line 62
    :goto_4
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->break:Landroid/widget/TextView;

    sget v0, Lcc/shinichi/library/R$string;->indicator:I

    .line 63
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget v5, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->for:I

    add-int/2addr v5, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->if:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 64
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    new-instance p1, Lcc/shinichi/library/view/ImagePreviewAdapter;

    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->if:Ljava/util/List;

    invoke-direct {p1, p0, v0}, Lcc/shinichi/library/view/ImagePreviewAdapter;-><init>(Landroid/app/Activity;Ljava/util/List;)V

    iput-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->goto:Lcc/shinichi/library/view/ImagePreviewAdapter;

    .line 66
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->this:Lcc/shinichi/library/view/HackyViewPager;

    invoke-virtual {v0, p1}, Landroidx/viewpager/widget/ViewPager;->setAdapter(Landroidx/viewpager/widget/PagerAdapter;)V

    .line 67
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->this:Lcc/shinichi/library/view/HackyViewPager;

    iget v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->for:I

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 68
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->this:Lcc/shinichi/library/view/HackyViewPager;

    new-instance v0, Lcc/shinichi/library/view/ImagePreviewActivity$do;

    invoke-direct {v0, p0}, Lcc/shinichi/library/view/ImagePreviewActivity$do;-><init>(Lcc/shinichi/library/view/ImagePreviewActivity;)V

    invoke-virtual {p1, v0}, Landroidx/viewpager/widget/ViewPager;->addOnPageChangeListener(Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;)V

    return-void

    .line 69
    :cond_a
    :goto_5
    invoke-virtual {p0}, Lcc/shinichi/library/view/ImagePreviewActivity;->onBackPressed()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 2
    invoke-static {}, Lcc/shinichi/library/do;->break()Lcc/shinichi/library/do;

    move-result-object v0

    invoke-virtual {v0}, Lcc/shinichi/library/do;->default()V

    .line 3
    iget-object v0, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->goto:Lcc/shinichi/library/view/ImagePreviewAdapter;

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcc/shinichi/library/view/ImagePreviewAdapter;->new()V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, 0x0

    .line 1
    :goto_0
    array-length v0, p2

    if-ge p1, v0, :cond_1

    .line 2
    aget v0, p3, p1

    if-nez v0, :cond_0

    .line 3
    invoke-direct {p0}, Lcc/shinichi/library/view/ImagePreviewActivity;->native()V

    goto :goto_1

    .line 4
    :cond_0
    invoke-static {}, Lcc/shinichi/library/tool/ui/do;->for()Lcc/shinichi/library/tool/ui/do;

    move-result-object v0

    iget-object v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->do:Landroid/content/Context;

    const-string v2, "\u60a8\u62d2\u7edd\u4e86\u5b58\u50a8\u6743\u9650\uff0c\u4e0b\u8f7d\u5931\u8d25\uff01"

    invoke-virtual {v0, v1, v2}, Lcc/shinichi/library/tool/ui/do;->if(Landroid/content/Context;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public switch(F)V
    .locals 2

    .line 1
    invoke-virtual {p0, p1}, Lcc/shinichi/library/view/ImagePreviewActivity;->import(F)I

    move-result v0

    .line 2
    iget-object v1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->throw:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float p1, p1, v0

    if-ltz p1, :cond_3

    .line 3
    iget-boolean p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->native:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->break:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->public:Z

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->catch:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 7
    :cond_1
    iget-boolean p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->return:Z

    if-eqz p1, :cond_2

    .line 8
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->final:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 9
    :cond_2
    iget-boolean p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->static:Z

    if-eqz p1, :cond_4

    .line 10
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->super:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->break:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->catch:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 13
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->final:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 14
    iget-object p1, p0, Lcc/shinichi/library/view/ImagePreviewActivity;->super:Landroid/widget/ImageView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_4
    :goto_0
    return-void
.end method
