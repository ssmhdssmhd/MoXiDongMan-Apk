.class public Lcom/wsw/cospa/activity/ChannelEditDialog;
.super Lcom/wsw/cospa/base/BaseActivity;
.source "SourceFile"

# interfaces
.implements Lcom/cheng/channel/ChannelView$OnChannelListener;


# static fields
.field public static final catch:I = 0x3e8


# instance fields
.field private break:Lcom/wsw/cospa/vo/FindParentVo;

.field public channelView:Lcom/cheng/channel/ChannelView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0900ea
    .end annotation
.end field

.field private goto:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/ih;",
            ">;"
        }
    .end annotation
.end field

.field public mToolbar:Landroidx/appcompat/widget/Toolbar;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902ab
    .end annotation
.end field

.field private this:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v4/ih;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/wsw/cospa/base/BaseActivity;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->goto:Ljava/util/List;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->this:Ljava/util/List;

    return-void
.end method

.method public static import(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/wsw/cospa/activity/ChannelEditDialog;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "FindParentVo"

    .line 2
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 p1, 0x3e8

    .line 3
    invoke-virtual {p0, v0, p1}, Landroidx/fragment/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method


# virtual methods
.method public case()V
    .locals 7

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "FindParentVo"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 2
    const-class v1, Lcom/wsw/cospa/vo/FindParentVo;

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/package;->if(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/vo/FindParentVo;

    iput-object v0, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->break:Lcom/wsw/cospa/vo/FindParentVo;

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/vo/FindParentVo;->getChildVoList()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 5
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/wsw/cospa/vo/FindChildVo;

    const/16 v4, 0xa

    if-ge v2, v4, :cond_0

    .line 6
    new-instance v4, Landroid/support/v4/ih;

    invoke-virtual {v3}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5, v3}, Landroid/support/v4/ih;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    .line 7
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->goto:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 8
    :cond_0
    new-instance v4, Landroid/support/v4/ih;

    invoke-virtual {v3}, Lcom/wsw/cospa/vo/FindChildVo;->getKindName()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x2

    invoke-direct {v4, v5, v6, v3}, Landroid/support/v4/ih;-><init>(Ljava/lang/String;ILjava/lang/Object;)V

    .line 9
    iget-object v3, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->this:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->channelView:Lcom/cheng/channel/ChannelView;

    invoke-virtual {v0, v1}, Lcom/cheng/channel/ChannelView;->setChannelFixedCount(I)V

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->channelView:Lcom/cheng/channel/ChannelView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->goto:Ljava/util/List;

    const-string v2, "\u6211\u7684\u5206\u7c7b"

    invoke-virtual {v0, v2, v1}, Lcom/cheng/channel/ChannelView;->g(Ljava/lang/String;Ljava/util/List;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->channelView:Lcom/cheng/channel/ChannelView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->this:Ljava/util/List;

    const-string v2, "\u63a8\u8350\u5206\u7c7b"

    invoke-virtual {v0, v2, v1}, Lcom/cheng/channel/ChannelView;->g(Ljava/lang/String;Ljava/util/List;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->channelView:Lcom/cheng/channel/ChannelView;

    invoke-virtual {v0}, Lcom/cheng/channel/ChannelView;->h()V

    .line 14
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->channelView:Lcom/cheng/channel/ChannelView;

    invoke-virtual {v0, p0}, Lcom/cheng/channel/ChannelView;->setOnChannelItemClickListener(Lcom/cheng/channel/ChannelView$OnChannelListener;)V

    return-void
.end method

.method public channelEditFinish(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v4/ih;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public channelEditStart()V
    .locals 0

    return-void
.end method

.method public channelItemClick(ILandroid/support/v4/ih;)V
    .locals 0

    return-void
.end method

.method public goto()Landroid/support/v4/m7;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public new()I
    .locals 1

    const v0, 0x7f0c0025

    return v0
.end method

.method public onBackPressed()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->channelView:Lcom/cheng/channel/ChannelView;

    invoke-virtual {v0}, Lcom/cheng/channel/ChannelView;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->channelView:Lcom/cheng/channel/ChannelView;

    invoke-virtual {v0}, Lcom/cheng/channel/ChannelView;->getMyChannel()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-static {}, Landroid/support/v4/om1;->case()Landroid/support/v4/om1;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->break:Lcom/wsw/cospa/vo/FindParentVo;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Landroid/support/v4/om1;->if([Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lcom/wsw/cospa/base/BaseActivity;->finish()V

    goto :goto_0

    .line 5
    :cond_0
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 1
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c

    if-ne v0, v1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/ChannelEditDialog;->onBackPressed()V

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public this()V
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/support/v4/p12;->case(Landroid/app/Activity;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChannelEditDialog;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    invoke-static {p0, v0}, Lcom/wsw/cospa/utils/synchronized;->for(Landroidx/appcompat/app/AppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V

    .line 3
    invoke-static {p0}, Lcom/gyf/immersionbar/else;->k2(Landroid/app/Activity;)Lcom/gyf/immersionbar/else;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gyf/immersionbar/else;->O1(Z)Lcom/gyf/immersionbar/else;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gyf/immersionbar/else;->b0()V

    return-void
.end method
