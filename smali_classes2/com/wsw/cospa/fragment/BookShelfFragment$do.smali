.class Lcom/wsw/cospa/fragment/BookShelfFragment$do;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/fragment/BookShelfFragment;->i(I)V
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
.field public final synthetic do:Lcom/wsw/cospa/fragment/BookShelfFragment;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/fragment/BookShelfFragment;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$do;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, "_chapter"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "_shelf"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v2

    invoke-virtual {v2, v1, p1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 5
    invoke-static {}, Landroid/support/v4/y8;->for()Landroid/support/v4/y8;

    move-result-object v2

    invoke-virtual {p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->getDurChapter()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/wsw/cospa/bean/ComicShelfBean;->getChapterList(I)Lcom/wsw/cospa/bean/ChapterListBean;

    move-result-object p1

    invoke-virtual {v2, v0, p1}, Landroid/support/v4/y8;->new(Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/fragment/BookShelfFragment$do;->do:Lcom/wsw/cospa/fragment/BookShelfFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1, v0, v1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->w1(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string p1, "\u5f53\u524d\u6f2b\u753b\u65e0\u6cd5\u83b7\u53d6\u7ae0\u8282\uff0c\u8bf7\u4e0b\u62c9\u5237\u65b0\u91cd\u8bd5\uff01"

    .line 7
    invoke-static {p1}, Landroid/support/v4/v72;->if(Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/fragment/BookShelfFragment$do;->do(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method
