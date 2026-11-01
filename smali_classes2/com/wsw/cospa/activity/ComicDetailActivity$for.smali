.class Lcom/wsw/cospa/activity/ComicDetailActivity$for;
.super Landroid/support/v4/bz1;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/ComicDetailActivity;->z(Lcom/wsw/cospa/bean/ComicShelfBean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v4/bz1<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/bean/ComicShelfBean;

.field public final synthetic if:Lcom/wsw/cospa/activity/ComicDetailActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$for;->if:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iput-object p2, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$for;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-direct {p0}, Landroid/support/v4/bz1;-><init>()V

    return-void
.end method


# virtual methods
.method public onNext(Ljava/lang/Boolean;)V
    .locals 3

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$for;->if:Lcom/wsw/cospa/activity/ComicDetailActivity;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/wsw/cospa/activity/ComicDetailActivity;->instanceof(Lcom/wsw/cospa/activity/ComicDetailActivity;Z)Z

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$for;->if:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvAddBookshelf:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "\u79fb\u9664\u4e66\u67b6"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$for;->if:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/ComicDetailActivity;->tvRead:Landroidx/appcompat/widget/AppCompatTextView;

    const-string v1, "\u5f00\u59cb\u9605\u8bfb"

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$for;->if:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$for;->do:Lcom/wsw/cospa/bean/ComicShelfBean;

    invoke-static {p1, v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->continue(Lcom/wsw/cospa/activity/ComicDetailActivity;Lcom/wsw/cospa/bean/ComicShelfBean;)Lcom/wsw/cospa/bean/ComicShelfBean;

    .line 6
    invoke-static {}, Landroid/support/v4/im1;->case()Landroid/support/v4/im1;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$for;->if:Lcom/wsw/cospa/activity/ComicDetailActivity;

    invoke-static {v1}, Lcom/wsw/cospa/activity/ComicDetailActivity;->abstract(Lcom/wsw/cospa/activity/ComicDetailActivity;)Lcom/wsw/cospa/bean/ComicShelfBean;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p1, v0}, Landroid/support/v4/im1;->if([Ljava/lang/Object;)V

    .line 7
    invoke-static {}, Landroid/support/v4/hm1;->case()Landroid/support/v4/hm1;

    move-result-object p1

    new-array v0, v2, [Ljava/lang/Object;

    invoke-virtual {p1, v0}, Landroid/support/v4/hm1;->if([Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onNext(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/wsw/cospa/activity/ComicDetailActivity$for;->onNext(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSubscribe(Lio/reactivex/disposables/Disposable;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/support/v4/bz1;->onSubscribe(Lio/reactivex/disposables/Disposable;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/ComicDetailActivity$for;->if:Lcom/wsw/cospa/activity/ComicDetailActivity;

    iget-object v0, v0, Lcom/wsw/cospa/base/BaseActivity;->do:Landroid/support/v4/cq;

    invoke-virtual {v0, p1}, Landroid/support/v4/cq;->add(Lio/reactivex/disposables/Disposable;)Z

    return-void
.end method
