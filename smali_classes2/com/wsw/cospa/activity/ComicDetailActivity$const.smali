.class Lcom/wsw/cospa/activity/ComicDetailActivity$const;
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
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$const;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBack()V
    .locals 0

    return-void
.end method

.method public onCancel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$const;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->x()V

    return-void
.end method

.method public onConfirm()V
    .locals 2

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$const;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->default(Ljava/lang/String;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$const;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {v1, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->A(Lcom/wsw/cospa/bean/SearchComicBean;)V

    return-void
.end method
