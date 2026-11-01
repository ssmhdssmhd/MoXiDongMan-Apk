.class Lcom/wsw/cospa/presenter/do$do;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/presenter/do;->this(Landroidx/appcompat/app/AppCompatActivity;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/presenter/do;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/presenter/do;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/presenter/do$do;->do:Lcom/wsw/cospa/presenter/do;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    iget-object v1, p0, Lcom/wsw/cospa/presenter/do$do;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v1}, Lcom/wsw/cospa/presenter/do;->transient(Lcom/wsw/cospa/presenter/do;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->return(Ljava/lang/String;)Lcom/wsw/cospa/bean/SearchComicBean;

    move-result-object v0

    const-wide/16 v1, 0xc8

    if-eqz v0, :cond_0

    .line 2
    new-instance v3, Lcom/wsw/cospa/bean/HistoryComicBean;

    invoke-direct {v3}, Lcom/wsw/cospa/bean/HistoryComicBean;-><init>()V

    .line 3
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setNoteUrl(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setCoverUrl(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setName(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setAuthor(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setTag(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getKind()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setKind(Ljava/lang/String;)V

    .line 9
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getOrigin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setOrigin(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getDesc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setDesc(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getLastChapter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setLastChapter(Ljava/lang/String;)V

    .line 12
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getIntroduce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setIntroduce(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setChapterUrl(Ljava/lang/String;)V

    .line 14
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setUpTime(Ljava/lang/Long;)V

    .line 15
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getVariable()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setVariable(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getSearchPage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setSearchPage(Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0}, Lcom/wsw/cospa/bean/SearchComicBean;->getSearchCoverHeaders()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/wsw/cospa/bean/HistoryComicBean;->setSearchCoverHeaders(Ljava/lang/String;)V

    .line 18
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/dao/DatabaseHelper;->a(Lcom/wsw/cospa/bean/HistoryComicBean;)V

    .line 19
    new-instance v0, Lcom/wsw/cospa/presenter/do$do$do;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/presenter/do$do$do;-><init>(Lcom/wsw/cospa/presenter/do$do;)V

    invoke-static {v0, v1, v2}, Landroid/support/v4/wi0;->case(Ljava/lang/Runnable;J)V

    goto/16 :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/wsw/cospa/bean/HistoryComicBean;

    invoke-direct {v0}, Lcom/wsw/cospa/bean/HistoryComicBean;-><init>()V

    .line 21
    iget-object v3, p0, Lcom/wsw/cospa/presenter/do$do;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v3}, Lcom/wsw/cospa/presenter/do;->transient(Lcom/wsw/cospa/presenter/do;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getComicInfoBean()Lcom/wsw/cospa/bean/ComicInfoBean;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 22
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setCoverUrl(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setName(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getAuthor()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setAuthor(Ljava/lang/String;)V

    .line 25
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setTag(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getKind()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setKind(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setOrigin(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getIntroduce()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setIntroduce(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setChapterUrl(Ljava/lang/String;)V

    .line 30
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/wsw/cospa/bean/HistoryComicBean;->setUpTime(Ljava/lang/Long;)V

    .line 31
    new-instance v4, Lcom/wsw/cospa/bean/SearchComicBean;

    invoke-direct {v4}, Lcom/wsw/cospa/bean/SearchComicBean;-><init>()V

    .line 32
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getAuthor()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/SearchComicBean;->setAuthor(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getCoverUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/SearchComicBean;->setCoverUrl(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getIntroduce()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/SearchComicBean;->setIntroduce(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/SearchComicBean;->setName(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getKind()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/SearchComicBean;->setKind(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/SearchComicBean;->setNoteUrl(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getOrigin()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/SearchComicBean;->setOrigin(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getTag()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/SearchComicBean;->setTag(Ljava/lang/String;)V

    .line 40
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/SearchComicBean;->setUpTime(Ljava/lang/Long;)V

    .line 41
    iget-object v5, p0, Lcom/wsw/cospa/presenter/do$do;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v5}, Lcom/wsw/cospa/presenter/do;->transient(Lcom/wsw/cospa/presenter/do;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v5

    invoke-virtual {v5}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/wsw/cospa/bean/SearchComicBean;->setLastChapter(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicInfoBean;->getChapterUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/wsw/cospa/bean/SearchComicBean;->setChapterUrl(Ljava/lang/String;)V

    .line 43
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/wsw/cospa/dao/DatabaseHelper;->o(Lcom/wsw/cospa/bean/SearchComicBean;)V

    .line 44
    :cond_1
    iget-object v3, p0, Lcom/wsw/cospa/presenter/do$do;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v3}, Lcom/wsw/cospa/presenter/do;->transient(Lcom/wsw/cospa/presenter/do;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getNoteUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/bean/HistoryComicBean;->setNoteUrl(Ljava/lang/String;)V

    .line 45
    iget-object v3, p0, Lcom/wsw/cospa/presenter/do$do;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v3}, Lcom/wsw/cospa/presenter/do;->transient(Lcom/wsw/cospa/presenter/do;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getLastChapterName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/bean/HistoryComicBean;->setLastChapter(Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/wsw/cospa/presenter/do$do;->do:Lcom/wsw/cospa/presenter/do;

    invoke-static {v3}, Lcom/wsw/cospa/presenter/do;->transient(Lcom/wsw/cospa/presenter/do;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v3

    invoke-virtual {v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getVariable()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/wsw/cospa/bean/HistoryComicBean;->setVariable(Ljava/lang/String;)V

    .line 47
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/wsw/cospa/dao/DatabaseHelper;->a(Lcom/wsw/cospa/bean/HistoryComicBean;)V

    .line 48
    new-instance v0, Lcom/wsw/cospa/presenter/do$do$if;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/presenter/do$do$if;-><init>(Lcom/wsw/cospa/presenter/do$do;)V

    invoke-static {v0, v1, v2}, Landroid/support/v4/wi0;->case(Ljava/lang/Runnable;J)V

    :goto_0
    return-void
.end method
