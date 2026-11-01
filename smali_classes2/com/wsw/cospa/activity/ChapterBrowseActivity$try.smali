.class Lcom/wsw/cospa/activity/ChapterBrowseActivity$try;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ChapterBrowseActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Lcom/wsw/cospa/bean/ComicShelfBean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$try;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 3

    .line 1
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$try;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Z(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    const-string v2, "comic_shelf_key"

    invoke-virtual {v0, v2, v1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$try;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    const/4 v0, 0x1

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Z(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->S(Landroid/content/Context;ZLjava/lang/String;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$try;->do:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    const/4 v0, 0x0

    invoke-static {p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->Z(Lcom/wsw/cospa/activity/ChapterBrowseActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->S(Landroid/content/Context;ZLjava/lang/String;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$try;->do(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method
