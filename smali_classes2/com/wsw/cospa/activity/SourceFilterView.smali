.class public Lcom/wsw/cospa/activity/SourceFilterView;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wsw/cospa/activity/SourceFilterView$SourceViewHolder;,
        Lcom/wsw/cospa/activity/SourceFilterView$for;,
        Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;,
        Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;
    }
.end annotation


# instance fields
.field private case:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

.field public closePopw:Landroid/view/View;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090103
    .end annotation
.end field

.field private do:Landroid/app/Activity;

.field private else:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

.field public error_view:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016a
    .end annotation
.end field

.field private for:Landroid/widget/PopupWindow;

.field private goto:Z

.field private if:Landroid/view/View;

.field public mFlowLayout:Lcom/wsw/cospa/widget/view/FlowLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0901d7
    .end annotation
.end field

.field public mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a2
    .end annotation
.end field

.field public mLoadingRootView:Landroid/widget/RelativeLayout;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a1
    .end annotation
.end field

.field public mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0902a4
    .end annotation
.end field

.field private new:Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;

.field public searchView:Landroidx/appcompat/widget/SearchView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f090389
    .end annotation
.end field

.field private this:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;

.field private try:Lcom/wsw/cospa/activity/SourceFilterView$for;

.field public tvErrorView:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f09016b
    .end annotation
.end field

.field public tvRetry:Landroid/widget/TextView;
    .annotation runtime Lbutterknife/BindView;
        value = 0x7f0904a7
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/app/Activity;Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->do:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/wsw/cospa/activity/SourceFilterView;->new:Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;

    return-void
.end method

.method public static synthetic break(Lcom/wsw/cospa/activity/SourceFilterView;Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;)Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->this:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;

    return-object p1
.end method

