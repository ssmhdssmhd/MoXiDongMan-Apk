.class Lcom/wsw/cospa/activity/ComicDetailActivity$case;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicDetailActivity;->case()V
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
.field public final synthetic do:Lcom/wsw/cospa/activity/ComicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicDetailActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->continue(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->strictfp(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->i(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/apache/commons/lang3/class;->E(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->j(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->strictfp(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterName(Ljava/lang/String;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->i(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setLastChapterName(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->k(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapter(Ljava/lang/Integer;)V

    .line 7
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->l(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->setDurChapterPage(Ljava/lang/Integer;)V

    .line 8
    :cond_0
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object p1

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v2}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-virtual {p1, v1}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V

    .line 9
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object p1

    new-array v1, v3, [Ljava/lang/Object;

    invoke-virtual {p1, v1}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    .line 10
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->n(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicInfoBean;)Lcom/wsw/cospa/bean/ComicInfoBean;

    .line 11
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList()Ljava/util/List;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->p(Lcom/wsw/cospa/activity/ComicDetailActivity;Ljava/util/List;)Ljava/util/List;

    .line 12
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getTag()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/wsw/cospa/model/do;->abstract(Ljava/lang/String;)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 13
    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentId()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleChapterParentId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->r(Lcom/wsw/cospa/activity/ComicDetailActivity;Z)Z

    .line 14
    :cond_2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "chapter_mode_key"

    invoke-virtual {v0, v1, v3}, Landroid/support/v4/v02;->for(Ljava/lang/String;I)I

    move-result v0

    invoke-static {p1, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->t(Lcom/wsw/cospa/activity/ComicDetailActivity;I)I

    .line 15
    invoke-static {}, Lcom/wsw/cospa/activity/ComicDetailActivity;->volatile()Ljava/lang/String;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "initData: chapterList size  : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterListSize()Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " info size : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->o(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 16
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->o(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->o(Lcom/wsw/cospa/activity/ComicDetailActivity;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_5

    .line 17
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    .line 18
    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 19
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->interface(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    if-nez p1, :cond_3

    .line 20
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    new-instance v0, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/SearchComicBean;-><init>()V

    invoke-static {p1, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->protected(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/SearchComicBean;)Lcom/wsw/cospa/bean/SearchComicBean;

    .line 21
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->interface(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getAuthor()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/SearchComicBean;->setAuthor(Ljava/lang/String;)V

    .line 22
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->interface(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/SearchComicBean;->setCoverUrl(Ljava/lang/String;)V

    .line 23
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->interface(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getIntroduce()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/SearchComicBean;->setIntroduce(Ljava/lang/String;)V

    .line 24
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->interface(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/SearchComicBean;->setName(Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->interface(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getKind()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/SearchComicBean;->setKind(Ljava/lang/String;)V

    .line 26
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->interface(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/SearchComicBean;->setNoteUrl(Ljava/lang/String;)V

    .line 27
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->interface(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/SearchComicBean;->setOrigin(Ljava/lang/String;)V

    .line 28
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->interface(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object p1

    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {v0}, Lcom/wsw/cospa/bean/ComicInfoBean;->getTag()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/SearchComicBean;->setTag(Ljava/lang/String;)V

    .line 29
    :cond_3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->m(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->T(Lcom/wsw/cospa/bean/ComicInfoBean;)V

    .line 30
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->transient(Lcom/wsw/cospa/activity/ComicDetailActivity;)V

    .line 31
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->C()V

    goto :goto_1

    .line 32
    :cond_4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->private()V

    goto :goto_1

    .line 33
    :cond_5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->private()V

    goto :goto_1

    .line 34
    :cond_6
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Landroid/support/v4/g31;->try(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 35
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->private()V

    :cond_7
    :goto_1
    return-void
.end method

.method public onError(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onError(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {p1}, Landroid/support/v4/g31;->try(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-virtual {p1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->private()V

    :cond_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity$case;->do(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method
