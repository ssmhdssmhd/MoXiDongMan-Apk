.class Lcom/wsw/cospa/activity/SearchComicActivity$case$do;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/SearchComicActivity$case;->onTextChanged(Ljava/lang/CharSequence;III)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/util/List<",
        "Lcom/wsw/cospa/bean/ComicInfoBean;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SearchComicActivity$case;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SearchComicActivity$case;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case$do;->do:Lcom/wsw/cospa/activity/SearchComicActivity$case;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0
    .param p1    # Ljava/lang/Object;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param

    .line 1
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/SearchComicActivity$case$do;->onNext(Ljava/util/List;)V

    return-void
.end method

.method public onNext(Ljava/util/List;)V
    .locals 1
    .param p1    # Ljava/util/List;
        .annotation build Landroid/support/v4/b41;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/wsw/cospa/bean/ComicInfoBean;",
            ">;)V"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case$do;->do:Lcom/wsw/cospa/activity/SearchComicActivity$case;

    iget-object v0, v0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {v0}, Lcom/wsw/cospa/activity/SearchComicActivity;->protected(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/adapter/SearchBookshelfAdapter;->new(Ljava/util/List;)V

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case$do;->do:Lcom/wsw/cospa/activity/SearchComicActivity$case;

    iget-object p1, p1, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->ll_comic_shelf:Landroid/widget/LinearLayout;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case$do;->do:Lcom/wsw/cospa/activity/SearchComicActivity$case;

    iget-object p1, p1, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowView:Landroid/widget/LinearLayout;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method
