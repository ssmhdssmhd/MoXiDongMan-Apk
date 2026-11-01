.class Lcom/wsw/cospa/activity/ComicDetailActivity$class;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/wsw/cospa/utils/DialogTool$DialogOptCb;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicDetailActivity;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$class;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 0

    return-void
.end method

.method public onConfirm()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$class;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v0

    invoke-static {v0}, Lcom/wsw/cospa/dao/do;->k(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$class;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->instanceof(Lcom/wsw/cospa/activity/ComicDetailActivity;Z)Z

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$class;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAddBookshelf:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "\u52a0\u5165\u4e66\u67b6"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$class;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v0, v0, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v2, "\u5f00\u59cb\u9605\u8bfb"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object v0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$class;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v3}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-virtual {v0, v2}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V

    .line 6
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    return-void
.end method
