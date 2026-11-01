.class Lcom/wsw/cospa/activity/SearchComicActivity$case;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wsw/cospa/activity/SearchComicActivity;->this()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic do:Lcom/wsw/cospa/activity/SearchComicActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/SearchComicActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->default(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/model/SearchComicModel;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/model/SearchComicModel;->transient()V

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object p2, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->et_search_comic:Lcom/wsw/cospa/widget/view/SearchEditText;

    invoke-virtual {p2}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/wsw/cospa/activity/SearchComicActivity;->finally(Lcom/wsw/cospa/activity/SearchComicActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->extends(Lcom/wsw/cospa/activity/SearchComicActivity;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-gtz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->mFlowView:Landroid/widget/LinearLayout;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 4
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->mRefreshLayout:Lcom/wsw/cospa/widget/view/refresh/JFengRefreshLayout;

    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    iget-object p1, p1, Lcom/wsw/cospa/activity/SearchComicActivity;->ll_comic_shelf:Landroid/widget/LinearLayout;

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->continue(Lcom/wsw/cospa/activity/SearchComicActivity;)Landroid/support/v4/o42;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v4/o42;->try()[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    iget-object p2, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-static {p2, p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->volatile(Lcom/wsw/cospa/activity/SearchComicActivity;Ljava/util/List;)Ljava/util/List;

    .line 8
    iget-object p1, p0, Lcom/wsw/cospa/activity/SearchComicActivity$case;->do:Lcom/wsw/cospa/activity/SearchComicActivity;

    invoke-static {p1}, Lcom/wsw/cospa/activity/SearchComicActivity;->interface(Lcom/wsw/cospa/activity/SearchComicActivity;)Lcom/wsw/cospa/activity/SearchComicActivity$this;

    move-result-object p1

    invoke-virtual {p1}, Lcom/wsw/cospa/widget/view/FlowAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 9
    :cond_0
    new-instance p1, Lcom/wsw/cospa/activity/SearchComicActivity$case$if;

    invoke-direct {p1, p0}, Lcom/wsw/cospa/activity/SearchComicActivity$case$if;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity$case;)V

    invoke-static {p1}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object p1

    sget-object p2, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 10
    invoke-virtual {p1, p2}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object p1

    new-instance p2, Lcom/wsw/cospa/activity/SearchComicActivity$case$do;

    invoke-direct {p2, p0}, Lcom/wsw/cospa/activity/SearchComicActivity$case$do;-><init>(Lcom/wsw/cospa/activity/SearchComicActivity$case;)V

    invoke-virtual {p1, p2}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    :cond_1
    :goto_0
    return-void
.end method
