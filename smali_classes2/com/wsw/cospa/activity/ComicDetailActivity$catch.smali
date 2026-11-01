.class Lcom/wsw/cospa/activity/ComicDetailActivity$catch;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicDetailActivity;->T(Lcom/wsw/cospa/bean/ComicInfoBean;)V
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
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$catch;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$catch;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$catch;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$catch;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getAuthor()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->g(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