.method public static synthetic case(Lcom/wsw/cospa/activity/SourceFilterView;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->goto:Z

    return p1
.end method

.method public static synthetic do(Lcom/wsw/cospa/activity/SourceFilterView;Landroid/view/View;ILcom/wsw/cospa/widget/view/FlowLayout;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/wsw/cospa/activity/SourceFilterView;->native(Landroid/view/View;ILcom/wsw/cospa/widget/view/FlowLayout;)V

    return-void
.end method

.method public static synthetic else(Lcom/wsw/cospa/activity/SourceFilterView;)Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->case:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    return-object p0
.end method

.method public static synthetic for(Lcom/wsw/cospa/activity/SourceFilterView;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/SourceFilterView;->public(I)V

    return-void
.end method

.method public static synthetic goto(Lcom/wsw/cospa/activity/SourceFilterView;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->do:Landroid/app/Activity;

    return-object p0
.end method

.method public static synthetic if(Lcom/wsw/cospa/activity/SourceFilterView;)V
    .locals 0

    invoke-direct {p0}, Lcom/wsw/cospa/activity/SourceFilterView;->import()V

    return-void
.end method

.method private synthetic import()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->this:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;->do()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->else:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->new:Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;

    if-eqz v0, :cond_2

    .line 6
    invoke-interface {v0}, Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;->onDismiss()V

    :cond_2
    return-void
.end method

.method private synthetic native(Landroid/view/View;ILcom/wsw/cospa/widget/view/FlowLayout;)V
    .locals 0

    .line 1
    invoke-static {p1}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->try:Lcom/wsw/cospa/activity/SourceFilterView$for;

    invoke-virtual {p1, p2}, Lcom/wsw/cospa/widget/view/FlowAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 3
    iget-object p2, p0, Lcom/wsw/cospa/activity/SourceFilterView;->new:Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;

    if-eqz p2, :cond_0

    .line 4
    invoke-interface {p2, p1}, Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;->onChange(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method public static synthetic new(Lcom/wsw/cospa/activity/SourceFilterView;Lio/reactivex/ObservableEmitter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/wsw/cospa/activity/SourceFilterView;->return(Lio/reactivex/ObservableEmitter;)V

    return-void
.end method

.method private synthetic public(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {v0}, Landroid/support/v4/j10;->do(Landroid/view/View;)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->case:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-virtual {v0, p1}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;->try(I)Lcom/wsw/cospa/bean/ComicSourceBean;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->new:Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p1}, Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;->onChange(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_1
    return-void
.end method

.method private synthetic return(Lio/reactivex/ObservableEmitter;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->do:Landroid/app/Activity;

    invoke-static {v0}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v0

    const-string v1, "pref_find_letter_sort"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->do:Landroid/app/Activity;

    invoke-static {v1}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v1

    const-string v2, "pref_show_all_find"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->super(Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/wsw/cospa/dao/DatabaseHelper;->const(Z)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 5
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/wsw/cospa/bean/ComicSourceBean;

    .line 7
    :try_start_0
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getRuleFindUrl()Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "<js>"

    .line 9
    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v5, "(&&|\n)+"

    if-eqz v4, :cond_3

    const/4 v4, 0x4

    :try_start_1
    const-string v6, "<"

    .line 10
    invoke-virtual {v3, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 11
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v4

    invoke-virtual {v4}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v4/hw;->this()Lcom/wsw/cospa/dao/CookieBeanDao;

    move-result-object v4

    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lorg/greenrobot/greendao/AbstractDao;->load(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/wsw/cospa/bean/CookieBean;

    .line 12
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    if-eqz v4, :cond_2

    .line 13
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/CookieBean;->getVariableStr()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lorg/apache/commons/lang3/class;->A(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    const-string v7, "HeaderCookie"

    .line 14
    invoke-virtual {v4}, Lcom/wsw/cospa/bean/CookieBean;->getVariableStr()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v6, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    new-instance v4, Lcom/google/gson/GsonBuilder;

    invoke-direct {v4}, Lcom/google/gson/GsonBuilder;-><init>()V

    .line 16
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->disableHtmlEscaping()Lcom/google/gson/GsonBuilder;

    move-result-object v4

    .line 17
    invoke-virtual {v4}, Lcom/google/gson/GsonBuilder;->create()Lcom/google/gson/Gson;

    move-result-object v4

    .line 18
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v6}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v7, v4}, Lcom/wsw/cospa/utils/implements;->if(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 20
    :cond_2
    invoke-virtual {v2}, Lcom/wsw/cospa/bean/ComicSourceBean;->getBookSourceUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/wsw/cospa/utils/implements;->do(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    goto :goto_2

    .line 22
    :cond_3
    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    :goto_2
    if-eqz v3, :cond_1

    .line 23
    array-length v3, v3

    if-lez v3, :cond_1

    .line 24
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_1

    :catch_0
    const-string v3, "\u53d1\u73b0\u89c4\u5219\u8bed\u6cd5\u9519\u8bef"

    .line 25
    invoke-virtual {v2, v3}, Lcom/wsw/cospa/bean/ComicSourceBean;->addGroup(Ljava/lang/String;)V

    .line 26
    invoke-static {}, Lcom/wsw/cospa/dao/DatabaseHelper;->switch()Lcom/wsw/cospa/dao/DatabaseHelper;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/wsw/cospa/dao/DatabaseHelper;->abstract(Lcom/wsw/cospa/bean/ComicSourceBean;)V

    goto/16 :goto_1

    .line 27
    :cond_4
    invoke-interface {p1, v1}, Lio/reactivex/Emitter;->onNext(Ljava/lang/Object;)V

    return-void
.end method

.method public static synthetic this(Lcom/wsw/cospa/activity/SourceFilterView;)Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->this:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter$do;

    return-object p0
.end method

.method public static synthetic try(Lcom/wsw/cospa/activity/SourceFilterView;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/wsw/cospa/activity/SourceFilterView;->while(Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method private synthetic while(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    if-nez p1, :cond_1

    .line 2
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 4
    :cond_0
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->new:Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;

    if-eqz p1, :cond_1

    .line 5
    invoke-interface {p1}, Lcom/wsw/cospa/activity/SourceFilterView$onSourceFilterListener;->onDismiss()V

    :cond_1
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public catch()Landroid/widget/PopupWindow;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->do:Landroid/app/Activity;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0c0112

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->if:Landroid/view/View;

    .line 2
    invoke-static {p0, v0}, Lbutterknife/ButterKnife;->case(Ljava/lang/Object;Landroid/view/View;)Lbutterknife/Unbinder;

    .line 3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SourceFilterView;->super()V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method public class()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    return-void
.end method

.method public const()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->error_view:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public default()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->error_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public extends(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->error_view:Landroid/widget/RelativeLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->tvErrorView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->tvRetry:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public final()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mIndicatorView:Lcom/wang/avi/AVLoadingIndicatorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/wang/avi/AVLoadingIndicatorView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->error_view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public static()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SourceFilterView;->default()V

    .line 2
    new-instance v0, Landroid/support/v4/q02;

    invoke-direct {v0, p0}, Landroid/support/v4/q02;-><init>(Lcom/wsw/cospa/activity/SourceFilterView;)V

    invoke-static {v0}, Lio/reactivex/new;->create(Lio/reactivex/ObservableOnSubscribe;)Lio/reactivex/new;

    move-result-object v0

    sget-object v1, Landroid/support/v4/b0;->do:Landroid/support/v4/b0;

    .line 3
    invoke-virtual {v0, v1}, Lio/reactivex/new;->compose(Lio/reactivex/ObservableTransformer;)Lio/reactivex/new;

    move-result-object v0

    new-instance v1, Lcom/wsw/cospa/activity/SourceFilterView$if;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/SourceFilterView$if;-><init>(Lcom/wsw/cospa/activity/SourceFilterView;)V

    .line 4
    invoke-virtual {v0, v1}, Lio/reactivex/new;->subscribe(Lio/reactivex/Observer;)V

    return-void
.end method

.method public super()V
    .locals 5

    .line 1
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->if:Landroid/view/View;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;II)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 3
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    const/16 v2, 0x22

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setSoftInputMode(I)V

    .line 4
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2}, Landroid/graphics/drawable/BitmapDrawable;-><init>()V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 5
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 6
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 7
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    const v2, 0x7f12035a

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 8
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->update()V

    .line 9
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 10
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->closePopw:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->closePopw:Landroid/view/View;

    new-instance v2, Landroid/support/v4/m02;

    invoke-direct {v2, p0}, Landroid/support/v4/m02;-><init>(Lcom/wsw/cospa/activity/SourceFilterView;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 12
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    new-instance v2, Landroid/support/v4/n02;

    invoke-direct {v2, p0}, Landroid/support/v4/n02;-><init>(Lcom/wsw/cospa/activity/SourceFilterView;)V

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    .line 13
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mFlowLayout:Lcom/wsw/cospa/widget/view/FlowLayout;

    new-instance v2, Landroid/support/v4/p02;

    invoke-direct {v2, p0}, Landroid/support/v4/p02;-><init>(Lcom/wsw/cospa/activity/SourceFilterView;)V

    invoke-virtual {v0, v2}, Lcom/wsw/cospa/widget/view/FlowLayout;->setOnItemClickListener(Lcom/wsw/cospa/widget/view/FlowLayout$OnItemClickListener;)V

    .line 14
    new-instance v0, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-direct {v0, p0}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;-><init>(Lcom/wsw/cospa/activity/SourceFilterView;)V

    iput-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->case:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    .line 15
    new-instance v0, Landroidx/recyclerview/widget/GridLayoutManager;

    iget-object v2, p0, Lcom/wsw/cospa/activity/SourceFilterView;->do:Landroid/app/Activity;

    const/4 v3, 0x3

    invoke-direct {v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 16
    new-instance v2, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Lcom/wsw/cospa/widget/view/GridSpacingItemDecoration;-><init>(I)V

    .line 17
    iget-object v4, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 18
    iget-object v2, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 19
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 20
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 21
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 22
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->case:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 23
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->case:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 24
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->case:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    new-instance v1, Landroid/support/v4/o02;

    invoke-direct {v1, p0}, Landroid/support/v4/o02;-><init>(Lcom/wsw/cospa/activity/SourceFilterView;)V

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;->setOnItemClickListener(Lcom/wsw/cospa/listener/OnItemClickListener;)V

    .line 25
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->searchView:Landroidx/appcompat/widget/SearchView;

    const-string v1, "\u641c\u7d22\u56fe\u6e90\u540d"

    invoke-static {v0, v1}, Lcom/wsw/cospa/utils/try;->const(Landroidx/appcompat/widget/SearchView;Ljava/lang/String;)V

    .line 26
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->searchView:Landroidx/appcompat/widget/SearchView;

    const v1, 0x7f090394

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    iput-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->else:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    .line 27
    iget-object v1, p0, Lcom/wsw/cospa/activity/SourceFilterView;->do:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060384

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setHintTextColor(I)V

    .line 28
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->else:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/AutoCompleteTextView;->setTextSize(F)V

    .line 29
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->onActionViewExpanded()V

    .line 30
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0}, Landroidx/appcompat/widget/SearchView;->clearFocus()V

    .line 31
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->else:Landroidx/appcompat/widget/SearchView$SearchAutoComplete;

    invoke-virtual {v0, p0}, Landroid/widget/AutoCompleteTextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 32
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->searchView:Landroidx/appcompat/widget/SearchView;

    new-instance v1, Lcom/wsw/cospa/activity/SourceFilterView$do;

    invoke-direct {v1, p0}, Lcom/wsw/cospa/activity/SourceFilterView$do;-><init>(Lcom/wsw/cospa/activity/SourceFilterView;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 33
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SourceFilterView;->static()V

    return-void
.end method

.method public switch()V
    .locals 12

    .line 1
    iget-boolean v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->goto:Z

    if-eqz v0, :cond_3

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "%"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/wsw/cospa/activity/SourceFilterView;->searchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v2}, Landroidx/appcompat/widget/SearchView;->getQuery()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/wsw/cospa/dao/new;->case()Lcom/wsw/cospa/dao/new;

    move-result-object v1

    invoke-virtual {v1}, Lcom/wsw/cospa/dao/new;->try()Landroid/support/v4/hw;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/hw;->goto()Lcom/wsw/cospa/dao/ComicSourceBeanDao;

    move-result-object v1

    invoke-virtual {v1}, Lorg/greenrobot/greendao/AbstractDao;->queryBuilder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/wsw/cospa/activity/SourceFilterView;->do:Landroid/app/Activity;

    invoke-static {v2}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v2

    const-string v3, "pref_find_letter_sort"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v2

    .line 5
    iget-object v3, p0, Lcom/wsw/cospa/activity/SourceFilterView;->do:Landroid/app/Activity;

    invoke-static {v3}, Landroid/support/v4/v02;->if(Landroid/content/Context;)Landroid/support/v4/v02;

    move-result-object v3

    const-string v5, "pref_show_all_find"

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v6}, Landroid/support/v4/v02;->do(Ljava/lang/String;Z)Z

    move-result v3

    const-string v5, ""

    if-eqz v2, :cond_1

    if-eqz v3, :cond_0

    .line 6
    invoke-virtual {v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->preferLocalizedStringOrder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v2

    sget-object v3, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->class:Lorg/greenrobot/greendao/Property;

    .line 7
    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    sget-object v5, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    .line 8
    invoke-virtual {v5, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    sget-object v8, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->case:Lorg/greenrobot/greendao/Property;

    .line 9
    invoke-virtual {v8, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v9, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    .line 10
    invoke-virtual {v10, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v9, v4

    .line 11
    invoke-virtual {v1, v7, v8, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v7, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 12
    invoke-virtual {v1, v3, v0, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->and(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v1, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v2, v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v6, [Lorg/greenrobot/greendao/Property;

    aput-object v5, v1, v4

    .line 13
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 14
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_0
    sget-object v2, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->class:Lorg/greenrobot/greendao/Property;

    .line 16
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    sget-object v3, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->catch:Lorg/greenrobot/greendao/Property;

    .line 17
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v5, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    .line 18
    invoke-virtual {v7, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    sget-object v9, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->case:Lorg/greenrobot/greendao/Property;

    .line 19
    invoke-virtual {v9, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v9

    new-array v10, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v11, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    .line 20
    invoke-virtual {v11, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v10, v4

    .line 21
    invoke-virtual {v1, v8, v9, v10}, Lorg/greenrobot/greendao/query/QueryBuilder;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v5, v4

    .line 22
    invoke-virtual {v1, v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->and(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v2, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 23
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->preferLocalizedStringOrder()Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v6, [Lorg/greenrobot/greendao/Property;

    aput-object v7, v1, v4

    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderAsc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 24
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 25
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_2

    :cond_1
    if-eqz v3, :cond_2

    .line 26
    sget-object v2, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->class:Lorg/greenrobot/greendao/Property;

    .line 27
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    sget-object v3, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    .line 28
    invoke-virtual {v3, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    sget-object v5, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->case:Lorg/greenrobot/greendao/Property;

    .line 29
    invoke-virtual {v5, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v5

    new-array v7, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v8, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    .line 30
    invoke-virtual {v8, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v7, v4

    .line 31
    invoke-virtual {v1, v3, v5, v7}, Lorg/greenrobot/greendao/query/QueryBuilder;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v3, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    .line 32
    invoke-virtual {v1, v2, v0, v3}, Lorg/greenrobot/greendao/query/QueryBuilder;->and(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v2, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->break:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v4

    .line 33
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    .line 34
    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    .line 35
    :cond_2
    sget-object v2, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->class:Lorg/greenrobot/greendao/Property;

    .line 36
    invoke-virtual {v2, v5}, Lorg/greenrobot/greendao/Property;->notEq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v2

    sget-object v3, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->catch:Lorg/greenrobot/greendao/Property;

    .line 37
    sget-object v5, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v3, v5}, Lorg/greenrobot/greendao/Property;->eq(Ljava/lang/Object;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v3

    new-array v5, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v7, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->try:Lorg/greenrobot/greendao/Property;

    .line 38
    invoke-virtual {v7, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v7

    sget-object v8, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->case:Lorg/greenrobot/greendao/Property;

    .line 39
    invoke-virtual {v8, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v8

    new-array v9, v6, [Lorg/greenrobot/greendao/query/WhereCondition;

    sget-object v10, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->new:Lorg/greenrobot/greendao/Property;

    .line 40
    invoke-virtual {v10, v0}, Lorg/greenrobot/greendao/Property;->like(Ljava/lang/String;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v9, v4

    .line 41
    invoke-virtual {v1, v7, v8, v9}, Lorg/greenrobot/greendao/query/QueryBuilder;->or(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    aput-object v0, v5, v4

    .line 42
    invoke-virtual {v1, v2, v3, v5}, Lorg/greenrobot/greendao/query/QueryBuilder;->and(Lorg/greenrobot/greendao/query/WhereCondition;Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/WhereCondition;

    move-result-object v0

    new-array v2, v4, [Lorg/greenrobot/greendao/query/WhereCondition;

    invoke-virtual {v1, v0, v2}, Lorg/greenrobot/greendao/query/QueryBuilder;->where(Lorg/greenrobot/greendao/query/WhereCondition;[Lorg/greenrobot/greendao/query/WhereCondition;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    new-array v1, v6, [Lorg/greenrobot/greendao/Property;

    sget-object v2, Lcom/wsw/cospa/dao/ComicSourceBeanDao$Properties;->break:Lorg/greenrobot/greendao/Property;

    aput-object v2, v1, v4

    .line 43
    invoke-virtual {v0, v1}, Lorg/greenrobot/greendao/query/QueryBuilder;->orderDesc([Lorg/greenrobot/greendao/Property;)Lorg/greenrobot/greendao/query/QueryBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lorg/greenrobot/greendao/query/QueryBuilder;->list()Ljava/util/List;

    move-result-object v0

    .line 44
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 45
    :goto_2
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->case:Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;

    invoke-virtual {v0, v1}, Lcom/wsw/cospa/activity/SourceFilterView$SourceFilterAdapter;->refresh(Ljava/util/List;)V

    goto :goto_3

    .line 46
    :cond_3
    invoke-virtual {p0}, Lcom/wsw/cospa/activity/SourceFilterView;->static()V

    :goto_3
    return-void
.end method

.method public throw()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public throws(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/SourceFilterView;->for:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0, p1}, Landroid/support/v4/j10;->native(Landroid/widget/PopupWindow;Landroid/view/View;)V

    :cond_0
    return-void
.end method
