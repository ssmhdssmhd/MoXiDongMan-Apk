.class Lcom/wsw/cospa/activity/ChapterBrowseActivity$new;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ChapterBrowseActivity;->r0(Lcom/wsw/cospa/bean/ComicShelfBean;)V
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
.field public final synthetic do:Lcom/wsw/cospa/bean/ComicShelfBean;

.field public final synthetic if:Lcom/wsw/cospa/activity/ChapterBrowseActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ChapterBrowseActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$new;->if:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iput-object p2, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$new;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public do(Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$new;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/bean/ComicShelfBean;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$new;->if:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->tvSaveBook:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/ChapterBrowseActivity$new;->if:Lcom/wsw/cospa/activity/ChapterBrowseActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/ChapterBrowseActivity;->tvSaveBook:Landroid/widget/TextView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ChapterBrowseActivity$new;->do(Lcom/wsw/cospa/bean/ComicShelfBean;)V

    return-void
.end method
