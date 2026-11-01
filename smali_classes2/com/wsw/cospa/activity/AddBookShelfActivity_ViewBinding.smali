.class public Lcom/wsw/cospa/activity/AddBookShelfActivity_ViewBinding;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private do:Lcom/wsw/cospa/activity/AddBookShelfActivity;


# direct methods
.method public constructor <init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;)V
    .locals 1
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 1
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/wsw/cospa/activity/AddBookShelfActivity_ViewBinding;-><init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lcom/wsw/cospa/activity/AddBookShelfActivity;Landroid/view/View;)V
    .locals 3
    .annotation build Landroidx/annotation/UiThread;
    .end annotation

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    .line 4
    const-class v0, Landroidx/appcompat/widget/Toolbar;

    const v1, 0x7f0902ab

    const-string v2, "field \'mToolbar\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 5
    const-class v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    const v1, 0x7f090172

    const-string v2, "field \'etBookshelfName\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->etBookshelfName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 6
    const-class v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    const v1, 0x7f090350

    const-string v2, "field \'rbGirdMode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbGirdMode:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 7
    const-class v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    const v1, 0x7f090351

    const-string v2, "field \'rbListMode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbListMode:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 8
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f090363

    const-string v2, "field \'rgViewMode\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgViewMode:Landroid/widget/RadioGroup;

    .line 9
    const-class v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    const v1, 0x7f090353

    const-string v2, "field \'rbSortTime\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbSortTime:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 10
    const-class v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    const v1, 0x7f090352

    const-string v2, "field \'rbSortDrag\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatRadioButton;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbSortDrag:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 11
    const-class v0, Landroid/widget/RadioGroup;

    const v1, 0x7f090362

    const-string v2, "field \'rgSortType\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgSortType:Landroid/widget/RadioGroup;

    .line 12
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f090379

    const-string v2, "field \'savBookshelfView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->savBookshelfView:Landroid/widget/LinearLayout;

    .line 13
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904be

    const-string v2, "field \'tvTitle\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->tvTitle:Landroid/widget/TextView;

    .line 14
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0903a3

    const-string v2, "field \'shelfGroupList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->shelfGroupList:Landroidx/recyclerview/widget/RecyclerView;

    .line 15
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0901f5

    const-string v2, "field \'groupSortTip\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->groupSortTip:Landroid/widget/LinearLayout;

    .line 16
    const-class v0, Landroid/widget/CheckBox;

    const v1, 0x7f0900f1

    const-string v2, "field \'allCategoryCheck\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->allCategoryCheck:Landroid/widget/CheckBox;

    .line 17
    const-class v0, Landroid/widget/LinearLayout;

    const v1, 0x7f09008c

    const-string v2, "field \'allCategoryLayout\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/new;->case(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p1, Lcom/wsw/cospa/activity/AddBookShelfActivity;->allCategoryLayout:Landroid/widget/LinearLayout;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2
    .annotation build Landroidx/annotation/CallSuper;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/wsw/cospa/activity/AddBookShelfActivity_ViewBinding;->do:Lcom/wsw/cospa/activity/AddBookShelfActivity;

    .line 3
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->mToolbar:Landroidx/appcompat/widget/Toolbar;

    .line 4
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->etBookshelfName:Lcom/wsw/cospa/widget/view/FixedTextInputEditText;

    .line 5
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbGirdMode:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 6
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbListMode:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 7
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgViewMode:Landroid/widget/RadioGroup;

    .line 8
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbSortTime:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 9
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rbSortDrag:Landroidx/appcompat/widget/AppCompatRadioButton;

    .line 10
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->rgSortType:Landroid/widget/RadioGroup;

    .line 11
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->savBookshelfView:Landroid/widget/LinearLayout;

    .line 12
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->tvTitle:Landroid/widget/TextView;

    .line 13
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->shelfGroupList:Landroidx/recyclerview/widget/RecyclerView;

    .line 14
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->groupSortTip:Landroid/widget/LinearLayout;

    .line 15
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->allCategoryCheck:Landroid/widget/CheckBox;

    .line 16
    iput-object v1, v0, Lcom/wsw/cospa/activity/AddBookShelfActivity;->allCategoryLayout:Landroid/widget/LinearLayout;

    return-void

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
